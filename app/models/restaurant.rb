class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :comments



  def full_name
    "#{name} (#{address})"
  end

end
