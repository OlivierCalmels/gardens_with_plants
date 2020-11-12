class PlantTag < ApplicationRecord
  belongs_to :tag
  belongs_to :plant

  validates :tag, uniqueness: { scope: :plant, message: "can't be associated twice to the same plant" }
end
