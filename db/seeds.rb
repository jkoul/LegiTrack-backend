require_relative './bill_data.rb'

Bill.destroy_all

bill_data = get_bills()

bill_data.each do |bill|
  Bill.create!({
    billNumber:       bill["billNumber"],
    category:         bill["category"],
    billType:         bill["billType"],
    title:            bill["title"],
    introDate:        bill["introDate"],
    status:           bill["status"],
    actNumber:        bill["actNumber"],
    lawNumber:        bill["lawNumber"],
    committeeReferral: bill["committeeReferral"],
    introducedBy:     bill["introducedBy"],
    cosponsors:       bill["cosponsors"]
  })
end
