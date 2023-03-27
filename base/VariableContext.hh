#pragma once

// Used in ProfileEvents and MemoryTracker to determine their hierarchy level
// The less value the higher level (zero level is the root)
enum class VariableContext {
    Global = 0,
    User,       // Group of the processes
    Process,
    Thread,     // A thread of a process
};