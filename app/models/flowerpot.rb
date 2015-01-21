class Flowerpot
  include Mongoid::Document
  field :material, type: String
  field :cost, type: Float
  embeds_one :plant
  accepts_nested_attributes_for :plant
end
