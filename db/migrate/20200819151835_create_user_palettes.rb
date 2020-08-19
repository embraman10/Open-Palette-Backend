class CreateUserPalettes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_palettes do |t|
      t.string :background_color
      t.string :font_color
      t.string :font_family
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
