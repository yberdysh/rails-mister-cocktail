class AddAmounttoDoses < ActiveRecord::Migration[5.0]
  def change
    add_column :doses, :amount, :string
  end
end
