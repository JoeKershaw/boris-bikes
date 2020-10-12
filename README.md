# Boris Bike Project
This task is to produce code that will simulate the working of the Boris Bikes
system that is used in London.





### User Stories

[Task 2: Working with user stories](https://github.com/makersacademy/course/blob/master/boris_bikes/2_working_with_user_stories.md)


```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```

Nouns: Person, Bike, Docking Station
Verbs: use, release

```
OBJECT              MESSAGE

User

(Bike)      ---->   used

Docking     ---->   release(bike)
```




```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

Nouns: Person, Bike
Verbs: use, see if working (working, see)


```
OBJECT              MESSAGE


User    ---->       if is working ---> use

Bike    ---->       is_working
```



