class Palettizer < ApplicationRecord
  belongs_to :user
  belongs_to :font_changer
  belongs_to :background_color_changer
end
