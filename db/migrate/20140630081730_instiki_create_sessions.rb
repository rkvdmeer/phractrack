class InstikiCreateSessions < ActiveRecord::Migration
  def change
    create_table (:sessions) do  |t|
      t.string   :session_id
      t.text     :data
      t.datetime :updated_at
      
      t.timestamps
    end

    add_index :sessions, :session_id, :name => "index_sessions_on_session_id"
  end
end
