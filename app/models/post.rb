class Post < ActiveRecord::Base
  validates :owner_id, :food_id, :food_type, :price, :description, presence: true
  validates :description, uniqueness: {scope: :owner_id, message: "must be different for every post" }

  has_attached_file :picture, default_url: "food.jpeg", :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  include PgSearch
  multisearchable against: :description

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

  has_many(
    :ratings,
    class_name: "Rating",
    foreign_key: :post_id,
    primary_key: :id
  )

end
