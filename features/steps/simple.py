from behave import *

import os
import sys

workspace_dir =os.environ['WORKSPACE_DIR']
sys.path.append(workspace_dir  + "/bazel-bin/spot_micro/cpp/apps/smoke_test/bdd")

from smoke_test_bdd import MessageClass

#################################################################################
# feature : showing off behave
#################################################################################

#--------------------------------------------------------------------------------
# Background : we want to show off behave
#--------------------------------------------------------------------------------
@given(u'We are working on a software project name "edo-dewmo"')
def step_impl(context):
    pass

@given(u'we need to demonstrate python "behave"')
def step_impl(context):
    pass

@given(u'that demonstration needs to wrap "c++" in python "behave"')
def step_impl(context):
    pass

#--------------------------------------------------------------------------------
# scenario: run a simple test
#--------------------------------------------------------------------------------
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
