class Flower
  include Mongoid::Document
  field :color, type: String
  field :smell, type: String
  embedded_in :plant
end
