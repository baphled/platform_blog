class CreateArticle < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :body

      t.timestamps
    end
  end

  def down
    drop_table :articles
  end
end
