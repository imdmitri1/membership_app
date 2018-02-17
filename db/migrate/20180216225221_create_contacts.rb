class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false, length: 3..64 #, limit: 64 #this validations aren't working!
      t.string :email, null: false, length: 3..64 #, limit: 64 #this validations aren't working!
      t.text   :comments, null: false, length: 3..1024 #, limit: 1024 #this validations aren't working!

      t.timestamps
    end
  end
end
