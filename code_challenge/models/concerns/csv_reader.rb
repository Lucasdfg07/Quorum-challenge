class CSVReader
  def self.bills
    CSV.read('bills.csv')
  end

  def self.legistators
    CSV.read('legistators.csv')
  end

  def self.vote_results
    CSV.read('vote_results.csv')
  end

  def self.votes
    CSV.read('votes.csv')
  end
end