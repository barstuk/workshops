# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(admin: true, firstname: 'Admin', lastname: 'Netguru', email: 'admin@netguru.com',
            password: 'adminadmin')

jan = User.create(firstname: 'Jan', lastname: 'Kowalski', email: 'jk@gmail.com',
                  password: 'password',
                  about_me: "<h1><span style=\"color: #993300;\">Hello!</span></h1>\r\n<p><span style=\"color: #000000; background-color: #00ccff;\">It's a part about me!<br /></span></p>\r\n<p><span style=\"color: #000000; background-color: #ffffff;\">You can edit it on <a href=\"http://netguru-workshops-by-barstuk.herokuapp.com/users/edit\">edit informations about yourself</a></span></p>\r\n<h3><strong><span style=\"color: #ff0000; background-color: #ffffff;\">ENJOY!!</span></strong></h3>" )
#sorry for this long line  : <
john = User.create(firstname: 'John', lastname: 'Smith', email: 'jessie@gmail.com',
                   password: 'secretpass')
User.create(firstname: 'Stanisław', lastname: 'Nowak', email: 'sn@gmail.com',
            password: 'pass12345')
dawid = User.create(firstname: 'Dawid', lastname: 'Zięba', email: 'dz@gmail.com',
                    password: 'password123')
User.create(firstname: 'Adam', lastname: 'Małysz', email: 'am@gmail.com',
            password: 'passwordpassword')

it_category = Category.create(name: 'IT')
football_category = Category.create(name: 'Football')

computer = Product.create(title: "computer", description: "Best computer ever",
                          price: 3999, category: it_category, user: john)
monitor = Product.create(title: "monitor", description: "Best monitor ever",
                         price: 200, category: it_category, user: john)
keyboard = Product.create(title: "keyboard", description: "Best keyboard ever",
                          price: 150, category: it_category, user: john)

ball = Product.create(title: "ball", description: "Best ball ever", price: 180,
                      category: football_category, user: dawid)
shirt = Product.create(title: "shirt", description: "Best shirt ever",
                       price: 99, category: football_category, user: dawid)
shoes = Product.create(title: "shoes", description: "Best shoes ever",
                       price: 299.99, category: football_category, user: dawid)

Review.create(product: computer, user: jan, content: "Yep, the best.", rating: 5)
Review.create(product: monitor, user: jan, content: "Nice monitor.", rating: 4)
Review.create(product: keyboard, user: jan, content: "The best keyboard I ever played", rating: 5)
Review.create(product: ball, user: jan, content: "I saw better.", rating: 2)
Review.create(product: shirt, user: jan, content: "No no, this shirt sucks.", rating: 1)
Review.create(product: shoes, user: jan, content: "This shoes are good.", rating: 5)
