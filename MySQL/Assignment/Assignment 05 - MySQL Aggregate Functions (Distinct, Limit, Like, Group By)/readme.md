# Insurance Database

This assignment uses an **Insurance Management Database** consisting of four related tables:

* **Insurance**
* **Client**
* **Agent**
* **Policy**

These tables work together to manage insurance plans, clients, agents, and policy information.

---

## Insurance Table

The **Insurance** table stores information about all insurance types offered by the agency.

| Column        | Description                                |
| ------------- | ------------------------------------------ |
| `id`          | Unique identifier for each insurance type. |
| `name`        | Name of the insurance plan.                |
| `basic_price` | Base price of the insurance plan.          |

---

## Client Table

The **Client** table contains information about customers who have purchased or intend to purchase insurance.

| Column       | Description                        |
| ------------ | ---------------------------------- |
| `id`         | Unique identifier for each client. |
| `first_name` | Client's first name.               |
| `last_name`  | Client's last name.                |
| `birth_date` | Client's date of birth.            |
| `city`       | City where the client resides.     |

---

## Agent Table

The **Agent** table stores information about insurance agents responsible for selling policies.

| Column       | Description                       |
| ------------ | --------------------------------- |
| `id`         | Unique identifier for each agent. |
| `first_name` | Agent's first name.               |
| `last_name`  | Agent's last name.                |
| `city`       | City where the agent works.       |

---

## Policy Table

The **Policy** table records insurance policies purchased by clients and sold by agents. It connects the **Insurance**, **Client**, and **Agent** tables through foreign keys.

| Column          | Description                                            |
| --------------- | ------------------------------------------------------ |
| `id`            | Unique identifier for each policy.                     |
| `insurance_id`  | References the insurance type purchased by the client. |
| `client_id`     | References the client who owns the policy.             |
| `policy_number` | Unique policy number assigned to the client.           |
| `start_date`    | Policy coverage start date.                            |
| `end_date`      | Policy coverage end date.                              |
| `annual_fee`    | Annual premium paid for the policy.                    |
| `agent_id`      | References the agent who sold the policy.              |
