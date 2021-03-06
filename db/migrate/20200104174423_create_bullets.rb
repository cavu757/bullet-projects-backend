class CreateBullets < ActiveRecord::Migration[5.2]
  def change
    create_table :bullets do |t|
      t.integer :project_id
      t.string :content
      t.string :category
      t.boolean :complete
      t.date :date

      t.timestamps
    end
  end
end
