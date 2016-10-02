class Category < ApplicationRecord
  has_many :spots

  def display_name
    name.capitalize
  end
end
