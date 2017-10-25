class Shipment < ApplicationRecord
  	belongs_to :sender, :class_name => "User"
  	belongs_to :receiver, :class_name => "User"
 	belongs_to :cadet, :class_name => "Cadet"

 	enum payment_method: [:cash, :credit, :debit]
 	enum comission_payed_by: [:receiver, :sender, :both]
end
