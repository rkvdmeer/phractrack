class InstikiCreateRevisions < ActiveRecord::Migration
  def change
    create_table (:revisions) do |t|
      
      
      t.datetime :created_at,                                     :null => false
      t.datetime :updated_at,                                     :null => false
      t.datetime :revised_at,                                     :null => false
      t.integer  :page_id,                        :default => 0,  :null => false
      t.text     :content,    :limit => 16777215, :default => "", :null => false
      t.string   :author,     :limit => 60
      t.string   :ip,         :limit => 60
      
      t.timestamp
    end

    add_index :revisions, :author, :name => "index_revisions_on_author"
    add_index :revisions, :created_at, :name => "index_revisions_on_created_at"
    add_index :revisions, :page_id, :name => "index_revisions_on_page_id"
  end
end
