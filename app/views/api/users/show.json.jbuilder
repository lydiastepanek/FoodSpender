json.extract! @user,
              :email,
              :first_name,
              :last_name

json.posts @user.posts do |post|
  json.owner_id post.owner_id
  json.score_id post.score_id
  json.location post.location
  json.food_id post.food_id
  json.price post.price
  json.num_meals post.num_meals
  json.image_url post.image_url
  json.description post.description
end
