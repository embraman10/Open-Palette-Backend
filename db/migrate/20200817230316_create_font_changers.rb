class CreateFontChangers < ActiveRecord::Migration[6.0]
  def change
    create_table :font_changers do |t|
      t.string :fontFamily

      t.timestamps
    end
  end
end
