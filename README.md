## Ticketing App

An API to manage customer service tickets and tasks within a team. Build with Rails.

### Design decisions

This repo represents the backend API for the application.

This API will rely on the inbuilt cache management of Rails to handle updating the data.

| Model  | Characteristics                                          | Behaviour                              |
|--------|----------------------------------------------------------|----------------------------------------|
| User   | Name, email, password (authentication), admin        | Create Read Update | Delete (only for admins), can_assign?, can_delete?, has_manager?                                 |
| Ticket | Title, description, priority, completed?, creator_id, owner_id  | Create Read Update | Delete (only for admins), can be archived, can be assigned, can be unassigned |

The initial design of the app is based around OOP principles. There will be users, tickets and potentially teams. Some users have additional abilities if they pass the are_admin? check such as assigning tickets, viewing tickets within their team and deleting/archiving tickets.

Tickets can be organised in terms of their urgency, the type of problem and by their assignee. A user will be able to view all of the ticket assigned to them or they will be able to see a list of their submitted tickets.

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

To run the tests, navigate to the root folder:

```
rspec
```
