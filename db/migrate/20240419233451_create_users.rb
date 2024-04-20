class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :password
      t.string :phone
      t.integer :gender
      t.string :email

      t.timestamps
    end
  end
end
