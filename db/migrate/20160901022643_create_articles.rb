class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
        t.string :title
        t.text :body

      # creates 2 columns in table: created at, and updated at
      t.timestamps
    end
  end
end
