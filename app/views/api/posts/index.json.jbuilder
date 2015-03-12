json.array! @posts do |post|

  json.extract! post,
                :id,
                :owner_id,
                :location,
                :price,
                :num_meals,
                :image_url,
                :description

  json.food_type post.food_type.title
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
  json.is_liked_by_current_user !!(post.likes.find {|like| like.owner_id == current_user.id})


end
