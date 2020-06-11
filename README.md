## Ticketing App

An application to manage customer service tickets and tasks among a team.

### Design

The initial design of the app is based around OOP principles. There will be users, tickets and potentially admins, a class of users which have more permissions on the application to assign tickets.

Tickets can be organised in terms of their urgency, the type of problem and by whom them have been assigned to. A user will be able to view all of the ticket assigned to them or they will be able to see a list of their submitted tickets.

Tickets will either be active or resolved. There will be an option to access all resolved tickets and their solutions. 

### Start up

```
rails db:setup
rails db:migrate
rails s
```
### Testing

```
rspec
```
