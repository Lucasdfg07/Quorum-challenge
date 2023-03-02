class CSVReader
  def self.bills
    CSV.read('./public/bills.csv')
  end

  def self.legislators
    CSV.read('./public/legislators.csv')
  end

  def self.vote_results
    CSV.read('./public/vote_results.csv')
  end

  def self.votes
    CSV.read('./public/votes.csv')
  end
end