class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :search_id

      t.timestamps
    end
  end
end
