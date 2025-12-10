use('trips_db');

db.createCollection('users');

db.destinations.insertOne({})

db.users.insertOne({
    name: 'John Doe',
    email: 'john.doe@example.com',
    age: 30,
    birthDate: '1995-01-05'
})

db.users.insertMany([{
    name: 'Jane Doe',
    email: 'jane.doe@example.com',
    age: 25,
    birthDate: '2000-03-12',
},
{
    name: 'Daniel',
    email: 'dan.03@example.com',
    age: 19,
    birthDate: '2006-06-25'
}])

db.users.find({})

db.users.find({name:"John Doe"})

db.users.findOneAndUpdate({name:'Jane Doe'}, {$set: {name:'Jane Jefferson'}})

db.users.findOneAndUpdate({name:'John Doe'}, {$set: {name:'John Marston'}})

db.users.insertOne({
    name: 'toDelete',
    email: 'to.delete@delete.com',
    age: 0,
    birthDate: '1900-10-01'
})

db.users.findOneAndDelete({name:'toDelete'})

db.users.find({})

db.users.insertOne({
    name: 'John Castle',
    email: 'johnny@example.com',
    age: 21,
    birthDate: '2004-04-13'
})

db.users.insertOne({
    name: 'John Castle',
    email: 'johnny02@example.com',
    age: 23,
    birthDate: '2002-09-27'
})

db.users.updateOne({name:'John Castle'}, {$set: {age: 30}})

db.users.updateMany({name:'John Castle'}, {$set: {age: 33}})

db.users.find({name:'John Castle'})

db.users.updateOne({name:'John Castle'}, {$set: {age: 18}})

db.users.find({$and: [{name:'John Castle'}, {age: 33}]})

db.users.find({$or: [{name: 'John Castle'}, {age: 25}]})

db.users.updateMany({},
    {
    $set:{street: 'Times Square', number: 100, city: 'New York', state: 'New York'}
})

db.users.updateMany({$or: [{name:'John Marston'}, {name:'Jane Jefferson'}]},
    {
        $set:{street: 'Melrose Ave', number: 25, city: 'Los Angeles', state: 'California'}
    }
)

db.users.updateOne({name: 'Daniel'}, {$set: {street: 'Westheimer Road', number: 37, city: 'Houston', state: 'Texas'}})

db.users.find({city: {$in: ["Los Angeles", "New York"]}})

db.users.find({city: {$in: ["Los Angeles", "Houston"]}})

db.users.find({city: {$nin: ["Los Angeles", "Houston"]}})