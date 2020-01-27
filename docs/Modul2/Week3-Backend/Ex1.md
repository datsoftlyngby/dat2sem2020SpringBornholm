# Exercise 1:

This exercise is about making a web application, that will allow users to upload their recipes and to see a list of recipes and and see a specific recipe, when a user click on an item in the recipe list view. Recipes must contain ingredients and instructions and they can contain images and ratings.

Create a **maven** web application that can register recipes from users. 
HINT: in maven project we handle dependencies via POM.XML file. To get a connection to the database the following needs to be in the POM.XML file:

```xml
<dependency>
     <groupId>mysql</groupId>
     <artifactId>mysql-connector-java</artifactId>
     <version>5.1.47</version>
</dependency>
```

For examples and reference code see [Sem2 demo code base](https://github.com/HartmannDemoCode/Sem2). (Especially these projects: DataMapper, ServletDemo, jspdemo).

## 1. Persist in database

1. (G) Create an E/R diagram of the entities and their relationships
2. (G) Create the necessary tables and foreign keys in a database to persist the recipe data.
3. (G) Create the necessary java classes to hold the entities. These entity classes are DTOs that we use to transport data from the data layer to the presentation layer and back.
4. (G) Fill some dummy data in the database.
5. (R) Add structure to the database, so that images of the food can be shown (Hint: Images are put in files and the path to the file is stored in the db table.

## 2. Create a Controller (servlet)

1. (G) Make a new servlet that can display a single recipe.
2. (G) Let the servlet read the request parameter indicating which recipe to be displayed.
3. (G) The servlet isn't allowed to access the database, so you need to make a **Data Access Object** or DAO.
4. (G) Display the recipe including all its ingredients.
5. (Y) It is possible to simply write raw text to the browser, but try to use a few HTML tags to "style" your text.
6. (R) If the recipe has an image display that as well.</br>hint: `<img src="picture.jpg">`


## 3. Create another servlet to display all recipes

1. (G) Create a new servlet (with a new and unique URLpattern)
2. (G) Display all recipes, but in a brief way (without ingredients)
3. (Y) Make all the recipes clickable. Use a get request to tell the server what recipe was clicked. (Hint: use a link element with parameters to show which recipe</br>
Hint: `<a href="Control?origin=showRecipe&recipe_id=3">chocolate mouse</a>`).


## 4. Make a Front controller

1. (Y) Make a Front controller with a "catch-all" URLpattern.
2. (Y) switch on the **PathInfo** and forward / redirect to the correct **Page controler** (servlet)
3. (Y) Raise a flag everytime the front controller redirects (or forwards) the flow. That way you can tell if the front controller was involved or if the page controller was accessed directly. All requests must pass through the front controller.
4. (R) Use the LoginServlet we made in class (or something similar) to validate the user at every request (in the front controller). When properly logged in the user can be store on the **session**.

## 5. Add new recipes 
1. (R) Make a 3rd page controller that allows you to add new recipes. 
 - This can either be done as a multi-step process, where you first add an "empty" recipe and then adds ingredients the that recipe one at a time, each as an individual request.
  - Or you can simply accept that there will be a lot of parameters. This might require a fair amount of string manipulation.

## 6. Images in database

1. (R) Store pictures of the dishes in an img folder.
2. (R) Insert the path to the the images in the database.
3. (R) Add a field to contain a list of images in the Recipe class and change methods in the data mapper to deal with images.
4. (R) Add functionality that allows you to add images to a new recipe.

     Hint: see [tutorial here](http://www.tutorialspoint.com/servlets/servlets-file-uploading.htm)