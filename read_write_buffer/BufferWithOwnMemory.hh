#pragma once

#include "my_concepts.hh"

// Buffer that could own its working memory.
// Template parameter: ReadBuffer or WriteBuffer
template <ReadWriteBuffer Base>
class BufferWithOwnMemory : public Base {
public:

};
