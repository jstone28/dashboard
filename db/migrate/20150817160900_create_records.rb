class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :project_name
      t.integer :project_code
      t.boolean :status
      t.string :comments
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
