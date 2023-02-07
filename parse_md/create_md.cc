#include <iostream>
#include <fstream>
#include <sstream>

using namespace std;

static int create_order_field(ostream &ofs, string sym, int type,
                               double price, int amount, int expand, int& total_field) {
    total_field++;
    unsigned char order1[24]; // order

    unsigned int total_len = expand + 24;
    order1[0] = (unsigned char)(total_len >> 8);  // length
    order1[1] = (total_len % 256);

    order1[2] = 'O'; // type 'O'

    order1[3] = sym[0]; // SZ000001
    order1[4] = sym[1];
    order1[5] = sym[2];
    order1[6] = sym[3];
    order1[7] = sym[4];
    order1[8] = sym[5];
    order1[9] = sym[6];
    order1[10] = sym[7];
    order1[11] = 0;

    order1[12] = 0; // 业务类型
    order1[13] = 0;
    order1[14] = 0;
    order1[15] = type; // 买1，卖2

    int px = price * 100;
    order1[16] = (unsigned char)((px >> 24) & 0xff); // 价格
    order1[17] = (unsigned char)((px >> 16) & 0xff);
    order1[18] = (unsigned char)((px >> 8) & 0xff);
    order1[19] = (unsigned char)((px) & 0xff); // 买  2.57

    order1[20] = (unsigned char)((amount >> 24) & 0xff); // 数量
    order1[21] = (unsigned char)((amount >> 16) & 0xff);
    order1[22] = (unsigned char)((amount >> 8) & 0xff);
    order1[23] = (unsigned char)((amount) & 0xff); // 232 + 3 * 256 = 232 + 768 = 1000
    ofs.write((char*)order1, 24);
    for (int i = 0; i < total_len - 24; i++) {
        ofs.put('e');
    }
    return total_len;
}

static int create_trade_field(ostream &ofs, string sym, double price,
                               int amount, int expand, int& total_field) {
    total_field++;
    unsigned char trade1[20]; // order

    unsigned int total_len = expand + 20;
    trade1[0] = (unsigned char)(total_len >> 8);  // length
    trade1[1] = (total_len % 256);

    trade1[2] = 'T'; // type 'T'

    trade1[3] = sym[0]; // SZ000001
    trade1[4] = sym[1];
    trade1[5] = sym[2];
    trade1[6] = sym[3];
    trade1[7] = sym[4];
    trade1[8] = sym[5];
    trade1[9] = sym[6];
    trade1[10] = sym[7];
    trade1[11] = 0;

    int px = price * 100;
    trade1[12] = (unsigned char)((px >> 24) & 0xff); // 价格
    trade1[13] = (unsigned char)((px >> 16) & 0xff);
    trade1[14] = (unsigned char)((px >> 8) & 0xff);
    trade1[15] = (unsigned char)((px) & 0xff);

    trade1[16] = (unsigned char)((amount >> 24) & 0xff); // 数量
    trade1[17] = (unsigned char)((amount >> 16) & 0xff);
    trade1[18] = (unsigned char)((amount >> 8) & 0xff);
    trade1[19] = (unsigned char)((amount) & 0xff);
    ofs.write((char*)trade1, 20);
    for (int i = 0; i < total_len - 20; i++) {
        ofs.put('e');
    }
    return total_len;
}

void create_md_field() {
    string file = "md.dat";
    unsigned char length[2] = {0};
    unsigned char field_size[2] = {0};

    stringstream ss;

    ss.write((char*)length, 2);
    ss.write((char*)field_size, 2);

    int total_len = 0;
    int total_field = 0;
    total_len += create_order_field(ss, "SZ000001", 1, 0.3, 3000, 20, total_field);
    total_len += create_order_field(ss, "SH600018", 2, 20.3, 3000, 20, total_field);
    total_len += create_trade_field(ss, "SZ000001", 20.2, 1500, 15, total_field);
    total_len += create_trade_field(ss, "SH600018", 20.2, 1500, 15, total_field);
    total_len += create_trade_field(ss, "SH600017", 201.2, 11500, 0, total_field);
    total_len += create_trade_field(ss, "SF6000171", 201.1, 1100, 30, total_field);

    string str = ss.str();
    str[0] = (char)((total_len >> 8) & 0xff);
    str[1] = (char)((total_len) & 0xff);
    str[2] = (char)((total_field >> 8) & 0xff);
    str[3] = (char)((total_field) & 0xff);
    ofstream ofs(file);
    ofs.write(str.c_str(), str.size());
}
