require_relative './vote_result.rb'

class Legislator
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def get_csv_attributes
    [self.id, self.name, num_supported_bills, num_opposed_bills]
  end

  private

  def num_supported_bills
    check_number_of_votes_as(1)
  end

  def num_opposed_bills
    check_number_of_votes_as(2)
  end

  def vote_results
    all_vote_results.map { |vote| vote if vote.legislator_id == id }.compact
  end

  def check_number_of_votes_as(legislator_position)
    vote_results.map { |vote| vote if vote.vote_type == legislator_position.to_s }.compact.count
  end

  def all_vote_results
    CSVReader.vote_results.map { |vote_result| VoteResult.new(vote_result[0], vote_result[1], vote_result[2], vote_result[3]) }
  end
end