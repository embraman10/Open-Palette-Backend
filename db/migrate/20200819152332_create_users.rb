class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
<<<<<<< HEAD:db/migrate/20200819152332_create_users.rb

=======
      
>>>>>>> 4ed6026bb64ead7cb5317e196ef0f88f9deb5212:db/migrate/20200817163511_create_users.rb
      t.timestamps
    end
  end
end
