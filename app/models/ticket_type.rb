class TicketType < ApplicationRecord
  validates :price, numericality: { only_integer: true }

  belongs_to :event
  belongs_to :ticket_zone
end
