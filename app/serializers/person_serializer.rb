class PersonSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :phone_number
end
