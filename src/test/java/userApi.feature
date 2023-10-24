Feature:verifying all the user data with API

  Background: preconditions
    * def dataGenerator = Java.type('data.Helper')


  Scenario: user api one
    Given url  'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    * print response


  Scenario: user post method
    * def randomFirstNameGenerator = dataGenerator.getFirstName()
    * def randomLastNameGenerator = dataGenerator.getLastName()
    Given url 'https://reqres.in/api/users'
    And  request
    """
    {
    "name": '#(randomFirstNameGenerator)',
    "job": '#(randomLastNameGenerator)'
}
    """
    When method POST
    Then status 201
    * print response
    * print responseStatus
    * print requestTimeStamp



