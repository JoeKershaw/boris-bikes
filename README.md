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

### New Feature

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

```
OBJECT              MESSAGE
bike   ---->        broken
```

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

```
OBJECT              MESSAGE
dockingstation   ---->  release working bikes only
```

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
