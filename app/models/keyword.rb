class Keyword < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      keyword_hash = row.to_hash
      keyword = Keyword.where(id: keyword_hash['id'])

      # Scrape Query
      html = Nokogiri::HTML(open("https://www.google.com/search?q=#{CGI.escape(keyword_hash['query'])}"))
      adword_top = html.css('.ads-ad').size
      adword_bottom = 0
      adword_sum = adword_top + adword_bottom
      url = html.css('cite')
      # @url_adword_top = url.take(adword_sum)
      non_adword_sum = url.size - adword_sum
      # @url_non_adword = url.drop(adword_sum)
      total_links = adword_sum + non_adword_sum
      search_total = html.css('div#resultStats').to_s.scan(/\d/).join('')

      if keyword.count == 1
        keyword.first.update_attributes(keyword_hash)
      else
        keyword_hash['adword_top'] = adword_top
        keyword_hash['adword_bottom'] = adword_bottom
        keyword_hash['adword_sum'] = adword_sum
        keyword_hash['non_adwords_sum'] = non_adword_sum
        keyword_hash['total_links'] = total_links
        keyword_hash['search_total'] = search_total
        Keyword.create! keyword_hash
      end
    end
  end
end
