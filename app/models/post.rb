class Post < ActiveRecord::Base
  validates :owner_id, :score_id, :food_id, :price, presence: true

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :owner_id,
    primary_key: :id
  )



end
