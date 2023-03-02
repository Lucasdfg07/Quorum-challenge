class VoteResult
  attr_accessor :id, :legislator_id, :vote_id, :vote_type

  def initialize(id, legislator_id, vote_id, vote_type)
    @id = id
    @legislator_id = legislator_id
    @vote_id = vote_id
    @vote_type = vote_type
  end
end