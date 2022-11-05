const char windriver_interp[] __attribute__((section(".interp"))) 
    = "lib/ld-linux-x86-64.so.2";

#include <iostream>
#include "smoke_test_message.h"

int main() {

    std::cout << getMainMessage() + "\n";
    return 0;
}
