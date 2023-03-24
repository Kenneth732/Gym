class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :tutorial, null: false, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
