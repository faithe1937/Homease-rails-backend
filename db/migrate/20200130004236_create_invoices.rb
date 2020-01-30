class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.references :project, null: false, foreign_key: true
      t.string :material_name
      t.float :material_cost
      t.string :labor_name
      t.float :labor_cost

      t.timestamps
    end
  end
end
