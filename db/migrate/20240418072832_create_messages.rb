class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.integer :msgId
      t.text :textMsg
      t.datetime :createDate
      t.datetime :scheduleDate
      t.string :whatsappNumber
      
    end
  end
end
