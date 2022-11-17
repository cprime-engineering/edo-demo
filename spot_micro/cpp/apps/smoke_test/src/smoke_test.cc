#include <iostream>

#include "smoke_test_message.h"

int main() {
  MessageClass message;
  std::cout << message.getMainMessage() + "\n";
  return 0;
}
