# app/admin/posts.rb
ActiveAdmin.register Voivodship do
belongs_to :committee, optional: true

menu label: "Wojewodztwa"
menu priority: 1
permit_params :name, :councilman

index do
  selectable_column
  column :name
  column :councilman
  actions do |voivodship |
    a link_to "View district", admin_voivodship_districts_path(voivodship)
    a link_to "View Committees", admin_voivodship_committees_path(voivodship)
  end
end


sidebar "Info Wojewodztwa", only: [:show, :edit] do
  ul do
    li link_to "Districts",    admin_voivodship_districts_path(voivodship)
    li link_to "Committees", admin_voivodship_committees_path(voivodship)
  end
end

  batch_action :destroy, confirm: "Are you sure??" do |ids|
    # ...
  end

end