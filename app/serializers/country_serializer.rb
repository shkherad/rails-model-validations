class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :population, :language
end
