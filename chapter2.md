---
title       : Sqlwhat exercises
description : Insert the chapter description here

--- type:NormalExercise lang:sql xp:100 skills:1 key:ac7a0c0a73
## Basic Select



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
Ex().check_statement("select") \
    .has_equal_ast(sql="SELECT * FROM film", start="subquery")    # subquery is the parser rule for select stmt
```

--- type:NormalExercise lang:sql xp:100 skills:1 key:14ba4a79a8
## Where clause

### Fail - too few rows

```
SELECT * FROM film WHERE film_id < 4
```

### Fail - AST mismatch, swapped left and right

```
SELECT * FROM film WHERE 5 > film_id
```



*** =instructions

*** =hint

*** =pre_exercise_code
```{sql}
connect("postgresql", "dvdrental")
```

*** =sample_code
```{sql}
SELECT * FROM film ____
```

*** =solution
```{sql}
SELECT * FROM film WHERE film_id < 5

```

*** =sct
```{sql}
Ex().check_result()
Ex().check_statement("select") \
    .check_clause("where_clause") \
    .has_equal_ast(msg="result looks correct, but ast doesn't match")
```

--- type:NormalExercise lang:sql xp:100 skills:1 key:29421f7816
## Checking result

#### Fail - too few columns

```
SELECT film_id FROM film
```

#### Fail - too few rows

```
SELECT film_id, title FROM film WHERE film_id < 10
```

#### Pass - film_id in sol matches some column

```
SELECT film_id as fid, title FROM film
```

#### Fail - film_id column does not match any column

```
SELECT length, title FROM film
```

#### Fail - title column needs exact name

```
SELECT film_id, title as t1 FROM film
```

#### Fail - title column included, but not equal

```
SELECT film_id, length as title FROM film
```

#### Fail - no columns at all (currently does not work)

```
INSERT INTO film VALUES {TODO}
```




*** =instructions

*** =hint

*** =pre_exercise_code
```{sql}
connect("postgresql", "dvdrental")
```

*** =sample_code
```{sql}
SELECT film_id, title FROM film
```

*** =solution
```{sql}
SELECT film_id, title FROM film
```

*** =sct
```{sql}
Ex().test_ncols()     # check has same number of columns
Ex().test_nrows()     # check has same number of rows
Ex().test_column(name="film_id", match="any")
Ex().test_column(name="title", match="exact")

Ex().test_has_columns()    # check has any columns at all
```
