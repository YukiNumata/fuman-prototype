class CreateFumen < ActiveRecord::Migration[5.2]
  def change
    create_table :fumen do |t|
      t.string :content, null:false
      t.integer :like, dafult:0
      t.integer :dislike, default:0
      t.string :name, default:"annonymous"
      t.timestamps
    end
  end
end
