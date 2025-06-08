## User Story to TDD
As a flight instructor I want to be able to customize a lesson plan for a student.


### Scenario 
From a list of flight maneuvers I can select different ones to add to today's lesson plan. When finished with the selection I can press the done button and be taken to a different page I can share with my student.

### Steps
* Get all flight maneuvers (From an API/Backend)
* Display them on screen (list of maneuver names)
* User selects specific maneuvers
* User hits done button
* Selected flight maneuvers are saved locally
* Selected flight maneuvers are displayed on new screen (with any additional information)
* User can go back and make changes as needed

## Manuevers Selector UI Checklist
- Show a list of names (0, 1, many)
- Select manuever

## Details Manuevers UI Checklist
- Shows a list of maneuvers
    - Name
    - Image
    - Description
    - ...
    

