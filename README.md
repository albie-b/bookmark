bundle
 ```

 ### To set up the database

 Connect to `psql` and create the `bookmark_manager` database:

 ```
 CREATE DATABASE bookmark_manager;
 ```

 To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

 ### To run the Bookmark Manager app:

 ```
 rackup -p 3000
 ```


 To view bookmarks, navigate to `localhost:3000/bookmarks`.

 ### To run tests:


 user stories:

 As a user
 So I can use bookmarks to save time
 I want to see a list of bookmarks

 As a user
 So I can store bookmark data for later retrieval
 I want to add a bookmark to Bookmark Manager

 As a user
 So I can remove my bookmark from Bookmark Manager
 I want to delete a bookmark
