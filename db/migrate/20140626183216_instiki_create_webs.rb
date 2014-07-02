class InstikiCreateWebs < ActiveRecord::Migration
  def change
    create_table (:webs) do |t|
                                          
      t.string   :name,             :limit => 60,  :default => "",            :null => false
      t.string   :address,          :limit => 60,  :default => "",            :null => false
      t.text     :additional_style, :limit => 255
      t.integer  :allow_uploads,                   :default => 1
      t.integer  :published,                       :default => 0
      t.integer  :count_pages,                     :default => 0
      t.string   :markup,           :limit => 50,  :default => "markdownMML"
      t.string   :color,            :limit => 6,   :default => "008B26"
      t.integer  :max_upload_size,                 :default => 100
      t.integer  :safe_mode,                       :default => 0
      t.integer  :brackets_only,                   :default => 0
      
      t.timestamps
    end
  end
end
