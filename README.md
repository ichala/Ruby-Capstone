# Catalog of Things

> In this project, we have created a console app that will help one to keep a record of different types of things he/she wins: books, music albums, movies, and games. Everything will be based on the UML class diagram presented below. The data is stored in JSON files and contains a database that has tables structure that is analogical to the program's class structure.

## Built with

- Ruby

## UML Class Diagram

![UML Class Diagram](./assets/catalog_of_my_things.png)

## Project objectives

- Insert and query data in SQL.
- Use primary key & foreign key mechanisms for joining tables.
- Understand the different types of relationships between tables.
- Query multiple tables.
- Prepare complex queries that answer analytical questions.
- Run a program using the command line.
- Use Ruby syntax for basic programming operations.
- Apply Ruby best practices and language style guides in code.
- Describe the SOLID principles of OOP.
- Implement classes and objects in Ruby.
- Understand the four main principles of OOP.
- Implement encapsulation and inheritance with Ruby.
- Create a UML class diagram.
- Explain the difference between associations, aggregations, and composition in OOP.
- Set up associations between classes and objects.
- Store data in files.
- Build interactive console apps.

### Project Requirements

#### Logic

    - Each class from the [UML class diagram](./images/catalog_of_my_things.png) should be created in a separate .rb file.
    - All associations (1-to-many relationships) and aggregations (parent-child relationships) between classes should be implemented.
    - All properties visible in the diagram should be defined and set up in the constructor method. _Exception: properties for the 1-to-many relationships should NOT be set in the constructor method. Instead, they should have a custom setter method created._
    - All methods visible in the diagram should be implemented:
        - add_item method (in all classes that have that method)
            - should take an instance of the Item class as an input.
            - should add the input item to the collection of items.
            - should add self as a property of the item object (by using the correct setter from the item object).
        - can_be_archived?() in the Item class
            - should return true if published_date is older than 10 years.
            - otherwise, it should return false.
        - move_to_archive() in the Item class
            - should reuse can_be_archived?() method.
            - should change the archived property to true if the result of the can_be_archived?() method is true.
            - should do nothing if the result of the can_be_archived?() method is false.
        - can_be_archived?() in the Book class
            - should override the method from the parent class.
            - should return true if parent's method returns true OR if cover_state equals to "bad".
            - otherwise, it should return false.
        - can_be_archived?() in the MusicAlbum class
            - should override the method from the parent class.
            - should return true if parent's method returns true AND if on_spotify equals true.
            - otherwise, it should return false.
        - can_be_archived?() in the Movie class
            - should override the method from the parent class.
            - should return true if parent's method returns true OR if silent equals true.
            - otherwise, it should return false.
        - can_be_archived?() in the Game class
            - should override the method from the parent class.
            - should return true if parent's method returns true AND if last_played_at is older than 2 years.
            - otherwise, it should return false.
    - Add unit tests for all implemented methods.

#### User interface

    - Create a main.rb file that will serve as your console app entry-point.
    - Your console app, at the start, should:
        - Present the user with a list of options to perform.
        - Let users choose an option.
        - If needed, ask for parameters for the option.
        - Have a way to quit the app.
    - The following options should be available:
        - List all books
        - List all music albums
        - List all movies
        - List of games
        - List all genres (e.g 'Comedy', 'Thriller')
        - List all labels (e.g. 'Gift', 'New')
        - List all authors (e.g. 'Stephen King')
        - List all sources (e.g. 'From a friend', 'Online shop')
        - Add a book
        - Add a music album
        - Add a movie
        - Add a game
    - All data should be preserved by saving collections in .json files.

### Database

- Create a schema.sql file with tables that will be analogical to the structure of the classes in your app. As you cannot implement inheritance in the database tables - add all properties and associations from the parent Item class as table columns to all tables based on the child classes. Thanks to that it can be used to store data in the future.

## Setup

To run the project, you need to install Ruby and the gems necessary to run the project.

```bash
$ gem install bundler
$ bundle install
```

You can get a copy of the project from [GitHub](https://github.com/ichala/Ruby-Capstone).

## Authors

👤 **Ali Jendoubi**

- GitHub: [@Chala](https://github.com/ichala)
- Twitter: [@\_ichala](https://twitter.com/_ichala)
- LinkedIn: [Ali Jendoubi](https://www.linkedin.com/in/alijendoubi/)

👤 **Joy Kwamboka**

- Github: [@kwambiee](https://github.com/kwambiee)
- Twitter: [@kwambiee](https://twitter.com/kwambiee)
- Linkedin: [Joy Kwamboka](https://www.linkedin.com/in/joy-kwamboka)

👤 **Mandela T**

- GitHub: [@mandelatuks](https://github.com/mandelatuks)
- Twitter: [@MandelaTm1](https://twitter.com/MandelaTm1)
- LinkedIn: [@Mandela Tumukunde](https://www.linkedin.com/in/mandela-tumukunde-794755194/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ichala/Ruby-Capstone/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
