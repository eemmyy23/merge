# -*- coding: utf-8 -*-

from radish import given, when, then

@given(r"I run the merge script whith input")
def have_numbers(step):
    step.context.input = step.text
    print(step.context.input)
    step.context.output = "TBD"
    assert False, "TBD"

@then(r"I expect the output to be")
def expect_result(step):
    print(step.context.output)
    assert step.context.output == step.text, "Got {}, expected {}".format(step.context.output, step.text)
