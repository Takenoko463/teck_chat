class AddUsernameToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :user_name, :string
  end
end
