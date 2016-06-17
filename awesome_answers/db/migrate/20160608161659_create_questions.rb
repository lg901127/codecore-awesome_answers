#migrations are used to change the streucture of the database.
#for example:
#--creating tables; dropping tables; adding columms; removing columns; adding indexes; removing indexes
class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
