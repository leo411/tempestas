# frozen_string_literal: true

module Types
  class ObservationSetType < Types::BaseObject
    field :header, [Types::ObservationHeaderType]
    field :data, [Types::ObservationDatumType]
  end
end
