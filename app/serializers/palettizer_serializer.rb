class PalettizerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :font_changer
  has_one :background_color_changer
end
