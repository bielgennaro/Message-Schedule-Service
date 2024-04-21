class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.text :textMsg, :limit => 100, null: false
      t.datetime :createDate, default: Time.now
      t.datetime :scheduleDate, null: false
      t.string :whatsappNumber, :limit => 11, null: false
      t.integer :status
      t.integer :user_id
    end
  end
end
