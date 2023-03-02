require_relative './vote.rb'
require_relative './vote_result.rb'

class Bill
  attr_accessor :id, :title, :sponsor_id

  def initialize(id, title, sponsor_id)
    @id = id
    @title = title
    @sponsor_id = sponsor_id
  end

  def get_csv_attributes
    [self.id, self.title, supporter_count, opposer_count, primary_sponsor]
  end

  private

  def supporter_count
    get_bill_vote_results.map { |vote_result| vote_result.vote_type == 1.to_s }.count
  end

  def opposer_count
    get_bill_vote_results.map { |vote_result| vote_result.vote_type == 2.to_s }.count
  end

  def primary_sponsor
    sponsor = CSVReader.legislators.map { |legislator| legislator[1] if legislator[0] == self.sponsor_id }.compact.first
    sponsor || 'Unknown'
  end

  def get_bill_vote_results
    CSVReader.vote_results.map { |vote_result| VoteResult.new(vote_result[0], 
                                                              vote_result[1], 
                                                              vote_result[2], 
                                                              vote_result[3]) if vote_result[2] == get_vote.id }.compact
  end

  def get_vote
    CSVReader.votes.map { |vote| Vote.new(vote[0], vote[1]) if vote[1] == self.id }.compact.first
  end
end