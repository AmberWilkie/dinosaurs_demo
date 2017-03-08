class CreateBones < ActiveRecord::Migration[5.0]
  def change
    create_table :bones do |t|
      t.string :name
      t.belongs_to :dinosaur, foreign_key: true

      t.timestamps
    end
  end
end
