## TutorialPager

 
This component for ios development written in swift.<br />
for simple images show like guide for start app.<br />
just give it images or view controller to show them in scroll view horizontly.<br />
with simple use and full control on component that you can access every part of it and fully customize it.<br />
## First thing you need to add component to your project by two way:- 
1- by intall cocoaPod 
 Add blow for your pod file 
   ```
   cd to your project folder 
   pod init
   
   add to pod file  --> pod 'TutorialPager' 
   
   run pod update , or pod install
   ```
 2- secand way <br />
 copy files to your project directory.
 
     TutorialView.swift,  TutorialView.xib,  TutorialViewDelegate.swift
 
## How to start use it :-
1- drag drop view component in your storyboard<br />
2- change class to <br />
```
  TutorialView
```
3- create outlet from it to your viewcontroller.<br />
4- start to add data source for pager tutorial.<br />


## How it works :- 
Component formed from two native ios ui component <br />
1- collection view that you have fully modify design ass you wish.<br />
named
```
  tutorialCollectionView
```
2- page controll you also have full customize all parameter that available already in it.<br />
named
```
tutorialPageControl
```

3- set data source for tutorial and you have two option 

    -array of [UIImageView] --> .dataSourceView = [uiimage view array]
    
    -array of [UIViewController] ---> .dataSourceViewViewController = [viewController array]
    
    - if you set array of images it will not take look for viewController.
    
4- set delegate if you want to recive action when happen 
``` //both of two func are optional
//call it when index display in screen
    func tutorialView(didDisplayedIndex index:IndexPath)
   //called when cell index clicked by user. 
    func tutorialView(didslectedIndex index:IndexPath)
    
```
## what is available in it :-

1- by default it is not scroll automatic, you ca change it <br />
2- you can change scroll period time.<br />
3- you can move page controll up and down in screen, or even hide it.<br />
4- you can change size of page controll of color of select or select page color.<br />
4- you can modify cell background in all component.<br />

## you should get result like that:- 
| --- | --- |
|![Screenshot](https://github.com/ragaie/TutorialPager/blob/master/TutorialPager/screen%20shot%20and%20photos/screenShot2.png) |  ![Screenshot](https://github.com/ragaie/TutorialPager/blob/master/TutorialPager/screen%20shot%20and%20photos/screenShot1.png) |


## Author

* **Ragaie alfy Fahmey**  - [LinkedIn](www.linkedin.com/in/ragaie-alfy)

## Publish

 🎉  Congrats<br />
 🚀  TutorialPager (0.0.2) successfully published<br />
 📅  January 17th, 11:28<br />
 🌎  https://cocoapods.org/pods/TutorialPager<br />
 👍  Tell your friends!<br />


# MIT License

Copyright (c) 2019 Ragaie alfy fahmey

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
