class InstikiCreatePageTags < ActiveRecord::Migration
  def change
    create_table (:page_tags) do |t|
      t.integer  :page_id,               :default => 0,  :null => false
      t.integer  :tag_id,              :default => "", :null => false
  
      t.timestamps
    end
  end
end
