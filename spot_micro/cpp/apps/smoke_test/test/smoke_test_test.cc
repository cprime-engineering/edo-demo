#include <gtest/gtest.h>
#include <smoke_test_message.h>

// Demonstrate some basic assertions.
TEST(SmokeTest, BasicAssertions) {
  MessageClass message;
  EXPECT_EQ("SMOKE-TEST", message.getMainMessage());
}
