class AddUniqueIndexToApplicantsOnFirstNameAndLastName < ActiveRecord::Migration[7.1]
  def change
    add_index :applicants, %i[first_name last_name], unique: true
  end
end
