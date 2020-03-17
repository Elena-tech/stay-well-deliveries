class Collaborator < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :telephone, presence: true
  validates :postcode, presence: true
  validates :transport_type, presence: true
end
