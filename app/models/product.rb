class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :description, type: String
  field :price, type: Integer

  has_many :items
end
