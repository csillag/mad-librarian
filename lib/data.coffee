
# Define out entity types

@Persons = new Meteor.Collection 'persons', transform: (person) ->
  person.booksBy = Books.find authors: person._id

  person


@Books = new Meteor.Collection 'books', transform: (book) ->
  book.authorProfiles = book.authors.map (id) ->
    Persons.findOne _id: id

  book      

@BookCopies = new Meteor.Collection 'book-copies'
@Articles = new Meteor.Collection 'articles'

