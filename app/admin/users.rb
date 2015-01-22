# app/admin/posts.rb
ActiveAdmin.register User do
  permit_params :name, :surname, :role, district_id: [] 
    form do |f|
  	f.input :name
  	f.input :surname
  	f.input :role
  	f.input :districts, as: :check_boxes
  	f.actions
  end
end