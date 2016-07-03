require 'lita-schedule'

module Lita
  module Schedules
    class Reminder < Schedule

      cron('00 18 * * 1-5', :standup_reminder)
      def standup_reminder
        robot.persisted_rooms.each do |room|
          target = Source.new(room: Room.new("#{room}@conf.hipchat.com"))
          robot.send_message(target, "It's Standup Time! Standup Admins, your call!")
          robot.send_message(target, "Use command: #{robot.name} start")
        end
      end
    end
    Lita.register_schedule(Reminder)
  end
end
