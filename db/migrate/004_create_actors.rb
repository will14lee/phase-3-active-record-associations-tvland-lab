class CreateActors < ActiveRecord::Migration[6.1]
  def change
    # Your code here
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :show
    end
  end
end
