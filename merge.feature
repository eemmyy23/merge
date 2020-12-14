Feature: Merge intervals
	Implement a function MERGE that receives a list of intervals
	and returns a list of intervals as the result.
	As a result, all overlapping intervals should be merged.
	All non-overlapping intervals are not affected.

    Scenario Outline: Merge intervals exaples
        Given I run the merge script whith input <input>
        Then I expect the output to be <output>
    
    Examples:
	|input                          | output            | comment                                       |
	| [25,30] [2,19] [14, 23] [4,8] | [2,23] [25,30]    | task example                                  |
	| [10,30] [24,26]               | [10,30]           | two overlapping intervals                     |
	|  [ 10 , 30]   [24,26]         | [10,30]           | input with white spaces                       |
	| [10,30] [24,26] [50,60]       | [10,30] [50,60]   | two overlapping and one speparate interval    |
	| [50,60] [10,30] [24,26]       | [10,30] [50,60]   | random order for the input intervals          |
	| [1,2] [3,4]                   | [1,2] [3,4]       | intervals w/o intersection                    |
	| [1,2] [2,4]                   | [1,4]             | intervals w/ intersection                     |
	| [1.5,2.77777] [2.7,4.6]       | [1.5,4.6]         | intervals given with floating numers          |	
	| [-9,-5] [-7,-3] [-1,3]        | [-9,-3] [-1,3]    | intervals given with negative numers          |
	| [1607934600000,1607941800000] [1607938200000,1607945400000] | [1607934600000,1607945400000] | unix timestamp millis |
	| difonwfg                      | Invalid format. See feature description for exaples  |            |	
	| [1,2]                         | Invalid format. See feature description for exaples  |            |	
	| [30,25] [19,2] [23, 14] [8,4] | [2,23] [25,30]    | task example w/o sorted intervals             |
