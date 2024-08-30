class AddCultureTypeToCompanies < ActiveRecord::Migration[7.1]
  def change
    add_reference :companies, :culture_type, null: false, foreign_key: true
  end
end
