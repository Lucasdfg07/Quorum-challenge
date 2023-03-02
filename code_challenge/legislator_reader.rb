require_relative './models/concerns/csv_reader.rb'
require_relative './models/legislator.rb'

require 'csv'
require 'byebug'

class LegislatorReader
  def scan_legislators_bill_votes
    # CSV.open('legislators-support-oppose-count.csv', 'w') do |csv|
    #   csv << ['id', 'name', 'num_supported_bills', 'num_opposed_bills']
    #   csv << ['another', 'row']
    # end
  end

  def legislators
    CSVReader.legislators[1..].map do |legislator| 
      legislator = Legislator.new(legislator[0], legislator[1])
      byebug
    end
  end
end

LegislatorReader.new.legislators

# LegislatorReader.new.scan_legislators_bill_votes