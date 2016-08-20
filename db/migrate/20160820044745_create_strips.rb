class CreateStrips < ActiveRecord::Migration[5.0]
  def change
    create_table :strips do |t|
      t.string :title
      t.text :body
      t.boolean :published

      t.timestamps
    end
  end
end
