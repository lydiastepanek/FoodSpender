json.array! @posts do |post|

  json.extract! post,
                :id,
                :owner_id,
                :location,
                :price,
                :num_meals,
                :image_url,
                :description,
                :food_id,
                :score_id

  json.food_type post.food_type
  json.author_name post.author.first_name

  json.comment_count post.comments.count
  json.comments post.comments do |comment|
    json.id comment.id
    json.post_id comment.post_id
    json.content comment.content
    json.author_name comment.author.first_name + ' ' + comment.author.last_name
    json.author_email comment.author.email
    json.is_written_by_current_user current_user == comment.author
  end

  json.like_count post.likes.count
  json.like_of_current_user (post.likes.find {|like| like.owner_id == current_user.id}).try(:id)
  json.is_liked_by_current_user !!(post.likes.find {|like| like.owner_id == current_user.id})

  json.likes post.likes do |like|
    json.id like.id
    json.post_id like.post_id
    json.post like.post
    json.owner_id like.owner_id
    json.author like.author
  end

end
