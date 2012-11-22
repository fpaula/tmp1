class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :message
      t.boolean :opt_in

      t.timestamps
    end
  end
end
