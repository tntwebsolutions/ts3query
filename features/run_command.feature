Feature: Run a query command
	In order to run a command
	As an application
	I want to use a method after connection to the server
	
	Scenario: Run 'version' command
		Given I am connected to the default server with the password 0L8awVFD
		When I run the command version
		Then I should get a hash with version=3.0.5 build=1335156372 platform=Linux id=0 msg=ok
		
	Scenario: Run 'serverlist' command with options
		Given I am connected to the default server with the password 0L8awVFD
		When I run the command serverlist with the options -uid -short
		Then I should get a hash with virtualserver_id=1 virtualserver_port=9987 virtualserver_status=online id=0 msg=ok