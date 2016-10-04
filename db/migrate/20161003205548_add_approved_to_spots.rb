class AddApprovedToSpots < ActiveRecord::Migration[5.0]
  def change
    add_column :spots, :approved, :boolean, default: false
  end
end
