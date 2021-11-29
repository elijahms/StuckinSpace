# Phase 3 Mock Code Challenge: Famous Paintings

We have three models: `Museum`, `Painting`, and `Artist`.

For our purposes, a `Museum` has many `Painting`s, an `Artist` has many
`Painting`s, and a `Painting` belongs to a `Museum` and to an `Artist`.

`Museum` - `Artist` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you
start coding_. Remember to identify a single source of truth for your data.

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed
in a suggested order, but you can feel free to tackle the ones you think are
easiest. Some of the later methods may rely on earlier ones.

This mock code challenge has no tests. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console.

We've provided you with a tool that you can use to test your code. To use it,
run `rake console` from the command line. This will start a `pry` session with
your classes defined. You can test out the methods that you write here. You are
also encouraged to use the `seeds.rb` file to create sample data to test your
models and associations.

## What You Already Have

The starter code has migrations and models for the initial `Museum` and
`Artist` models, and seed data for some `Museum`s and `Artist`s. The
schema currently looks like this:

### `museums` Table

| Column | Type    |
| ------ | ------- |
| name   | String  |
| city   | String |

### `artists` Table

| Column     | Type    |
| ---------- | ------- |
| first_name | String  |
| last_name  | String  |
| birthyear  | Integer |
| style      | String  |

You will need to create the migration for the `paintings` table using the
attributes specified in the deliverables below.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to
build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class
methods.

Remember: Active Record gives your classes access to a lot of methods already!
Keep in mind what methods Active Record gives you access to on each of your
classes when you're approaching the deliverables below.

### Migrations

Before working on the rest of the deliverables, you will need to create a
migration for the `paintings` table.

- A `Painting` belongs to an `Artist`, and a `Painting` also belongs to an
  `Museum`. In your migration, create any columns your `paintings` table will
  need to establish these relationships.
- The `paintings` table should also have:
  - A `title` column that stores a string.
  - A `price_in_us_dollars` column that stores an integer.

After creating the `paintings` table using a migration, use the `seeds.rb` file to
create instances of your `Painting` class so you can test your code.

**Once you've set up your `paintings` table**, work on building out the following
deliverables.

### Object Relationship Methods

Use Active Record association macros and Active Record query methods where
appropriate (i.e. `has_many`, `has_many through`, and `belongs_to`).

#### Painting

- `Painting#artist`
  - should return the `Artist` instance for this painting
- `Painting#museum`
  - should return the `Museum` instance for this painting

#### Museum

- `Museum#paintings`
  - returns a collection of all the paintings for the `Museum`
- `Museum#artists`
  - returns a collection of all the artists who have a painting in the `Museum`

#### Artist

- `Artist#paintings`
  - should return a collection of all the paintings that the `Artist` has done
- `Artist#museums`
  - should return a collection of all the museums that the `Artist` have one of the artist's paintings

Use `rake console` and check that these methods work before proceeding. For
example, you should be able to call `Artist.first.museums` and see a list
of the museums for the first artist in the database based on your seed
data; and `Painting.first.artist` should return the artist for the first
painting in the database.

### Aggregate and Association Methods

#### Artist

- `Artist#full_name`
  - returns the full name of the artist, with the first name and the last name
    concatenated, Western style.
- `Artist.sort_by_year`
  - uses `sort_by` in order to return the artists sorted by birth year.
- `Artist#add_painting(museum, title, price_in_us_dollars)`
  - takes a `museum` (an instance of the `Museum` class), a title, and a price
  - creates a new painting for the artist associated to the given `museum`

#### Painting

- `Painting#description`
  - should return a string formatted as follows:

```txt
{insert painting name} was painted by {insert artist full name} which currently
resides in the {insert museum name}. It is currently priced at {insert painting
price}.
```

#### Museum

- `Museum#combined_value`
  - returns the total combined price for each painting in the museum
- `Museum#average_value`
  - returns the average price for a painting in the museum
- `Museum.fanciest`
  - returns _one_ museum instance for the museum that has the highest average paintings price
- `Museum#exhibit_artist(artist)`
  - takes an `artist` (an instance of the `Artist` class) and
  - moves all their paintings to this museum
  - you will have to reassociate every painting belonging to the artist, how can you do that?
