class Keyword < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      keyword_hash = row.to_hash
      keyword = Keyword.where(id: keyword_hash['id'])

      if keyword.count == 1
        keyword.first.update_attributes(keyword_hash)
      else
        Keyword.create!(keyword_hash)
      end
    end


  end
end
