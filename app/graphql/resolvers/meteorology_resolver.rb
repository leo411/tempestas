require 'net/http'
require 'json'

module Resolvers
  class MeteorologyResolver < BaseResolver
    type Types::ObservationSetType, null: false

    argument :id, ID, required: true
    argument :source, String, required: true

    def resolve(id:, source:)
      report = MeteorologyService.retrieve_report(id: id, source: source)
      parsed_response = JSON.parse(report)
      puts "result: #{parsed_response}"

      Types::ObservationSetType.new(
        notice: parsed_response["observations"]["notice"].map { |notice| Types::NoticeType.new(notice) },
        header: parsed_response["observations"]["header"].map { |header| Types::ObservationHeaderType.new(header) },
        data: parsed_response["observations"]["data"].map { |datum| Types::ObservationDatumType.new(datum) }
      )
    end
  end
end
