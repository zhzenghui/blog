class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :content
      t.string :pwd
      t.string :role

      t.timestamps
    end
  end
end
