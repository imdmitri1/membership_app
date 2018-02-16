class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false, limit: 64
      t.string :email, null: false, limit: 64
      t.text   :comments, null: false, limit: 1024

      t.timestamps
    end
  end
end
