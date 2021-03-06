json.extract! post,
              :id,
              :owner_id,
              :location,
              :price,
              :num_meals,
              :description,
              :food_id,
              :score_id,
              :created_at

json.picture_url image_url(post.picture.url)

json.food_type post.food_type
json.author_name post.author.first_name + ' ' + post.author.last_name
json.author_picture_url image_url(post.author.picture.url)

json.comment_count post.comments.count
json.comments post.comments do |comment|
  json.id comment.id
  json.post_id comment.post_id
  json.content comment.content
  json.author_name comment.author.first_name + ' ' + comment.author.last_name
  json.author_email comment.author.email
  json.is_written_by_current_user current_user == comment.author
end

json.like_of_current_user (post.likes.find {|like| like.owner_id == current_user.id}).try(:id)
json.is_liked_by_current_user !!(post.likes.find {|like| like.owner_id == current_user.id})

json.likes post.likes do |like|
  json.id like.id
  json.post_id like.post_id
  json.post like.post
  json.owner_id like.owner_id
  json.author like.author
end

json.ratings post.ratings do |rating|
  json.post_id rating.post_id
  json.user_id rating.user_id
  json.score rating.score
  json.post rating.post
  json.user_name rating.user.first_name + ' ' + rating.user.last_name
end

# json.rating (Rating.where(post_id: post.id, user_id: current_user.id).first).try(:score)
json.rating (post.ratings.find {|rating| rating.user_id == current_user.id}).try(:score)

# if @rating
#   json.extract! @rating,
#           :post_id,
#           :user_id,
#           :score
# end
