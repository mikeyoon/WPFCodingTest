Summary
=======

The goal is the add a set of provided points of interest locations to an existing WPF map application. You are provided a service called POIService that you can use to retrieve the set of sample PointOfInterest models. You must use this data to display a set of markers on the map. Maintaining the MVVM pattern to the best of your ability is encouraged. The solution includes four projects. Most, if not all of your work will be done in the WpfApplication project. The rest are for the map control and are there for your own reference if you need to understand how something works.

For the display of the Points of Interest, you can choose to use any shapes you'd like, but try to take advantage of the color information provided in the models.

Main Goals
----------

1. Display the points of interests on the map
  * Find and use a suitable graphic for the markers
  * Include color information from the models in the markers
1. Use MVVM to bind the models to the view

Bonus Goals
-----------

1. Add functionality that will add or remove points of interest from the map. Buttons or mouse events would be fine.
1. Add click and drag functionality to move points of interest on the map