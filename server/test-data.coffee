Meteor.startup ->

  if Persons.find().count() is 0

    timestamp = (new Date()).getTime()


    cData =
      name: "Fr. Cekada"
      createdAt: new Date(timestamp += 1)
    cId = Persons.insert cData

    sData =
      name: "Bp. Sanborn"
      createdAt: new Date(timestamp += 1)
    bId = Persons.insert sData

    whhData =
      title: "Work of human hands"
      authors: [cId]
      createdAt: new Date(timestamp += 1)      

    Books.insert whhData

    amrData =
      title: "Anti-Modernist Reader"
      authors: [bId, cId]
      createdAt: new Date(timestamp += 1)      

    Books.insert amrData

#    data.forEach (person) ->
#      person.createdAt = new Date(timestamp += 1)
#      Persons.insert person

