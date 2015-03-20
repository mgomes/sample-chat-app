class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message
      t.string :poster_name
      t.timestamps
    end
  end
end
