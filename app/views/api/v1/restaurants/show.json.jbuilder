json.extract! @restaurant, :id, :name, :address, :full_name
json.extract! @restaurant.user, :email

json.comments @restaurant.comments do |comment|
  json.extract! comment, :id, :content

  json.reviewer comment.user, :email
end
