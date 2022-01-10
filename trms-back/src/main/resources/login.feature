# language: en

Feature: logging in as employee


Scenario Outline: logging in with correct credentials
	Given the user is on the trms home page
	And the user clicks the Log In link
	When the user enters "<username>" and "<password>" to log in
	And the user clicks the login button
	Then the navbar says "<username>"
	
	Examples:
		 |  username	  |	password	  |
		 |  bmckechnie9 | eVGxtv7PTA  |
		 |  bradleigha  | gdHLGd	    |

Scenario Outline: logging in with incorrect passwords
	Given the user is on the trms home page
	And the user clicks the Log In link
	When the user enters "<username>" and "<password>" to log in
	And the user clicks the login button
	Then the page says Incorrect Credentials
	
	Examples:
		|		username		|		password		|
		|		snicholes		|		p4ss				|
		|		sierra			|		Pass				|
		|		snicholes		|		1234				|
