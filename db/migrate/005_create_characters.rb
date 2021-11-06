class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    # Your code here
    create_table :characters do |t|
      t.string :name
      # t.integer :actor_id
      # t.integer :show_id
      t.belongs_to :actor
      t.belongs_to :show
    end
  end
end
