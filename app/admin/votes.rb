# app/admin/posts.rb
ActiveAdmin.register Vote do
belongs_to :committee
permit_params :number, :district_id, :committee_id
end