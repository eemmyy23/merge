Feature: Merge intervals
	Implement a function MERGE that receives a list of intervals
	and returns a list of intervals as the result.
	As a result, all overlapping intervals should be merged.
	All non-overlapping intervals are not affected.

    Scenario: Example
        Given I run the merge script whith input
	    """
	    [25,30] [2,19] [14, 23] [4,8]
	    """
        Then I expect the output to be
	    """
	    [2,23] [25,30]
	    """
