class CreateColorizers < ActiveRecord::Migration[6.0]
  def change
    create_table :colorizers do |t|
      t.string :background
      t.string :font_style
      t.string :frame_style
      t.string :font_color
      t.string :slug

      t.timestamps
    end
  end
end
