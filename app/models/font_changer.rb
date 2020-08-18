class FontChanger < ApplicationRecord
    has_many :paletizers
    has_many :background_color_changer, through: :paletizers
    has_many :users, through: :paletizers
end
