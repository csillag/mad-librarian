
# Stuff for books

Router.route "/books"
        
Template.books.helpers books: -> Books.find()

Router.route "/book/:_id", ->
  @render "bookInfo", data: -> Books.findOne _id: @params._id
