class FoundDogDelegate < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  belongs_to :found_dog, inverse_of: :delegate
  
  has_and_belongs_to_many :colors
  belongs_to :breed
  belongs_to :weight
end
