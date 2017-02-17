---
title       : Sqlwhat exercises
description : Insert the chapter description here

--- type:NormalExercise lang:sql xp:100 skills:1 key:ac7a0c0a73
## Check results



*** =instructions

*** =hint

*** =pre_exercise_code
```{sql}
connect('postgresql', 'dvdrental')
```

*** =sample_code
```{sql}
SELECT ____ FROM film
```

*** =solution
```{sql}
SELECT * FROM film

```

*** =sct
```{sql}
Ex().check_result()
Ex().has_equal_ast()
Ex().has_equal_ast(sql="select * from film", start="subquery")    # subquery is the parser rule for select stmt
```
