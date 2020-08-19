class UserPaletteSerializer < ActiveModel::Serializer
  attributes :id, :background_color, :font_color, :font_family
  has_one :user
end
