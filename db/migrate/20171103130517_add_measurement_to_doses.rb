class AddMeasurementToDoses < ActiveRecord::Migration[5.0]
  def change
    add_column :doses, :measurement, :string
  end
end
