Meteor.startup ->

  timestamp = (new Date()).getTime()
  if Persons.find().count() is 0
    Persons.insert
      name: "Some Buddy"
      createdAt: new Date(timestamp += 1)

    Persons.insert
      name: "Random Guy"
      createdAt: new Date(timestamp += 1)

  if Books.find().count() is 0
    Books.insert
      title: "Introduction to Science"
      authors: [Persons.findOne()._id]
      createdAt: new Date(timestamp += 1)      

#    data.forEach (person) ->
#      person.createdAt = new Date(timestamp += 1)
#      Persons.insert person

