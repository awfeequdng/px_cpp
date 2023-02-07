#include <cstdio>
#include <iostream>
#include <ostream>
#include <sstream>
#include <fstream>

#include "create_md.hh"
#include "parse_md.hh"

using namespace std;

int main() {
    create_md_field();
    ParseMd parse_md;
    parse_md.parse_md_fields();
    return 0;
}

