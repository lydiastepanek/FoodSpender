class Comment < ActiveRecord::Base
  validates :post_id, :content, :owner_id, presence: true

  include PgSearch
  multisearchable against: :content

  belongs_to(
    :post,
    class_name: "Post",
    foreign_key: :post_id,
    primary_key: :id
  )

  belongs_to(
    :author,
    class_name: "User",
    foreign_key: :owner_id,
    primary_key: :id
  )

end
