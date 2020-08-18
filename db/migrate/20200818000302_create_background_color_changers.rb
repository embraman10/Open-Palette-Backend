class CreateBackgroundColorChangers < ActiveRecord::Migration[6.0]
  def change
    create_table :background_color_changers do |t|
      t.string :colorHex

      t.timestamps
    end
  end
end
