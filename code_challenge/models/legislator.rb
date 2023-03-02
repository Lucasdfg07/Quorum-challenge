require_relative './vote_result.rb'

class Legislator
  attr_accessor :id, :name
  attr_reader :supported_bills

  def initialize(id, name)
    @id = id
    @name = name
  end

  def supported_bills
    check_number_of_votes_as(1)
  end

  def num_opposed_bills
    check_number_of_votes_as(2)
  end

  def vote_results
    all_vote_results.map { |vote| vote if vote.legislator_id == id }.compact
  end

  private

  def check_number_of_votes_as(legislator_position)
    vote_results.map { |vote| vote if vote.vote_type == legislator_position.to_s }.compact.count
  end

  def all_vote_results
    CSVReader.vote_results[1..].map { |vote_result| VoteResult.new(vote_result[0], vote_result[1], vote_result[2], vote_result[3]) }
  end
end