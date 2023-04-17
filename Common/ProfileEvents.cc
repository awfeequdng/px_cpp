#include "ProfileEvents.hh"

#include "CurrentThread.hh"
#include <atomic>
#include <memory>
#include <stdexcept>
#include <cstring>

#include <iostream>

#define APPLY_FOR_EVENTS(M) \
    M(MEMORY_ALLOC, "allocated memory count") \
    M(MEMORY_FREE, "free memory count") \
    M(ArenaAllocChunks, "Number of chunks allocated for memory Arena (used for GROUP BY and similar operations)") \
    M(ArenaAllocBytes, "Number of bytes allocated for memory Arena (used for GROUP BY and similar operations)")

namespace ProfileEvents {
#define M(NAME, DOCUMENTATION) extern const Event NAME = __COUNTER__;
    APPLY_FOR_EVENTS(M)
#undef M

constexpr Event END = __COUNTER__;

// Global variable, initialized by zeros.
Counter global_counters_array[END]{};
// Initialize global counters statically
Counters global_counters(global_counters_array);

const Event Counters::num_counters = END;

Counters::Counters(VariableContext level_, Counters* parent_)
    : counters_holder(new Counter[END]{}),
      parent(parent_),
      level(level_) {
    counters = counters_holder.get();
}

void Counters::resetCounters() {
    if (counters) {
        for (Event i = 0; i < num_counters; i++) {
            counters[i].store(0, std::memory_order_relaxed);
        }
    }
}

void Counters::reset() {
    parent = nullptr;
    resetCounters();
}

Counters::Snapshot::Snapshot()
    : counters_holder(new Count[END]{}) {}

Counters::Snapshot Counters::getPartiallyAtomicSnapshot() const {
    Snapshot res;
    for (Event i = 0; i < num_counters; i++) {
        res.counters_holder[i] = counters[i].load(std::memory_order_relaxed);
    }
    return res;
}

const char* getName(Event event) {
    static const char* strings[] = {
    #define M(NAME, DOCUMENTATION) #NAME,
        APPLY_FOR_EVENTS(M)
    #undef M
    };
    return strings[event];
}

const char* getDocumentation(Event event) {
    static const char* strings[] = {
    #define M(NAME, DOCUMENTATION) DOCUMENTATION,
        APPLY_FOR_EVENTS(M)
    #undef M
    };
    return strings[event];
}

Event end() { return END; }

void increment(Event event, Count amount) {
    CurrentThread::getProfileEvents().increment(event, amount);
}

CountersIncrement::CountersIncrement(Counters::Snapshot const& snapshot) {
    init();
    std::memcpy(increment_holder.get(), snapshot.counters_holder.get(), Counters::num_counters * sizeof(Increment));
}

CountersIncrement::CountersIncrement(Counters::Snapshot const& after, Counters::Snapshot const& before) {
    init();
    for (Event i = 0; i < Counters::num_counters; i++) {
        increment_holder[i] = static_cast<Increment>(after[i]) - static_cast<Increment>(before[i]);
    }
}

void CountersIncrement::init() {
    increment_holder = std::make_unique<Increment[]>(Counters::num_counters);
}

} // namespace ProfileEvents
