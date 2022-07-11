**Basic usage**

1. run one specific robot file:  robot tests/01__First_Suite/Browser.robot
2. run all the robot files from a directory: 
 robot tests/01__First_Suite
3. stop execution:<br>
	a. robot tests/01__First_Suite/Browser.robot followed by CTRL+C <br>
	b. robot tests/01__First_Suite/Browser.robot followed by CTRL+C (twice) <br>
4. execution order scenarios:<br>
	a. run alphabetical order: robot tests/ and look at log.html <br>
	b. Run specifying order: robot tests/02Second_Suite/Hi.robot tests/01First_Suite/Browser.robot tests/03Third_Suite/Report.robot tests/01First_Suite/Hi.robot and look at log.html <br>

**Test selection**

5. run test cases matching a tag using "include" option:   <br> 
	a. full match: robot --include Smoke tests / robot -i Smoke tests<br>
	b. partial match: robot -i T*  tests/ <br>
	c. combine tags: robot -i T*ANDSmoke  tests/ <br>
6. run all the test cases excluding ones matching a specific tag using "exclude" option:   robot -e Smoke tests
7. run all the test cases matching a particular tag, excluding one specific TC only:  
robot -i Smoke -e KnownIssue tests
8. run test cases matching the given TC title: <br>
	a. full match:   robot --test 'Check Logs Print "Username"' tests/ <br>
	b. partial match:  robot --test 'Check Logs Print'*  tests/ <br>
9. run specific test suite: robot --suite "First Suite".Browser tests/ [almost equivalent to specify the single file instead of using --suite tag. But in this way, if you have a setup/teardown for the parent suite, it would run!] 
10. Automatically re-run failed test cases: <br>
	a. robot -i Smoke tests/ <br>
	b. robot --rerunfailed output.xml <br>

**Set Variables**

*if we set the same variable using different methods, this is the precedence order: "-v command" > variable file > variable section of robot 
set a variable while running the robot command:  robot -v USER_ROLE:Salesman tests/01__First_Suite/Hi.robot
use yaml file containing variables: robot --variablefile my_variables.yaml tests/01__First_Suite/Hi.robot*

**Set arguments file**<br>
13. use argument file for setting the options: robot -A my_arguments.txt 

**Set dry-run mode**

14. execute dryrun mode to execute a first round of code validation : robot --dryrun tests/ [change code live to make dryrun failing]
Failing:
Using keywords that are not found.
Using keywords with wrong number of arguments.
Using user keywords that have invalid syntax.
When test library or resource file imports cannot be resolved

**Force exit status to 0**

15. force the exit status code to 0 using --nostatusrc command: <br>
	a. robot -i Smoke  tests/
	b. echo $? (to check the exit status
	c. robot -i Smoke --nostatusrc tests/
	d. echo $? (to check the exit status

**Run scripts before executing "robot"**

*Pre-run modifiers should be implemented as [visitors](https://robot-framework.readthedocs.io/en/master/autodoc/robot.model.html#module-robot.model.visitor) that can traverse through the executable test suite structure and modify it as needed*
16. Customize suites before running robot command using --prerunmodifier option: robot --prerunmodifier resources/utils/SplitSuite.py:2:1:1 tests/
