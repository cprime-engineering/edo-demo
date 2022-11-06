#include <smoke_test_message.h>
#include <gtest/gtest.h>

// Demonstrate some basic assertions.
TEST(SmokeTest, BasicAssertions) {

  EXPECT_EQ("SMOKE-TEST", getMainMessage());

}
