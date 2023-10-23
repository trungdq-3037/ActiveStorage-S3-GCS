class CreateUser < ActiveRecord::Migration[7.1]
  def create
    create_table :users do |t|
      t.string :name
      t.timestamps
    end
  end
end
