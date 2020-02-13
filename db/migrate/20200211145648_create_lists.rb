class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :catergory
      t.text :task
      t.boolean :active 
      t.belongs_to :projects, null: false, foreign_key: true

      t.timestamps
    end
  end
end
