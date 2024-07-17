# frozen_string_literal: true

module Types
  class ObservationSetType < Types::BaseObject
    field :notice, [Types::NoticeType]
    field :header, [Types::ObservationHeaderType]
    field :data, [Types::ObservationDatumType]
  end
end
