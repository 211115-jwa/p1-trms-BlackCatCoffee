Feature: my requests page works

Background: Given the employee is on the my requests page

Scenario: my requests show up in table
	Given the user is on the my requests page
	When my requests page is loaded
	Then the table has pets in it
	

