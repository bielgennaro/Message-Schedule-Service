class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.integer :msgId, default: SecureRandom.uuid, null: false
      t.text :textMsg, :limit => 100
      t.datetime :createDate, Time.now, null: false
      t.datetime :scheduleDate
      t.string :whatsappNumber, :limit => 11
      t.integer :status
      t.integer :user_id
    end
  end
end
