class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :comments #t.text means multiple strings
      t.timestamps
    end
  end
end
