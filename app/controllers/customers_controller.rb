# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end

  # def show
  #   @customer = Customer.find(params[:id])
  # end

  def alphabetized
    @customer = Customer.order(:fullname)
  end

  def missing_email
    @customer = Customer.where(email: [nil, ''])
  end
end
