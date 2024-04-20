class Message < ApplicationRecord
  validates :msgId, :textMsg, :scheduleDate, :createDate, :whatsappNumber, presence: true
  enum status: { pending: 0, sent: 1, failed: 2 }
end

def self.run_schedules
  schedules = Message.where(scheduleDate <= Time.now)
  schedules.each do |schedule|
    SchedulesJob.perform_now(schedule)
    schedule.destroy
  end
end
