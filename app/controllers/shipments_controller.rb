class ShipmentsController < ApplicationController

	def new 
		@shipment = Shipment.new
	end 

	def create
		#@shipment = Shipment.new
		#user = User.find_by_email(params[:shipment][:receiver][:email])
		#debugger
		@shipment = Shipment.create!(shipment_params)
		#@shipment.receiver = user
		
	end

	def shipment_params
		sender = User.find_by_email(params[:shipment][:sender][:email])
		#sender = User.find_by_email(current_user.email)
		receiver = User.find_by_email(params[:shipment][:receiver][:email])
		cadet = Cadet.find_by_email(params[:shipment][:cadet][:email])
		par = params.require(:shipment).permit(:sender_address, sender:[:email], receiver:[:email], cadet:[:email])
		par[:receiver] = receiver
		par[:sender] = sender
		par[:cadet] = cadet
		par
	end
end
