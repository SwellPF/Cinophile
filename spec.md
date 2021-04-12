# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project - Using Rails 5.2.5
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)  - User has many comments and has many watchlists
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) - Comment belongs to User, Watchlist belongs to User
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) - Movie has many comments through User; Movie has many Watchlists through User
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) - Watchlist has many Movies and Movies has many Watchlists through Watchlist_Movies
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - Model validations included for User and Movie
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - Scope methods in Movie model for Genre, Recent Releases and Most Commented (which is not implemented in a view but could be) 
- [x] Include signup (how e.g. Devise) - User Controller Method
- [x] Include login (how e.g. Devise) - Sessions Controller Method
- [x] Include logout (how e.g. Devise) - Sessions Controller Method
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - OmniAuth integration for both Facebook and Google
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - User Watchlist
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) - User New Watchlist
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - Create and Edit View for User and Movie models

Confirm:
- [x] The application is pretty DRY - Use of Partials for forms
- [x] Limited logic in controllers - Yes
- [x] Views use helper methods if appropriate - For validation of login/user session
- [x] Views use partials if appropriate - Yes