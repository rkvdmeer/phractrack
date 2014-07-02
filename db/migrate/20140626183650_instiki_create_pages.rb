class InstikiCreatePages < ActiveRecord::Migration
  def change
    create_table (:pages) do |t|
      
      t.integer  :web_id,                   :default => 0, :null => false
      t.string   :locked_by,  :limit => 60
      t.string   :name
      t.datetime :locked_at
    
      t.timestamps
    end
  end
end
