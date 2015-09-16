class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :billNumber
      t.string :category
      t.string :billType
      t.string :title
      t.string :introDate
      t.string :status
      t.string :actNumber
      t.string :lawNumber
      t.string :committeeReferral
      t.string :introducedBy
      t.string :cosponsors
    end
  end
end
