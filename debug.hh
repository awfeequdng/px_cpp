#include "tracer_new.hh"

#if !NDEBUG
#define new new(__FILE__, __LINE__)
#endif // !NODEBUG