Feature: Merge intervals
	Implement a function MERGE that receives a list of intervals
	and returns a list of intervals as the result.
	As a result, all overlapping intervals should be merged.
	All non-overlapping intervals are not affected.

    Scenario Outline: Merge intervals exaples
        Given I run the merge script whith input <input>
        Then I expect the output to be <output>
    
    Examples:
	| input                         | output         |
	| [10,30] [24,26]		| [10,30]	 |
	|  [ 10 , 30]   [24,26]		| [10,30]	 |
	| [10,30] [24,26] [50,60]	| [10,30] [50,60]|
	| [25,30] [2,19] [14, 23] [4,8] | [2,23] [25,30] |
