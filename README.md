# Rails Project 2 Write-Up


**Title:** Organizations Organizer
**Team Members:** Aaron Xu, Brenda Zhang, Carson Lian, Daniel Shiferaw  
**Demo Link:** ------------


Idea: An application where an organization can organize its members


## Models and Descriptions


Organization
Has name attribute
Has many officers and committee members


Officer
Has name, year, organization it belongs to, and position attributes
Has many committee members and belongs to an organization 


Committee Member
Has name, year, name of officer assigned by and position as attributes
Belongs to officer and organization


## Features
User can add new organization
User can add officers to each organization
User can committee members under each officer
User can archive members


## Division of Labor
* ***Aaron:*** Used paranoia gem, helped solve a lot of bugs, figured out routing
* ***Brenda:*** Created the migrations, models, helped with errors, and did the styling
* ***Carson:*** Made app functional, fixed for loops, solved a lot of bugs and errors
* ***Daniel:*** Made controllers, helped with errors, and did write-up
