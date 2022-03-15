
# MV* Architectures

## **MVC**

![](https://www.bacancytechnology.com/blog/wp-content/uploads/2019/03/blog-img-1.jpg)

### Model
Responsible for the business logic of the application.
- Persisting application state: communication with the database.
- Data management: data validation, reading, and writing data.

### View 
The View stands for UI components such as jQuery, HTML, CSS, etc.
- Presenting data to the user.

### Controller 
Establishes the relationship between the View and the Model.
- It contains the core application logic.
- Gets informed of the user’s response.
- Updates the Model as per the need.

## **MVP**

![](https://www.bacancytechnology.com/blog/wp-content/uploads/2019/03/blog-img-2.jpg)

### Model
Responsible for the business logic of the application.
- Persisting application state: communication with the database.
- Data management: data validation, reading, and writing data.

### View 
The View stands for UI components such as jQuery, HTML, CSS, etc.
- Presenting data to the user.
- Handling user interaction.

### Presenter
- Gets the input from the View.
- Processes the data with the help of the Model.
- Passes the results back to the View after the processing is done.

## **MVVM**

![](https://www.bacancytechnology.com/blog/wp-content/uploads/2019/03/MVVM-1.jpg)

### Model
Responsible for the business logic of the application.
- Persisting application state: communication with the database.
-  Data management: data validation, reading, and writing data.

### View 
The View stands for UI components such as jQuery, HTML, CSS, etc.
- Presenting data to the user
- Handling user interaction.

### ViewModel

Presents functions, methods, and commands to:
- Uphold the View’s state
- Operate the Model
- Activate the events in the View itself

## Goal
The aim of these architectures is to separate the responsibilities of visualizing, processing, and data management for UI applications.

Their goals are to increase:
- Modularity
- Flexibility
- Testability
- Maintainability

## Comparison
###  Performance Evaluation 
When we are testing the UI performance, MVP turns out to be the one with the highest reliability and lowest hindrance when it comes to rendering frames. Data binding in MVVM creates an additional overload that could drastically affect its performance when performing complex tasks.
###  Compatibility
When testing the patterns based on their compatibility, MVVM was the best of the lot due to its data binding which had a positive impact. MVP fared better than MVC, which had serious restating issues.
###  Modifiability 
When we talk about design patterns, it is evident that it should be modifiable since that gives us the option of adding new features and strategies into our app.
- Based on these factors, we observed that changes are very few in MVP and MVVM, with MVVM contributing a lot towards maintainability.
- MVC tends to increase the number of changes in the majority of the cases.
### References 
In MVC, the View doesn’t have reference to the Controller while in MVP, the View has reference to the presenter and in MVVM, the View has reference to the View-Model.
### Entry Point
For MVC, the entry point to the application is the Controller whereas, for MVP and MVVM, the entry point is the View.
### Single Responsibility Principle
- MVC does not follow the modular and single responsibility principle.
- MVP and MVVM both follow the modular and single responsibility principle.
### Unit testing
- Limited support to Unit testing for MVC.
- Easy to carry out Unit testing but a tight bond of View and Presenter can make it slightly difficult for MVP.
- Unit testability is highest in MVVM.

## Evax mobile app implementation
After comparing the three architectures, we found that MVP and MVVM are way better than MVC regarding performance and modifiability.
Regarding MVP and MVVM, both are suitable for our application. We then judged that our application is not complex enough in order to add that extra layer of work/difficulty that comes with the implementation of MVVM. For this reason, we chose to use MVP architecture.

###  Use case 1: Update phone number
![](https://cdn.discordapp.com/attachments/781131957353316373/953398912675368970/unknown.png)

### Use case 1: Add and delete a child
![](https://cdn.discordapp.com/attachments/781131957353316373/953398817326256148/unknown.png)

### References
[bacancytechnology.com](https://www.bacancytechnology.com/blog/mvc-vs-mvp-vs-mvvm)
[geekforgeeks.org](https://www.geeksforgeeks.org/difference-between-mvc-mvp-and-mvvm-architecture-pattern-in-android/#:~:text=MVC%20%28Model%20%E2%80%94%20View%20%E2%80%94%20Controller,android%20architecture%20pattern%20among%20developers.)
[levelup.gitconnected.com](https://levelup.gitconnected.com/mvc-vs-mvp-vs-mvvm-35e0d4b933b4)
[medium.com](https://medium.com/@ankit.sinhal/mvc-mvp-and-mvvm-design-pattern-6e169567bbad)
