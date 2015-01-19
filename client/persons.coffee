
# Stuff for persons

Router.route "/persons"
        
Template.persons.helpers persons: -> Persons.find()

Router.route "/person/:_id", ->
  @render "personInfo", data: -> Persons.findOne _id: @params._id
