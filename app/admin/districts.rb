ActiveAdmin.register District do
  belongs_to :voivodship
   permit_params :name, :valid_votes, :voters, :voivodship_id
end