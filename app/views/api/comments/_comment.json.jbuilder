json.extract! comment,
              :id,
              :post_id,
              :content,
              :owner_id

json.post_owner_id comment.post.owner_id

json.author_name comment.author.first_name + ' ' + comment.author.last_name
