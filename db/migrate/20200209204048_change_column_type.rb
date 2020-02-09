class ChangeColumnType < ActiveRecord::Migration[6.0]
  def up
    change_column :invoices, :qty, :integer, using: 'qty::integer'
  end
  def down
    change_column :invoices, :qty, :string
  end
end
