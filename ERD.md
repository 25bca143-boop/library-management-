
# Library Management System ER Diagram

```mermaid
erDiagram

    MEMBERS ||--o{ LOANS : borrows
    BOOKS ||--o{ LOANS : contains

    MEMBERS {
        int member_id PK
        string full_name
        string email
        string phone
        date joined_on
    }

    BOOKS {
        int book_id PK
        string title
        string author
        string category
        string isbn
        int total_copies
        int available_copies
    }

    LOANS {
        int loan_id PK
        int member_id FK
        int book_id FK
        date issue_date
        date due_date
        date return_date
        string status
    }

    STAFF {
        int staff_id PK
        string full_name
        string username
        string email
    }
```
