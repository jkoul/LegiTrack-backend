require 'rubygems'
require 'json'
def get_bills
  bills = File.read('db/lims_bills_Council21.json')
  return JSON.parse(bills)
end
