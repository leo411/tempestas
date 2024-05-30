module MeteorologyService
  BOM_BASE_URL = 'https://bom.gov.au/fwo'.freeze

  # General request to retrieve a meteorology report for id, given a source.
  # 
  # @return [MeteorologyService::Report]
  def retrieve_report(id:, source:)
    case source
    when 'bom'
      retrieve_au_bom_report(id: id)
    else
      return nil
    end
  end

  # BOM expects the id provided to be a compound key containing bot hte WMO and BOM id.
  # To make up the URL <http://www.bom.gov.au/fwo/IDN60901/IDN60901.94768.json> the following is needed:
  # * BOM ID (IDN60901)
  # * WMO ID (94768)
  # These are to be provided in a period concatenated form.
  # 
  # @param [String] id
  # @return [MeteorologicalService::Report]
  def retrieve_au_bom_report(id:)
    (bom_id, wmo_id) = id.split('.')
    
    uri = URI("#{BOM_BASE_URL}/#{bom_id}/#{bom_id}.#{wmo_id}.json")
    response = Net::HTTP.get(uri)

    # Do stuff here *or* in a subclass dedicated to transforming BOM JSON to MeteorologyService::Report.
    puts JSON.parse(response)

    response
  end
end
