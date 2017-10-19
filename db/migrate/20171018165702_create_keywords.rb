class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :query
      t.integer :adword_top
      t.integer :adword_bottom
      t.integer :adword_sum
      t.integer :non_adwords_sum
      t.integer :total_links
      t.string :search_total

      t.timestamps
    end
  end
end
