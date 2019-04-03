class Ticket < ApplicationRecord
  validate :event_date_cannot_be_in_the_past


  def event_date_cannot_be_in_the_past
    eventdate=self.ticket_type.event.start_date
    if eventdate.present? && eventdate < Date.today
      errors.add("Event can't be in the past")
    end
  end

  belongs_to :ticket_type
  belongs_to :order
end
