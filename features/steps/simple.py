from behave import *

import sys
sys.path.append("/workspaces/edo-demo/bazel-bin/cpp/apps/smoke_test/bdd")
from smoke_test_bdd import MessageClass

@given('we have behave installed')
def step_impl(context):
    pass

@when('we implement a test')
def step_impl(context):
    messageClass = MessageClass()
    assert messageClass.getMainMessage() == "SMOKE-TEST"

@then('behave will test it for us!')
def step_impl(context):
    assert context.failed is False
