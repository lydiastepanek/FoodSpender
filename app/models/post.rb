class Post < ActiveRecord::Base
  validates :owner_id, :food_id, :price, :description, presence: true
  validates :description, uniqueness: {scope: :owner_id, message: "must be different for every post" }

  belongs_to(
    :author,
    class_name: "User",
    foreign_key: :owner_id,
    primary_key: :id
  )

  belongs_to(
    :food_type,
    class_name: "Foodtype",
    foreign_key: :food_id,
    primary_key: :id
  )

  has_many(
    :comments,
    class_name: "Comment",
    foreign_key: :post_id,
    primary_key: :id
  )

  has_many(
    :likes,
    class_name: "Like",
    foreign_key: :post_id,
    primary_key: :id
  )

end
