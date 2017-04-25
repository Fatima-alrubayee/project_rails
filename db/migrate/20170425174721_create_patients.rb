class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.boolean :state
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
