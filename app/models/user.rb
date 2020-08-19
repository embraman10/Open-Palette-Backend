class User < ApplicationRecord
<<<<<<< HEAD
    has_many :user_palettes
=======
    has_many :paletizers
    has_many :font_changer, through: :paletizers
    has_many :background_color_changer, through: :paletizers
>>>>>>> 4ed6026bb64ead7cb5317e196ef0f88f9deb5212
end
