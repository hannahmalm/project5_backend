class LogSerializer < ActiveModel::Serializer
  attributes :id, :run_id, :distance, :pace, :date, :notes
end
