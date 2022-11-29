class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients
  
  # belongs_to :restaurant
end
