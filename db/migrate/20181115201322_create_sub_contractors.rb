class CreateSubContractors < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_contractors do |t|
      t.string :accountname
      t.string :financial_link
      t.string :companieshouseref
      t.timestamps
    end
  end
end
