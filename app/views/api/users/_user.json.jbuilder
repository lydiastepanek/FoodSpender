json.extract! user,
              :id,
              :email,
              :first_name,
              :last_name

json.picture_url image_url(user.picture.url)

json.posts user.posts do |post|
  json.id post.id
  json.owner_id post.owner_id
  json.author post.author
  json.location post.location
  json.food_id post.food_id
  json.food_type post.food_type
  json.price post.price
  json.num_meals post.num_meals
  json.description post.description
  json.comments post.comments do |comment|
    json.id comment.id
    json.post_id comment.post_id
    json.post comment.post
    json.content comment.content
    json.owner_id comment.owner_id
    json.author comment.author
  end
  json.likes post.likes do |like|
    json.id like.id
    json.post_id like.post_id
    json.post like.post
    json.owner_id like.owner_id
    json.author like.author
  end
end

json.friends user.friends do |friend|
  json.id friend.id
  json.email friend.email
  json.first_name friend.first_name
  json.last_name friend.last_name
end

json.inverse_friends user.inverse_friends do |inverse_friends|
  json.id inverse_friends.id
  json.email inverse_friends.email
  json.first_name inverse_friends.first_name
  json.last_name inverse_friends.last_name
end

json.all_friends user.all_friends do |friend|
  json.id friend.id
  json.email friend.email
  json.first_name friend.first_name
  json.last_name friend.last_name
  json.picture_url image_url(friend.picture.url)
end

json.ratings user.ratings do |rating|
  json.post_id rating.post_id
  json.user_id rating.user_id
  json.score rating.score
end
