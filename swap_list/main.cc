#include <iostream>
#include <unordered_map>

using namespace std;
// 双向链表，做两两交换？
// 比如：
// 1，2，3，4，5 => 2，1，4，3，5；
// 1，2，3，4，5，6 => 2，1，4，3，6，5

struct ListNode {
    ListNode *next;
    ListNode *prev;
    int val_;
    ListNode(int val) : val_(val), next(NULL), prev(NULL) {}
    ListNode() : val_{}, next(NULL), prev(NULL) {}
};

void swap_node(ListNode* first, ListNode *second) {
    if (first->prev != second) {
        second->next->prev = first;
        first->prev->next = second;
        first->next = second->next;
        second->prev = first->prev;
        second->next = first;
        first->prev = second;
    }
}

ListNode* swap_list(ListNode *head) {
    ListNode dummy;
    dummy.next = head;
    ListNode *first = head;
    if (first == NULL || first->next == head) {
        return first;
    }
    ListNode *second = first->next;
    swap_node(first, second);
    // 此时first在second后面
    dummy.next = second;
    head = dummy.next;

    first = first->next;
    second = first->next;

    while (first != head && second != head) {
        swap_node(first, second);
        first = first->next;
        second = first->next;
    }

    return dummy.next;
}

void print_list(ListNode *head) {
    if (head == NULL) return;
    std::cout << head->val_ << " ";
    auto node = head->next;
    while (node != head) {
        std::cout << node->val_ << " ";
        node = node->next;
    }
    std::cout << std::endl;
}

void test1() {
    ListNode a1(10);
    ListNode a2(11);
    ListNode a3(12);
    a1.next = &a2;
    a1.prev = &a3;
    a2.prev = &a1;
    a2.next = &a3;
    a3.next = &a1;
    a3.prev = &a2;
    ListNode *a = swap_list(&a1);
    print_list(a);
}

void test2() {
    ListNode a1(10);
    ListNode a2(11);
    a1.next = &a2;
    a1.prev = &a2;
    a2.prev = &a1;
    a2.next = &a1;
    ListNode *a = swap_list(&a1);
    print_list(a);
}

void test3() {
    ListNode a1(10);
    a1.next = &a1;
    a1.prev = &a1;
    ListNode *a = swap_list(&a1);
    print_list(a);
}

void test4() {
    ListNode a1(10);
    ListNode a2(11);
    ListNode a3(12);
    ListNode a4(13);
    ListNode a5(14);
    a1.next = &a2;
    a1.prev = &a5;
    a2.prev = &a1;
    a2.next = &a3;
    a3.next = &a4;
    a3.prev = &a2;
    a4.next = &a5;
    a4.prev = &a3;
    a5.next = &a1;
    a5.prev = &a4;
    ListNode *a = swap_list(&a1);
    print_list(a);
}

int main() {

    test1();
    test2();
    test3();
    test4();
    return 0;
}
