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
end

LegislatorReader.new.scan_legislators_bill_votes