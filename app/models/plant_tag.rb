class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  validates :tag_id, uniqueness: { scope: :plant_id, message: ' has been added.' }
end
