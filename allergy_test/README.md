# Allergy test

This is a multi - day exercise. 20 to 25 minutes per day allowed for a total of 2 - days.

### How to run

First off, you'll need the proper allergy code to decode. For a default, try Jorge's score 

Joel Lindow
Software Designer

### Concept of Exercise
Scientists have developed an allergy test that produces a single numeric score that summarizes information about all the allergies a person has.
* The allergy test checks for the following allergies and assigns them the corresponding value:
       + eggs (1)
       + peanuts (2)
       + shellfish (4)
       + strawberries (8)
       + tomatoes (16)
       + chocolate (32)
       + pollen (64)
       + cats (128)

If Jorge is allergic to peanuts and chocolate, he gets a score of 34.
Your job is to write a program that takes the number and translates it back the allergens that the patient is allergic to.
In this case, 34 would translate back into a report saying that Jorge was allergic to peanuts and chocolate.
* Because software developers love TDD (Test Driven Development), here are some cases that can be tested against when coding this exercise:
       + A score of two would mean that the patient is allergic to just peanuts.
       + A score of 3 would mean that the patient is allergic to eggs and peanuts.”
