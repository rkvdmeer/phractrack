class InstikiCreateTags < ActiveRecord::Migration
  def change
    create_table (:tags) do |t|
      t.string   :tag_name,              :default => "", :null => false
    
      t.timestamps
    end
  end
end
