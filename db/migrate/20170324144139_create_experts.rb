class CreateExperts < ActiveRecord::Migration[5.0]
  def change
    create_table :experts do |t|
      t.string :name
      t.string :surname
      t.references :city, foreign_key: true
      t.integer :title

      t.timestamps
    end
  end
end
