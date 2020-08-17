class CreateRandomizers < ActiveRecord::Migration[6.0]
  def change
    create_table :randomizers do |t|
      t.string :background
      t.string :font
      t.string :frame_style
      t.string :font_color

      t.timestamps
    end
  end
end
