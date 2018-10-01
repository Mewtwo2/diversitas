class ChargesController < ApplicationController

  before_action :is_logged

  def new
  end

  def create
    @amount = params[:number].to_i * 100

    charge = Stripe::Charge.create(
      :source => params[:stripeToken],
      :amount => @amount,
      :description => 'Donation',
      :currency => 'usd'
    )

    @user = current_user
    @user.is_donor = true
    @user.save
    
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  def is_logged
    redirect_to root_path unless logged_in?
  end
end
