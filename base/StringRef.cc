#include <ostream>

#include "StringRef.hh"

std::ostream& operator<<(std::ostream& os, const StringRef& str) {
    if (str.data) {
        os.write(str.data, str.size);
    }
    return os;
}