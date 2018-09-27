class ChargesController < ApplicationController
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

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
