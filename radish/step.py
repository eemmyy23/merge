# -*- coding: utf-8 -*-

import subprocess
from radish import given, then
from radish import custom_type

@custom_type("Any", r".*")
def user_type(text):
    return text

@given("I run the merge script whith input {input:Any}")
def have_numbers(step, input):
    step.context.output = subprocess.check_output(["bash", "-c", "python3 merge.py {}".format(input)], stderr=subprocess.STDOUT).decode()

@then("I expect the output to be {output:Any}")
def expect_result(step, output):
    assert step.context.output == output, "Got {}, expected {}".format(step.context.output, output)
