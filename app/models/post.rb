class Post < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    validates :image, content_type: ["image/png", "image/jpeg", "image/jpg"]
    # validates :lat, :lng, :condition, :description, :title, presence: true
end
