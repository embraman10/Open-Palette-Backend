class CreateColorizers < ActiveRecord::Migration[6.0]
  def change
    create_table :colorizers do |t|
      t.string :font_style
      t.timestamps
    end
  end
end
