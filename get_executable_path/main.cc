#include <iostream>
#include <system_error>
#include <unordered_map>
#include <filesystem>

std::string getExecutablePath() {
    std::error_code ec;
    std::filesystem::path canonical_path = std::filesystem::canonical("/proc/self/exe", ec);
    if (ec)
        return {};
    return canonical_path;
}

int main() {
    std::cout << "hello world" << std::endl;
    std::cout << "executable path: " << getExecutablePath() << std::endl;
    return 0;
}
