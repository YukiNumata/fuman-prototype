class CreateDislikes < ActiveRecord::Migration[5.2]
  def change
    create_table :dislikes do |t|
      t.integer :user_id, index:true
      t.integer :fuman_id, index:true
      t.timestamps
    end
  end
end
