class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :number
      t.references :district, index: true
      t.references :committee, index: true

      t.timestamps
    end
  end
end
