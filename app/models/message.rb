class Message < ApplicationRecord
  validates :msgId, :textMsg, :scheduleDate, :createDate, :whatsappNumber, presence: true
end

def self.run_schedules
  schedules = Message.where(scheduleDate <= Time.now)
  schedules.each do |schedule|
    SchedulesJob.perform_now(schedule)
    schedule.destroy
  end
end
