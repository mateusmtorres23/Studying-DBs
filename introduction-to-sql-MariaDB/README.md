# 🛠️ Introduction to SQL Fundamentals: Travel Agency Schema

This module documents the foundational learning phase of relational database management (RDBMS), focusing on the MariaDB dialect via Docker orchestration.

The objective was to master the core components of SQL, moving from simple table definition to enforcing relational integrity and executing complex analytical queries.

### Key Concepts Covered

* **Infrastructure as Code (IaC):** Setting up a clean, portable MariaDB instance using `compose.yaml` and managing secrets via `.env`.
* **DDL (Data Definition Language):** Defining table structures, data types, and comments.
* **DML (Data Manipulation Language):** Performing basic data insertion (`INSERT`), updates (`UPDATE`), and deletion (`DELETE`).
* **Relational Integrity:** Implementing **`PRIMARY KEY`** (PK) and **`FOREIGN KEY`** (FK) constraints, including the use of `ON DELETE CASCADE`.
* **Normalization:** Applying the `ALTER TABLE` command to normalize data (splitting a single `address` column into `street`, `city`, and `state`) using complex string parsing functions (`SUBSTRING_INDEX`).
* **DQL (Data Query Language):** Advanced querying using joins (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`), aggregate functions (`COUNT(DISTINCT)`, `MAX`), subqueries, and grouping (`GROUP BY`).

---

### Files Structure

| File Name | Description | Concepts Illustrated |
| :--- | :--- | :--- |
| `create-table.sql` | Initial schema definition. | `CREATE TABLE`, `VARCHAR`, `INT`, `DATE`, `UNIQUE`. |
| `manipulate-data.sql` | Basic data insertion and modification. | Simple `INSERT`, `SELECT`, `WHERE`, `UPDATE`, `DELETE`. |
| `alter-tables-keys.sql` | **Constraint Enforcement.** | `ALTER TABLE`, `PRIMARY KEY`, `FOREIGN KEY`, `AUTO_INCREMENT`, `ON DELETE CASCADE`. |
| `data-normalization.sql` | Structural changes and string parsing. | `ALTER TABLE ADD/DROP COLUMN`, complex `UPDATE` with nested `SUBSTRING_INDEX` for address normalization. |
| `advanced-consults.sql` | Complex data retrieval. | `INNER`/`LEFT`/`RIGHT JOIN`, `COUNT(DISTINCT)`, subqueries, `GROUP BY`, `MAX(TIMESTAMPDIFF)`, and `CREATE INDEX`. |