json.extract! @post,
              :id,
              :owner_id,
              :author,
              :location,
              :food_id,
              :food_type,
              :price,
              :num_meals,
              :image_url,
              :description

json.comments @post.comments do |comment|
  json.id comment.id
  json.post_id comment.post_id
  json.post comment.post
  json.content comment.content
  json.owner_id comment.owner_id
  json.author comment.author
end

json.likes @post.likes do |like|
  json.id like.id
  json.post_id like.post_id
  json.post like.post
  json.owner_id like.owner_id
  json.author like.author
end
