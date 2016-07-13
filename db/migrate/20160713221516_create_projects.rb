class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.date :deadline
      t.string :client
      t.string :general_type
      t.string :specific_type
      t.string :contact_name
      t.string :contact_email
      t.text :description

      t.timestamps null: false
    end
  end
end
