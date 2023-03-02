require_relative './models/concerns/csv_reader.rb'
require_relative './models/legislator.rb'
require_relative './models/bill.rb'

require 'csv'

class LegislatorReader
  LEGISLATOR_SUPPORT_OPPOSE_CSV_COLUMNS = ['id', 'name', 'num_supported_bills', 'num_opposed_bills']
  BILL_CSV_COLUMNS = ['id', 'title', 'supporter_count', 'opposer_count', 'primary_sponsor']

  def scan_legislators_bill_votes
    legislators = CSVReader.legislators.map { |legislator| Legislator.new(legislator[0], legislator[1]) }
    CSVReader.save_csv_of('legislators-support-oppose-count.csv', LEGISLATOR_SUPPORT_OPPOSE_CSV_COLUMNS, legislators)
  end

  def scan_bill_votes
    bills = CSVReader.bills.map { |bill| Bill.new(bill[0], bill[1], bill[2]) }
    CSVReader.save_csv_of('bills.csv', BILL_CSV_COLUMNS, bills)
  end
end

LegislatorReader.new.scan_legislators_bill_votes
LegislatorReader.new.scan_bill_votes