class RenameTable < ActiveRecord::Migration
  def change
  	rename_table :committee_voivodship, :committees_voivodships
  end
end
