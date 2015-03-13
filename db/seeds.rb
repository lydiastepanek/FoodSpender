# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#allows you to run rake db:seed multiple times without data duplication
#but this isnt working
# Dir['models/**/*.rb'].each do |model|
#     model_object = model.camelize.constantize
#     model_object.delete_all
#     ActiveRecord::Base.connection.reset_pk_sequence!(model_object)
# end
User.delete_all
Foodtype.delete_all
Post.delete_all
Comment.delete_all
Like.delete_all
Friendship.delete_all

u1 = User.create!(email: "valerie.hansen@yale.edu", password: "valerievalerie", first_name: "Valerie", last_name: "Hansen")
u2 = User.create!(email: "james.b.stepanek@gmail.com", password: "jamesjames", first_name: "James", last_name: "Stepanek")
u3 = User.create!(email: "bret.stepanek@gmail.com", password: "bretbret", first_name: "Bret", last_name: "Stepanek")
u4 = User.create!(email: "claire.stepanek@gmail.com", password: "claireclaire", first_name: "Claire", last_name: "Stepanek")
u5 = User.create!(email: "lydia.stepanek@gmail.com", password: "lydialydia", first_name: "Lydia", last_name: "Stepanek")

f1 = Foodtype.create!(title: 'Afghan')
f2 = Foodtype.create!(title: 'African')
f3 = Foodtype.create!(title: 'American (New)')
f4 = Foodtype.create!(title: 'American (Traditional)')
f5 = Foodtype.create!(title: 'Arabian')
f6 = Foodtype.create!(title: 'Argentine')
f7 = Foodtype.create!(title: 'Armenian')
f8 = Foodtype.create!(title: 'Asian Fusion')
f9 = Foodtype.create!(title: 'Australian')
f10 = Foodtype.create!(title: 'Austrian')
f11 = Foodtype.create!(title: 'Bangladeshi')
f12 = Foodtype.create!(title: 'Barbeque')
f13 = Foodtype.create!(title: 'Basque')
f14 = Foodtype.create!(title: 'Belgian')
f15 = Foodtype.create!(title: 'Brasseries')
f16 = Foodtype.create!(title: 'Brazilian')
f17 = Foodtype.create!(title: 'Breakfast & Brunch')
f18 = Foodtype.create!(title: 'British')
f19 = Foodtype.create!(title: 'Buffets')
f20 = Foodtype.create!(title: 'Burgers')
f21 = Foodtype.create!(title: 'Burmese')
f22 = Foodtype.create!(title: 'Cafes')
f23 = Foodtype.create!(title: 'Cafeteria')
f24 = Foodtype.create!(title: 'Cajun/Creole')
f25 = Foodtype.create!(title: 'Cambodian')
f26 = Foodtype.create!(title: 'Caribbean')
f27 = Foodtype.create!(title: 'Catalan')
f28 = Foodtype.create!(title: 'Cheesesteaks')
f29 = Foodtype.create!(title: 'Chicken Shop')
f30 = Foodtype.create!(title: 'Chicken Wings')
f31 = Foodtype.create!(title: 'Chinese')
f32 = Foodtype.create!(title: 'Comfort Food')
f33 = Foodtype.create!(title: 'Creperies')
f34 = Foodtype.create!(title: 'Cuban')
f35 = Foodtype.create!(title: 'Czech')
f36 = Foodtype.create!(title: 'Delis')
f37 = Foodtype.create!(title: 'Diners')
f38 = Foodtype.create!(title: 'Ethiopian')
f39 = Foodtype.create!(title: 'Fast Food')
f40 = Foodtype.create!(title: 'Filipino')
f41 = Foodtype.create!(title: 'Fish & Chips')
f42 = Foodtype.create!(title: 'Fondue')
f43 = Foodtype.create!(title: 'Food Court')
f44 = Foodtype.create!(title: 'Food Stands')
f45 = Foodtype.create!(title: 'French')
f46 = Foodtype.create!(title: 'Gastropubs')
f47 = Foodtype.create!(title: 'German')
f48 = Foodtype.create!(title: 'Gluten-Free')
f49 = Foodtype.create!(title: 'Greek')
f50 = Foodtype.create!(title: 'Halal')
f51 = Foodtype.create!(title: 'Hawaiian')
f52 = Foodtype.create!(title: 'Himalayan/Nepalese')
f53 = Foodtype.create!(title: 'Hot Dogs')
f54 = Foodtype.create!(title: 'Hot Pot')
f55 = Foodtype.create!(title: 'Hungarian')
f56 = Foodtype.create!(title: 'Iberian')
f57 = Foodtype.create!(title: 'Indian')
f58 = Foodtype.create!(title: 'Indonesian')
f59 = Foodtype.create!(title: 'Irish')
f60 = Foodtype.create!(title: 'Italian')
f61 = Foodtype.create!(title: 'Japanese')
f62 = Foodtype.create!(title: 'Korean')
f63 = Foodtype.create!(title: 'Kosher')
f64 = Foodtype.create!(title: 'Laotian')
f65 = Foodtype.create!(title: 'Latin American')
f66 = Foodtype.create!(title: 'Live/Raw Food')
f67 = Foodtype.create!(title: 'Malaysian')
f68 = Foodtype.create!(title: 'Mediterranean')
f69 = Foodtype.create!(title: 'Mexican')
f70 = Foodtype.create!(title: 'Middle Eastern')
f71 = Foodtype.create!(title: 'Modern European')
f72 = Foodtype.create!(title: 'Mongolian')
f73 = Foodtype.create!(title: 'Moroccan')
f74 = Foodtype.create!(title: 'Pakistani')
f75 = Foodtype.create!(title: 'Persian/Iranian')
f76 = Foodtype.create!(title: 'Peruvian')
f77 = Foodtype.create!(title: 'Pizza')
f78 = Foodtype.create!(title: 'Polish')
f79 = Foodtype.create!(title: 'Portuguese')
f80 = Foodtype.create!(title: 'Poutineries')
f81 = Foodtype.create!(title: 'Russian')
f82 = Foodtype.create!(title: 'Salad')
f83 = Foodtype.create!(title: 'Sandwiches')
f84 = Foodtype.create!(title: 'Scandinavian')
f85 = Foodtype.create!(title: 'Scottish')
f86 = Foodtype.create!(title: 'Seafood')
f87 = Foodtype.create!(title: 'Singaporean')
f88 = Foodtype.create!(title: 'Slovakian')
f89 = Foodtype.create!(title: 'Soul Food')
f90 = Foodtype.create!(title: 'Soup')
f91 = Foodtype.create!(title: 'Southern')
f92 = Foodtype.create!(title: 'Spanish')
f93 = Foodtype.create!(title: 'Sri Lankan')
f94 = Foodtype.create!(title: 'Steakhouses')
f95 = Foodtype.create!(title: 'Sushi Bars')
f96 = Foodtype.create!(title: 'Taiwanese')
f97 = Foodtype.create!(title: 'Tapas Bars')
f98 = Foodtype.create!(title: 'Tapas/Small Plates')
f99 = Foodtype.create!(title: 'Tex-Mex')
f100 = Foodtype.create!(title: 'Thai')
f101 = Foodtype.create!(title: 'Turkish')
f102 = Foodtype.create!(title: 'Ukrainian')
f103 = Foodtype.create!(title: 'Uzbek')
f104 = Foodtype.create!(title: 'Vegan')
f105 = Foodtype.create!(title: 'Vegetarian')
f106 = Foodtype.create!(title: 'Vietnamese')
f107 = Foodtype.create!(title: 'Groceries')
f108 = Foodtype.create!(title: 'Wine')
f109 = Foodtype.create!(title: 'Beer')
f110 = Foodtype.create!(title: 'Spirits')

p1 = u1.posts.create!(food_id: f107.id, price: 314.25, description: "Groceries Day1")
p2 = u1.posts.create!(food_id: f107.id, price: 314.25, description: "Groceries Day2")
p3 = u1.posts.create!(food_id: f107.id, price: 314.25, description: "Groceries Day3")
p4 = u1.posts.create!(food_id: f107.id, price: 314.25, description: "Groceries Day4")

p5 = u2.posts.create!(food_id: f108.id, price: 20.10, description: "Wine Day1")
p6 = u2.posts.create!(food_id: f108.id, price: 20.10, description: "Wine Day2")
p7 = u2.posts.create!(food_id: f108.id, price: 120.90, description: "Wine Day3")
p8 = u2.posts.create!(food_id: f108.id, price: 20.10, description: "Wine Day4")

p9 = u5.posts.create!(food_id: f77.id, price: 4, description: "Pizza Day1")
p10 = u5.posts.create!(food_id: f69.id, price: 7, description: "Taco Day2")
p11 = u5.posts.create!(food_id: f57.id, price: 11, description: "Dosa Day3")
p12 = u5.posts.create!(food_id: f57.id, price: 20.10, description: "Indian Day4")

c1 = p1.comments.create!(content: "Great deal on day 1!", owner_id: u2.id)
c2 = p1.comments.create!(content: "Nice job!", owner_id: u3.id)
c3 = p1.comments.create!(content: "Wow!", owner_id: u4.id)

l1 = p1.likes.create!(owner_id: u2.id)
l2 = p1.likes.create!(owner_id: u3.id)
l3 = p1.likes.create!(owner_id: u4.id)

u1.friendships.create!(friend_id: u2.id)
u1.friendships.create!(friend_id: u3.id)
u1.friendships.create!(friend_id: u4.id)
u1.friendships.create!(friend_id: u5.id)
u2.friendships.create!(friend_id: u4.id)
u2.friendships.create!(friend_id: u5.id)








#
