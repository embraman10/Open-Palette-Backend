class User < ApplicationRecord
    has_many :paletizers
    has_many :font_changer, through: :paletizers
    has_many :background_color_changer, through: :paletizers
end
