# Readme

## What is this ?

In iOS , ther is no native way to find out whether an instance already has a similar observer before adding it or whether there exists an observer bounded to the instance before we remove it.
In the former it leads to memory leaks as the instance will not be deallocated and in the later it will crash the application as the instance must have registered an observer before you try to remove it.

This class is extrememly simple to use and solves this problem.

### Usage :-

Create an instance of the ObserverModel and call its methods like so :-

```
var observerModel = ObserverModel()

observerModel.addObserver(...

observerModel.removeObserver(...

```

thats it , your problem is solved.These two methods will internally add/remove your observers to the instance specified only if the do not exist / do exist respectively.

### Note:

This class comes in handy when you are spinning your head around AVPlayer in which you have to deal with multiple observers ,
especially if it is in a class that gets deallocated often like for example in a UIPageViewController.
