class Plant
  include Mongoid::Document
  field :name, type: String
  embedded_in :flowerpot
  embeds_one :flower
  accepts_nested_attributes_for :flower
end
