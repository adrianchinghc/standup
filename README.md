# Standup Bot

## Setup
* Sign up an account for standup bot
* Ensure all environment variables are setup on Heroku
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
ROOM_ID = XMPP/Jabber name found [here](https://surialabs.hipchat.com/account/xmpp)

## Joining public room
Go to private chatroom with Standup
`join ROOM_ID`
ROOM_ID = XMPP/Jabber name found [here](https://surialabs.hipchat.com/account/xmpp)

## Help
Use `help` in Standup Bot's private chatroom to S.O.S.
