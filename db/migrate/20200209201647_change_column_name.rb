class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :invoices, :material_name, :qty
  end
end
