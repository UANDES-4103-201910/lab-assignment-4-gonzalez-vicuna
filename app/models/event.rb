class AddUniqueIndexToEvents < ActiveRecord::Migration
  def change
    add_index :events, [:start_date, :event_venue], unique: true
  end
end



class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  validates :start_date, presence:true
  validate :start_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end
end