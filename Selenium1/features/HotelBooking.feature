@HotelBooking
Feature: HotelBooking

Background: User has already logged in with valid credentials 
and is navigated to hotelBooking page. 

Scenario: check the title
Given User is on hotel booking page
Then check the title of the page

Scenario: Successful hotel booking with all valid data
Given User is on hotel booking page
When user enters all valid data 
Then navigate to welcome page 

Scenario: Failure in hotel Booking on leaving the first Name empty 
Given User is on hotel booking page
When user leaves first Name blank
And clicks the button
Then display alert msg

Scenario: Failure in hotel Booking on leaving the last Name blank
Given User is on hotel booking page
When user leaves last Name blank and clicks the button
Then display alert msg

Scenario: Failure in hotel Booking on incorrect email format 
Given User is on hotel booking page
When user enters all data
But user enters incorrect email format and clicks the button
Then display alert msg

Scenario: Failure in hotel Booking on leaving the mobile no. blank 
Given User is on hotel booking page
When user leaves MobileNo blank and clicks the button
Then display alert msg

Scenario: Failure in hotel Booking on incorrect mobileNo format 
Given User is on hotel booking page
When user enters incorrect mobileNo format and clicks the button
|7722005480|
|0900000000|
|2345678989|
|84321|
|77722005480|
| |
Then display alert msg

Scenario: Failure in hotel Booking on not selecting the city 
Given User is on hotel booking page
When user doesnot select city
Then display alert msg

Scenario: Failure in hotel Booking on not selecting the state 
Given User is on hotel booking page
When user doesnot select state
Then display alert msg

Scenario Outline: Validate the number of rooms alloted 
Given User is on hotel booking page
When user enters <numberOfGuests>
Then allocate rooms such that 1 room for minimum 3 guests
Examples:
|numberOfGuests|
|2|
|6|
|9|

Scenario: Failure in hotel Booking on leaving the CardHolderName blank 
Given User is on hotel booking page
When user leaves CardHolderName blank and clicks the button
Then display alert msg

Scenario: Failure in hotel Booking on leaving the DebitCardNo blank 
Given User is on hotel booking page
When user leaves DebitCardNo blank and clicks the button
Then display alert msg

Scenario: Failure in hotel Booking on leaving the expirationMonth blank 
Given User is on hotel booking page
When user leaves expirationMonth blank and clicks the button
Then display alert msg

Scenario: Failure in hotel Booking on leaving the expirationYr blank 
Given User is on hotel booking page
When user leaves expirationYr blank and clicks the button
Then display alert msg