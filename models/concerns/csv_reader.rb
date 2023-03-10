class CSVReader
  def self.bills
    CSV.read('./public/bills.csv')[1..]
  end

  def self.legislators
    CSV.read('./public/legislators.csv')[1..]
  end

  def self.vote_results
    CSV.read('./public/vote_results.csv')[1..]
  end

  def self.votes
    CSV.read('./public/votes.csv')[1..]
  end
  
  def self.save_csv_of(file_name, columns_title, objects)
    CSV.open("./public/answers/#{file_name}", 'w') do |csv|
      csv << columns_title

      objects.each do |obj|
        csv << obj.get_csv_attributes
      end
    end
  end
end