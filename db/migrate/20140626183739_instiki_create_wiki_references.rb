class InstikiCreateWikiReferences < ActiveRecord::Migration
  def change
    create_table (:wiki_references) do |t|
      t.integer  :page_id,                      :default => 0,  :null => false
      t.string   :referenced_name,              :default => "", :null => false
      t.string   :link_type,       :limit => 1, :default => "", :null => false
    
      t.timestamps
    end
  
  
    add_index :wiki_references, :page_id, :name => "index_wiki_references_on_page_id"
    add_index :wiki_references, :referenced_name, :name => "index_wiki_references_on_referenced_name"
  end

end
