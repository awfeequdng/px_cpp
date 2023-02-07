#pragma once

#include <cstdio>
#include <ios>
#include <iostream>
#include <ostream>
#include <sstream>
#include <fstream>

#define PARSE_FAILED_RET \
    if (ifs.bad() || ifs.eof()) { \
        return false; \
    }

class ParseMd {
public:
    ParseMd()
        : ofs_sh("SH"),
          ofs_sz("SZ") {

    }
    // 返回值： 0 表示错误的sym
    //         1 表示上海
    //         2 表示深圳
    int check_sym(std::string sym) {
        if (sym.size() != 8) {
            return 0;
        }
        if (sym[0] != 'S') return 0;
        if (sym[1] == 'H') return 1; // SH
        if (sym[1] == 'Z') return 2; // SZ
        std::cout << "sym error: " << sym << std::endl;
        return 0; // 错误
    }

    bool parse_md_order(std::ifstream &ifs, int ord_len, std::string &result, std::string &ret_sym) {
        char sym[9];
        ifs.read(sym, 9);
        PARSE_FAILED_RET
        int ticker = check_sym(sym);
        if (ticker == 0) {
            return false;
        }

        unsigned char type[4];
        ifs.read((char*)type, 4);
        PARSE_FAILED_RET

        unsigned char str[4];
        ifs.read((char*)str, 4);
        PARSE_FAILED_RET
        double price = (str[0] << 24) + (str[1] << 16) + (str[2] << 8) + (str[3]);
        price /= 100.0;

        ifs.read((char*)str, 4);
        PARSE_FAILED_RET
        unsigned int amount = (str[0] << 24) + (str[1] << 16) + (str[2] << 8) + (str[3]);

        if (ord_len > 24) {
            int remain = ord_len - 24;
            ifs.ignore(remain);
            PARSE_FAILED_RET
        }
        return true;
    }

    bool parse_md_trade(std::ifstream &ifs, int trd_len, std::string &result, std::string &ret_sym) {
        char sym[9];
        ifs.read(sym, 9);
        PARSE_FAILED_RET

        int ticker = check_sym(sym);
        if (ticker == 0) {
            return false;
        }
        unsigned char str[4];
        ifs.read((char*)str, 4);
        PARSE_FAILED_RET
        double price = (str[0] << 24) + (str[1] << 16) + (str[2] << 8) + (str[3]);
        price /= 100.0;

        ifs.read((char*)str, 4);
        PARSE_FAILED_RET
        unsigned int amount = (str[0] << 24) + (str[1] << 16) + (str[2] << 8) + (str[3]);

        if (trd_len > 20) {
            int remain = trd_len - 20;
            ifs.ignore(remain);
            PARSE_FAILED_RET
        }

        char buf[256];
        sprintf(buf, "%d %s @%.2f", amount, sym, price);
        result = buf;
        ret_sym = sym;

        return true;
    }

    bool parse_md_field(std::ifstream &ifs, int remain_len, std::string& result, std::string& sym, char &type) {
        unsigned char length[2];
        unsigned char t[1];
        ifs.read((char*)length, 2);
        PARSE_FAILED_RET
        ifs.read((char*)t, 1);
        PARSE_FAILED_RET
        int len = (length[0] << 8) + length[1];
        // std::cout << "field length: " << len << std::endl;
        // std::cout << "type: " << type[0] << std::endl;
        if (t[0] == 'O') {
            type = 'O';
            return parse_md_order(ifs, len, result, sym);
        } else if (t[0] == 'T') {
            type = 'T';
            return parse_md_trade(ifs, len, result, sym);
        } else {
            return false;
        }
    }

    void virtual output_trade(const std::string &result, const std::string &sym) {
        int ticker = check_sym(sym);
        if (ticker == 1) {
            // SH
            ofs_sh << result << std::endl;
        } else if (ticker == 2) {
            // SZ
            ofs_sz << result << std::endl;
        }
    }

    bool parse_md_fields() {
        std::string file = "md.dat";
        std::ifstream ifs(file);
        unsigned char length[2];
        unsigned char field_size[2];
        ifs.read((char*)length, 2);
        PARSE_FAILED_RET
        ifs.read((char*)field_size, 2);
        PARSE_FAILED_RET

        std::cout << "fields total length: " <<((length[0] << 8) + length[1]) << std::endl;
        std::cout << "field_size: " <<((field_size[0] << 8) + field_size[1]) << std::endl;
        int remain_len = ((length[0] << 8) + length[1]) - 4;
        int fds_cnt = ((field_size[0] << 8) + field_size[1]);
        for (int i = 0; i < fds_cnt; i++) {
            std::string result;
            std::string sym;
            char type;
            if (!parse_md_field(ifs, remain_len, result, sym, type)) {
                // parse failed
                return false;
            }
            output_trade(result, sym);
        }
        return true;
    }
private:
    std::ofstream ofs_sh;
    std::ofstream ofs_sz;
};