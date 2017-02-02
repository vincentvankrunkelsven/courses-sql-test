---
title       : Testing SQL
description : Testing SQL

--- type:NormalExercise xp:100 key:c778ff1b1a
## SQL NormalExercise

This is a SQL normal exercise.

*** =instructions
- Just experiment!

*** =pre_exercise_code
```{python}
# this is python code
```

*** =sample_code
```{sql}
# this is sql code
```

*** =solution
```{sql}
# this is sql code
```

*** =sct
```{python}
# this is python code
success_msg('awesome!')
```

--- type:TabExercise lang:sql xp:50 skills:1 key:9454edb64d
## Citibike case study
 
SQL is awesome
 
*** =pre_exercise_code
```
connect_db('citibikes')
```
 
*** =sample_code
```{r}
SELECT ___ FROM ___
```
 
*** =subex_type1
Normal
 
*** =instruction1
Return the id column of all stations
 
*** =solution1
```
SELECT id FROM stations
```
 
*** =sct1
```
ex().test_query()
```
 
*** =subex_type2: Normal
*** =instruction2: Return the names of all stations
*** =solution2: SELECT name FROM stations
*** =sct2: ex().test_query()
 
 
*** =subex_type3
MultipleChoice
 
*** =instruction3
Which predicate do you need to get the number of records that match your query?
 
*** =options3
- COUNT
- DISTINCT
- GROUP BY
 
*** =sct3
```
ex().test_mc(2)
success_msg("great work!") # only last success message is shown
```