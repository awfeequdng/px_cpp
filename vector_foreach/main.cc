#include <iostream>
#include <unordered_map>
#include <utility>
#include <vector>

using namespace std;

// template <typename T>
// struct VecForEach {
//     const vector<T> *_v = nullptr;
//     VecForEach(const vector<T>* v) : _v(v) {}
//     VecForEach(const vector<T>& v) : _v(&v) {}

//     struct Iter {
//         Iter(const VecForEach* vec, size_t i = 0) :
//             _v(vec->_v), _idx(i), _end(_v->size())
//             {}
//         inline bool operator!=(void* ignored) const { return _idx != _end; }
//         inline void operator++() { _idx++; }
//         inline auto operator*() { return make_pair(_idx, (*_v)[_idx]); }
//     private:
//         const vector<T>* _v = nullptr;
//         size_t _idx = 0;
//         size_t _end = 0;
//     };
//     Iter begin() const { return Iter(this); }
//     void* end() const { return nullptr; }
// };




template <typename T>
struct VecForEach {
    const vector<T>* _v = nullptr;
    VecForEach(const vector<T>* v) : _v(v) {}
    VecForEach(const vector<T>& v) : _v(&v) {}
    // A very tricky range-based loop support, thanks to C++17
    struct Iter {
        Iter(const VecForEach* v, size_t i = 0) : _v(v->_v), _idx(i), _end(_v->size()) {}
        // not really compare with pointer, simply compare with end index
        bool operator!= (void* ignored) { return _idx != _end; }
        void operator++() { _idx++; }
        auto operator* () { return make_pair(_idx, (*_v)[_idx]); }

        const vector<T>* _v = nullptr;
        size_t _idx;
        size_t _end;
    };
    // 为了实现foreach功能，需要实现begin和end方法
    // begin返回的Iter需要实现!=, ++, *这三个运算
    Iter begin() { return Iter(this); }
    void* end() { return nullptr; }
};

int main() {
    std::cout << "hello world " << std::endl;
    vector<int> a = { 1, 2, 3, 44, 55, 66 };
    for (auto [idx, val] : VecForEach(&a)) {
        std::cout << "idx: " << idx << ",val: " << val << std::endl;
    }
    return 0;
}
