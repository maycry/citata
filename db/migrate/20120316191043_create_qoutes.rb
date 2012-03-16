class CreateQoutes < ActiveRecord::Migration
  def change
    create_table :qoutes do |t|
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
