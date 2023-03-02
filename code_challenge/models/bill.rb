class Bill
  attr_accessor :id, :title, :primary_sponsor

  def initialize(id, title, primary_sponsor)
    @id = id
    @title = title
    @primary_sponsor = primary_sponsor
  end
end