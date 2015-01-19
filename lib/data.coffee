
# Define out entity types

@Persons = new Meteor.Collection 'persons'
@Books = new Meteor.Collection 'books', transform: (book) ->
  book.authorProfiles = book.authors.map (id) ->
    Persons.findOne _id: id

  book      

@BookCopies = new Meteor.Collection 'book-copies'
@Articles = new Meteor.Collection 'articles'

