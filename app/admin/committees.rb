# app/admin/posts.rb
ActiveAdmin.register Committee do
  belongs_to :voivodship, optional: true
  menu label: "Komitety wyborcze"
  menu priority: 2
  permit_params :name, :logo, voivodship_ids: []

  index as: :grid, columns: 1 do |committee|
  link_to image_tag(committee.logo), admin_committee_path(committee)
end

  form do |f|
  	f.input :name
  	f.input :logo
  	f.input :voivodships, as: :check_boxes
  	f.actions
  end

  sidebar "Info komitetow wyborczych", only: [:show, :edit] do
    ul do
      li link_to "Woj",    admin_committee_voivodships_path(committee)
      li link_to "Glosy",    admin_committee_votes_path(committee)
    end
  end


end