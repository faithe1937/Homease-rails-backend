# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(firstname: 'olive', lastname: 'juice', email: 'oj@gmail.com', password: '1234')
# User.create(firstname: 'bob', lastname: 'builder', email: 'bob@gmail.com', password: '1234')
# User.create(firstname: 'bill', lastname: 'stan', email: 'stan@gmail.com', password: '1234')
# User.create(firstname: 'anne', lastname: 'fran', email: 'ran@gmail.com', password: '1234')

# Project.create(
#     homeowner_id: 1,
#     contractor_id: 2,
#     name: 'kitchen remodel',
#     budget: 2000,
#     duedate: '2020/11/11'
# )

Project.create(
    homeowner_id: 3,
    contractor_id: 2,
    name: 'kitchen remodel',
    budget: 2000,
    duedate: '2020/11/11'
)


Project.create(
    homeowner_id: 3,
    contractor_id: 2,
    name: 'tiny house',
    budget: 2000,
    duedate: '2020/11/11'
)

# Invoice.create(
#     project_id: 1,
#     qty: 1,
#     unitprice: 200.00,
#     description: "service fee",
#     cost: 200.00
# )
# Invoice.create(
#     project_id: 1,
#     qty: 1,
#     unitprice: 449.00,
#     description: "farmhouse sink",
#     cost: 449.00
# )