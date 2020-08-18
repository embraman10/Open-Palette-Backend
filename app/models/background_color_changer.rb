class BackgroundColorChanger < ApplicationRecord
    has_many :paletizers
    has_many :font_changer, through: :paletizers
    has_many :users, through: :paletizers
end
