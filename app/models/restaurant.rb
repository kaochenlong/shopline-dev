class Restaurant
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :description, type: String
  field :rating, type: Integer
  field :address, type: String
  field :phone, type: String

  searchkick
end
