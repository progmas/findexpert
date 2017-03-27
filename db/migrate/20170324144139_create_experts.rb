class CreateExperts < ActiveRecord::Migration[5.0]
  def change
    create_table :experts do |t|
      t.string :name
      t.string :surname
      t.references :city, foreign_key: true
      t.references :university, foreign_key: true
      t.references :expertise, foreign_key: true
      t.references :title, foreign_key: true
      t.timestamps
    end
  end
end
