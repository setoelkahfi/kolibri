Feature: Assign and remove learners to groups
  Coach needs to be able to assign learners to groups to support different learning needs and speeds

  Background:
    Given I am signed in to Kolibri as a coach user
      And I am on the *Coach > Plan > Groups* page
      And there are groups created
      
  Scenario: Enroll learners
    When I click on <group> group
    Then I see the <group> group page
    When I click the *Enroll learners* button
    Then I see the *Enroll learners into '<group>'* page
      And I see the list of all learners not enrolled in the <group>
    When I click on the checkbox(es) of the learner(s) I want to enroll
    Then I see the *Confirm* button is active
    When I click the *Confirm* button
    Then the modal closes
      And I see the <group> group page again
      And I see the list of enrolled learner(s)
      And I see the number of learners is increased

  Scenario: Remove learners
    When I click on <group> group
    Then I see the <group> group page
      And I see the list of learners assigned to group
    When I click the *Remove* button for a learner
    Then I see *Remove user* modal
    When I click the *Remove* button
    Then the modal closes
      And I see the <group> group page again
      And I see the name of removed learner(s) is not listed
      And I see the number of learners is decreased