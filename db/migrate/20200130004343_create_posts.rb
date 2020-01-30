class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :project, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
