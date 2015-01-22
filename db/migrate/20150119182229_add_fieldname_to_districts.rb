class AddFieldnameToDistricts < ActiveRecord::Migration
  def change
    add_column :districts, :voters, :integer
  end
end
