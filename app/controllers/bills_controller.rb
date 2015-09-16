class BillsController < ApplicationController

  def index
    @bills = Bill.all
    render status: 200, json: @bills.to_json
  end

  def show
    @bill = Bill.find(params[:id])
      render status: 200, json: @bill.to_json
  end

end
