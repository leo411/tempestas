require 'net/http'
require 'json'

module Resolvers
  class MeteorologyResolver < BaseResolver
    type Types::ObservationSetType, null: false

    argument :id, ID, required: true
    argument :source, String, required: true

    def resolve(id:, source:)
      logger.debug "Resolving meteorology for id: #{id}, source: #{source}"
      MeteorologyService.retrieve_report(id: id, source: source)
    end
  end
end
