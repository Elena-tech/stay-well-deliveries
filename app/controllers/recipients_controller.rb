class RecipientsController < ApplicationController
  before_action  :find_recipient, only: [:edit, :destroy]
  skip_before_action :authenticate_user!
  def new
    @recipient = Recipient.new
  end

  def create
    @recipient = Recipient.new(recipient_params)
    if @recipient.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  private

  def recipient_params
    params.require(:recipient).permit(:first_name, :last_name, :telephone, :postcode, :payment_type, :support_type)
  end

  def find_recipient
    @recipient = Recipient.find(params[:id])
  end

  def destroy
    @recipient.destroy
    redirect_to root_path
  end
end
