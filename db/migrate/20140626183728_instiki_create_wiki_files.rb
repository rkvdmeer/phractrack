class InstikiCreateWikiFiles < ActiveRecord::Migration
  def change
    create_table (:wiki_files) do |t|
      t.integer  :web_id,      :null => false
      t.string   :file_name,   :null => false
      t.string   :description, :null => false
    
      t.timestamps
    end
  end
end
