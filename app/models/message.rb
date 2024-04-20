class Message < ApplicationRecord
  validates :textMsg, :scheduleDate, :user, :createDate, :whatsappNumber, presence: true
  enum status: { pending: 0, sent: 1, failed: 2 }
  belongs_to :user
end

def self.run_schedules
  schedules = Message.where(scheduleDate <= Time.now)
  schedules.each do |schedule|
    SchedulesJob.perform_now(schedule)
    schedule.destroy
  end
end
