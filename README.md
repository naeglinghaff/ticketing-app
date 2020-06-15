## Ticketing App

An API to manage customer service tickets and tasks within a team.

### Design decisions

This repo represents the backend API for the application. A react app will serve the client in the browser.

This API will rely on the inbuilt cache management of Rails to handle updating the data.

| Model  | Characteristics                                          | Behaviour                              |
|--------|----------------------------------------------------------|----------------------------------------|
| User   | Name, email, password (authentication), admin?           | CRUD                                   |
| Ticket | Title, description, priority, assigned_users, completed? | CRUD, can be archived, can be assigned |

The initial design of the app is based around OOP principles. There will be users, tickets and potentially admins, a class of users which have more permissions on the application to assign tickets.

Tickets can be organised in terms of their urgency, the type of problem and by whom them have been assigned to. A user will be able to view all of the ticket assigned to them or they will be able to see a list of their submitted tickets.

Tickets will either be active or resolved. There will be an option to access all resolved tickets and their solutions.

### Start up

To run the code locally:

```
rails db:setup
rails db:migrate
rails s
```

then visit your localhost address listed in the terminal.

### Testing

To run the tests:

```
rspec
```
