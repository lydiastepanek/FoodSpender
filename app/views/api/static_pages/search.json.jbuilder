json.total_count @search_results.total_count

json.results do
  json.array! @search_results do |search_result|
    if search_result.searchable_type == "Post"
      json.partial! "api/posts/post", post: search_result.searchable
      json._type "Post"
    elsif search_result.searchable_type == "User"
      json.partial! "api/users/user", user: search_result.searchable
      json._type "User"
    elsif search_result.searchable_type == "Comment"
      json.partial! "api/comments/comment", comment: search_result.searchable
      json._type "Comment"
    end
  end
end
