class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :myself
      t.string :partner

      t.timestamps null: false
    end
  end
end
