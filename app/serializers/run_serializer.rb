class RunSerializer < ActiveModel::Serializer
  has_many :logs
  attributes :id, :category, :total_distance
end
