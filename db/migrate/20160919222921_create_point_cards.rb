class CreatePointCards < ActiveRecord::Migration[5.0]
  def change
    create_table :point_cards do |t|
      t.integer :point
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
