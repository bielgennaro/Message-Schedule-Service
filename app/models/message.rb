class Message < ApplicationRecord
  validates :textMsg, :whatsappNumber, :scheduleDate, presence: true
  enum status: { pending: 0, sent: 1, failed: 2, schedule_fail: 3 }, _default: :pending
end
