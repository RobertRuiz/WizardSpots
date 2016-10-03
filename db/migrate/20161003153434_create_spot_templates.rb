class CreateSpotTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :spot_templates do |t|
      t.string :name
      t.string :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
