class CreateTutorials < ActiveRecord::Migration[7.0]
  def change
    create_table :tutorials do |t|
      t.string :name
      t.string :description
      t.string :url
      t.belongs_to :trainer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
