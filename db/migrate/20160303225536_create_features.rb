class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.references :project, index: true
      t.string :title
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :features, :projects
  end
end
