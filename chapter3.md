---
title       : Testing subexercises
description : This thing is meant to test subexercises

--- type:TabExercise lang:r xp:100 skills:1 key:ed98f7522c
## Testing subexercises

This is a subexercise. Updated this.

*** =pre_exercise_code
```{python}
connect('postgresql', 'dvdrental')
```

*** =sample_code
```{sql}
-- sql code comes here
```

*** =type1
NormalExercise

*** =key1: e7cd8d5cb0

*** =instructions1
Do some stuff

*** =solution1
```{sql}
SELECT film_id, title FROM film;
```

*** =sct1
```{python}
# not supported yet
success_msg('You are fabulous')
```

*** =type2
MultipleChoiceExercise

*** =key2: 216ce6d206

*** =question2
What do you think?

*** =instructions2
- One
- Two
- Three
- Four

*** =sct2
```{python}
msg1 = "Wrong 1"
msg2 = "Option 2 is correct, great!"
msg3 = "Wrong 2"
msg4 = "Wrong 3"
Ex().test_mc(2,[msg1,msg2,msg3,msg4])
```
