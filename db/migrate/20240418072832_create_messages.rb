class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.integer :msgId
      t.text :textMsg :limit => 200
      t.datetime :createDate :format => 'dd-MM-yyy HH:MM:SS'
      t.datetime :scheduleDate :format => 'dd-MM-yyy HH:MM:SS'
      t.string :whatsappNumber
      t.integer :status
    end
  end
end
