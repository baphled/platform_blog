class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :article, index:true
      t.string :title
      t.string :body
    end
  end
end
