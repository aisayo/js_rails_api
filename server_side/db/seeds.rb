# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

miguel = Author.create(name: 'Miguel de Cervantes')
fitzgerald = Author.create(name: 'F. Scott Fitzgerald')
herman = Author.create(name: 'Herman Melville')
william = Author.create(name: 'William Shakespeare')
salinger = Author.create(name: 'J. D. Salinger')
jane = Author.create(name: 'Jane Austen')

Book.create([{
    title: "Don Quixote", 
    publisher: "Francisco de Robles", 
    publish_date: "1605", 
    page_count: 992,  
    author_id: miguel.id, 
}, {
    title: "The Great Gatsby", 
    publisher: "Charles Scribner's Sons", 
    publish_date: "1925", 
    page_count: 218, 
    author_id: fitzgerald.id, 
}, {
    title: "Moby Dick", 
    publisher: "Richard Bentley", 
    publish_date: "1851", 
    page_count: 378, 
    author_id: herman.id, 
}, {
    title: "Hamlet", 
    publisher: "NA", 
    publish_date: "1601", 
    page_count: 104, 
    author_id: william.id, 
}, {
    title: "The Catcher in the Rye", 
    publisher: "Little, Brown and Company", 
    publish_date: "1951", 
    page_count: 234, 
    author_id: salinger.id, 
}, {
    title: "Pride and Prejudice", 
    publisher: "T. Egerton, Whitehall", 
    publish_date: "1813", 
    page_count: 408, 
    author_id: jane.id, 
}])

# this is the seeds file 