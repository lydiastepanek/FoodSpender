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

u0 = User.create!(email: "guest.user@example.com", password: "guestguest", first_name: "Guest", last_name: "User", picture: File.open("#{Rails.root}/app/assets/images/user_picture.png"))
u1 = User.create!(email: "valerie.hansen@yale.edu", password: "valerievalerie", first_name: "Valerie", last_name: "Hansen", picture: File.open("#{Rails.root}/app/assets/images/valerie.jpg"))
u2 = User.create!(email: "james.b.stepanek@gmail.com", password: "jamesjames", first_name: "James", last_name: "Stepanek", picture: File.open("#{Rails.root}/app/assets/images/james.jpeg"))
u3 = User.create!(email: "bret.stepanek@gmail.com", password: "bretbret", first_name: "Bret", last_name: "Stepanek", picture: File.open("#{Rails.root}/app/assets/images/bret.jpeg"))
u4 = User.create!(email: "claire.stepanek@gmail.com", password: "claireclaire", first_name: "Claire", last_name: "Stepanek", picture: File.open("#{Rails.root}/app/assets/images/claire.jpg"))
u5 = User.create!(email: "lydia.stepanek@gmail.com", password: "lydialydia", first_name: "Lydia", last_name: "Stepanek", picture: File.open("#{Rails.root}/app/assets/images/lydia.jpg"))

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

p1 = u1.posts.create!(food_id: f107.id, location: 'Big Y', score_id: 4, price: 314.25, num_meals: 15, description: "Groceries Monday")
p2 = u1.posts.create!(food_id: f107.id, location: 'Big Y', score_id: 4, price: 314.25, num_meals: 16, description: "Groceries Tuesday")
p3 = u1.posts.create!(food_id: f107.id, location: 'Big Y', score_id: 4, price: 314.25, num_meals: 17, description: "Groceries Friday")
p4 = u1.posts.create!(food_id: f107.id, location: 'Big Y', score_id: 4, price: 314.25, num_meals: 18, description: "Groceries Sunday")

p5 = u2.posts.create!(food_id: f108.id, location: 'Wine Store', score_id: 4, price: 20.10, num_meals: 1, description: "Wine for St. Patty's", picture: File.open("#{Rails.root}/app/assets/images/wine1.gif"))
p6 = u2.posts.create!(food_id: f108.id, location: 'Wine Store', score_id: 4, price: 20.10, num_meals: 1, description: "Wine because UGH", picture: File.open("#{Rails.root}/app/assets/images/wine2.jpg"))
p7 = u2.posts.create!(food_id: f108.id, location: 'Wine Store', score_id: 4, price: 120.90, num_meals: 1, description: "Wine cooler Wednesday", picture: File.open("#{Rails.root}/app/assets/images/wine3.jpg"))
p8 = u2.posts.create!(food_id: f108.id, location: 'Wine Store', score_id: 4, price: 20.10, num_meals: 1, description: "Wine Day4", picture: File.open("#{Rails.root}/app/assets/images/wine4.png"))

p9 = u5.posts.create!(food_id: f77.id, location: "Carmine's", score_id: 4, price: 4, num_meals: 1, description: "Pizza for breakfast", picture: File.open("#{Rails.root}/app/assets/images/pizza.JPG"))
p10 = u5.posts.create!(food_id: f69.id, location: 'Taco Bell', score_id: 4, price: 7, num_meals: 1, description: "Tacos Mmmmmmm", picture: File.open("#{Rails.root}/app/assets/images/taco.jpeg"))
p11 = u5.posts.create!(food_id: f57.id, location: 'Hampton Dosa', score_id: 4, price: 11, num_meals: 1, description: "Dosa Today!", picture: File.open("#{Rails.root}/app/assets/images/dosa.jpg"))
p12 = u5.posts.create!(food_id: f57.id, location: 'Indian Palace', score_id: 4, price: 20.10, num_meals: 1, description: "Indian Lunch", picture: File.open("#{Rails.root}/app/assets/images/indian.jpeg"))

p13 = u3.posts.create!(food_id: f97.id, location: 'Barcelona', score_id: 5, price: 60.10, num_meals: 1, description: "Top-notch Tapas", picture: File.open("#{Rails.root}/app/assets/images/tapas.jpg"))

p14 = u4.posts.create!(food_id: f90.id, location: 'Soup Heaven', score_id: 1, price: 2, num_meals: 2, description: "Soup that is soupy", picture: File.open("#{Rails.root}/app/assets/images/soup.jpg"))

c1 = p1.comments.create!(content: "Great deal!", owner_id: u2.id)
c2 = p1.comments.create!(content: "Nice job!", owner_id: u3.id)
c3 = p1.comments.create!(content: "Wow!", owner_id: u4.id)
c4 = p1.comments.create!(content: "Wow that is a great deal!", owner_id: u5.id)

c5 = p2.comments.create!(content: "Great deal!", owner_id: u2.id)
c6 = p2.comments.create!(content: "Nice job!", owner_id: u3.id)
c7 = p2.comments.create!(content: "Wow!", owner_id: u4.id)
c8 = p2.comments.create!(content: "Wow that is a great deal!", owner_id: u5.id)

c9 = p3.comments.create!(content: "Ambitious!", owner_id: u2.id)
c10 = p3.comments.create!(content: "Inspiring!", owner_id: u3.id)
c11 = p3.comments.create!(content: "Compelling!", owner_id: u4.id)
c12 = p3.comments.create!(content: "Marvelous!", owner_id: u5.id)

c13 = p4.comments.create!(content: "Outstanding!", owner_id: u2.id)
c14 = p4.comments.create!(content: "Dedicated!", owner_id: u3.id)
c15 = p4.comments.create!(content: "Gutsy!", owner_id: u4.id)
c16 = p4.comments.create!(content: "Pretty good!", owner_id: u5.id)

c17 = p5.comments.create!(content: "Notable!", owner_id: u2.id)
c18 = p5.comments.create!(content: "Enterprising!", owner_id: u3.id)
c19 = p5.comments.create!(content: "Phenomenal!", owner_id: u4.id)
c20 = p5.comments.create!(content: "Compelling", owner_id: u5.id)

c21 = p6.comments.create!(content: "Grand", owner_id: u2.id)
c22 = p6.comments.create!(content: "No this place is top-notch!", owner_id: u3.id)
c23 = p6.comments.create!(content: "Wow you love this wine store!!", owner_id: u4.id)

l1 = p1.likes.create!(owner_id: u2.id)
l2 = p1.likes.create!(owner_id: u3.id)
l3 = p1.likes.create!(owner_id: u4.id)

l4 = p5.likes.create!(owner_id: u2.id)
l5 = p5.likes.create!(owner_id: u3.id)
l6 = p5.likes.create!(owner_id: u4.id)

l7 = p9.likes.create!(owner_id: u2.id)
l8 = p9.likes.create!(owner_id: u3.id)
l9 = p9.likes.create!(owner_id: u4.id)

l10 = p6.likes.create!(owner_id: u2.id)
l11 = p6.likes.create!(owner_id: u3.id)
l12 = p6.likes.create!(owner_id: u4.id)

l13 = p2.likes.create!(owner_id: u2.id)
l14 = p2.likes.create!(owner_id: u3.id)

u1.friendships.create!(friend_id: u2.id)
u1.friendships.create!(friend_id: u3.id)
u1.friendships.create!(friend_id: u4.id)
u1.friendships.create!(friend_id: u5.id)
u2.friendships.create!(friend_id: u4.id)
u2.friendships.create!(friend_id: u5.id)






#
