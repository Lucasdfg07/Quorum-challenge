require_relative './models/concerns/csv_reader.rb'
require_relative './models/legislator.rb'

require 'csv'
require 'byebug'

class LegislatorReader
  LEGISLATOR_SUPPORT_OPPOSE_COLUMNS = ['id', 'name', 'num_supported_bills', 'num_opposed_bills']

  def scan_legislators_bill_votes
    legislators = CSVReader.legislators[1..].map { |legislator| Legislator.new(legislator[0], legislator[1]) }
    CSVReader.save_csv_of('legislators-support-oppose-count.csv', LEGISLATOR_SUPPORT_OPPOSE_COLUMNS, legislators)
  end

  def scan_bill_votes
    bills = CSVReader.bills[1..].map { |legislator| Legislator.new(legislator[0], legislator[1]) }
  end
end

# LegislatorReader.new.csv_legislators_scan

LegislatorReader.new.scan_legislators_bill_votes