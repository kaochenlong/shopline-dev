class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :sku, type: Integer
  belongs_to :product
end
