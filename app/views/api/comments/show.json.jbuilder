json.id @comment.id
json.post_id @comment.post_id
json.content @comment.content
json.author_name @comment.author.first_name + ' ' + @comment.author.last_name
json.author_email @comment.author.email
json.is_written_by_current_user current_user == @comment.author
