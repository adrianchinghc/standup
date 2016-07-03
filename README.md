# Standup Bot

## Setup
* Sign up a HipChat account for standup bot with the name `Standup`
* Ensure all environment variables are setup
* Instruction for adding Standup Bot to [private room](#joining-private-room) and [public room](#joining-public-room)
* Add users to respective authorization groups by sending this command to Standup Bot's private chatroom
  - `auth add USER GROUP`
  - Example: `auth add AdrianChing standup_participants`
  - There are two kinds of auth groups, namely `standup_participants` and `standup_admins`
  - Only Admins specified in the `ROBOT_ADMINS` can add users to auth groups


## Joining private room
`Invite People` > Select `Standup` > Click `Invite People`
After inviting Standup to the private chatroom, go to private chatroom with Standup
`join ROOM_ID`

## Joining public room
Go to private chatroom with Standup
`join ROOM_ID`

## Help
Use `help` in Standup Bot's private chatroom to S.O.S.

## Deploy to Heroku
Use Heroku's RedisToGo Addons to your application.

## HipChat Jabber ID/Room ID
All JID/ROOM_ID can be found here ---> https://yourorganisation.hipchat.com/account/xmpp

## Standup Summary
Standup summary will be sent to `SUMMARY_EMAIL_RECIPIENTS` after 60 minutes by default. (Can be customized through environment variable)
You can send summary to multiple recipients by adding more emails to `SUMMARY_EMAIL_RECIPIENTS` using comma-separated string.

## Standup Reminder
Standup Bot will send reminder to the chatroom every weekday on 6pm.
