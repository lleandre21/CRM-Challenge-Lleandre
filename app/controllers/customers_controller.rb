# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    @customer = Customer.all
    # @customer = Customer.order(:name)
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
