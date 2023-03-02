class Bill
  attr_accessor :id, :title, :sponsor_id

  def initialize(id, title, sponsor_id)
    @id = id
    @title = title
    @primary_sponsor = sponsor_id
  end
end