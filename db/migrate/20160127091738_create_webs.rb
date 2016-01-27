class CreateWebs < ActiveRecord::Migration
  def change
    create_table :webs do |t|
      t.string  :title
      t.string  :cover
      t.string  :url
      t.timestamps null: false
    end
  end
end
