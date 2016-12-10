class CreateTabs < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.belongs_to :user
      t.string :long_url
      t.string :short_url
      t.integer :click_count, :default => 0
      t.integer :url_user, :default => NULL
      t.timestamps
    end
    
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.timestamps
    end

  end
end
