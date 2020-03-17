class Recipient < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :telephone, presence: true
  validates :postcode, presence: true
  validates :payment_type, presence: true
  validates :support_type, presence: true
end
