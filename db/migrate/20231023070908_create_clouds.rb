class CreateClouds < ActiveRecord::Migration[7.1]
  def change
    create_table :clouds do |t|
      t.string :name
      t.timestamps
    end
  end
end
