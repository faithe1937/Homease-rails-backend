class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :homeowner, references: :users, null: false, foreign_key: { to_table: :users}
      t.references :contractor, references: :users, null: false, foreign_key: { to_table: :users}
      t.string :name
      t.timestamps
    end
  end
end
