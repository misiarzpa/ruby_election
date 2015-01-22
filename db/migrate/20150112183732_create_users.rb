class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :role
      t.references :district, index: true

      t.timestamps
    end
  end
end
