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
connect('postgresql', 'testdb')
```

*** =sample_code
```{sql}
-- sql code comes here
```

*** =solution
```{sql}
-- sql code comes here
```

*** =sct
```{python}
# this is python code
#success_msg('awesome!')
```

--- type:NormalExercise lang:sql xp:50 skills:1 key:2847d58749
## SQL TabExercise

This is a SQL tab exercise.

*** =instructions
- Just experiment!

*** =pre_exercise_code
```{python}
# this is python code
```

*** =sample_code
```{sql}
-- sql code comes here
```

*** =solution
```{sql}
-- sql code comes here
```

*** =sct
```{python}
# this is python code
#success_msg('awesome!')
```


--- type:NormalExercise lang:sql xp:50 skills:1 key:fc4ca965b5
## SQL BulletExercise

This is a SQL tab exercise.

*** =instructions
- Just experiment!

*** =pre_exercise_code
```{python}
# python code comes here
```

*** =sample_code
```{sql}
-- sql code comes here
```

*** =solution
```{sql}
-- sql code comes here
```

*** =sct
```{python}
# this is python code
# success_msg('awesome!')
```


--- type:MultipleChoiceExercise lang:sql xp:50 skills:1 key:565ae9c1eb
## This is a SQL multiple choice exercise.

This is a sql multiple choice exercise.

*** =instructions
- Just experiment!
- Second choice
- third choice
- last choice

*** =pre_exercise_code
```{python}
connect('postgresql', 'testdb')
```

*** =sct
```{python}
msg1 = "Correct! As funny as they may look, all these commands are valid ways to build a Python list."
msg2 = "Command B is valid, but it's not the only one!"
msg3 = "Both command B and C are valid; what about command A? Try it out in the console."
msg4 = "Command C is valid, but it's not the only one!"
Ex().test_mc(1,[msg1,msg2,msg3,msg4])
```
