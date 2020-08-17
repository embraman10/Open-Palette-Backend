class ColorizerSerializer < ActiveModel::Serializer
  attributes :id, :background, :font, :frame_style, :font_color, :slug
end
