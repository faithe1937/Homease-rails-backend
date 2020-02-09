class ChangeColumnInvoices < ActiveRecord::Migration[6.0]
  def change
    rename_column :invoices, :material_cost, :unitprice
    rename_column :invoices, :labor_name, :description
    rename_column :invoices, :labor_cost, :cost
  end
end
