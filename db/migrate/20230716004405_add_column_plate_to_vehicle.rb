class AddColumnPlateToVehicle < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :plate, :string
  end
end
