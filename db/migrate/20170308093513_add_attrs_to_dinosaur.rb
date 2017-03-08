class AddAttrsToDinosaur < ActiveRecord::Migration[5.0]
  def change
    add_column :dinosaurs, :name, :string, default: 'Harry'
    add_column :dinosaurs, :age, :string
    add_column :dinosaurs, :museum_number, :integer, null: false
  end
end
