class SchedulesJob < ActiveJob::Base
  queue_as :default
  schedule :Message

  class SchedulesJob < ApplicationJob
    def perform(schedules)
      number = schedule.find_by_whatsappNumber(schedules.whatsappNumber)
      text_message = schedule.find_by_textMsg(schedules.textMsg)
      link = "https://wa.me/#{number}?text=#{URI.encode(text_message)}"
      system("xdg-open '#{link}'")
    end
  end
end
