## Redis Implementation Log: High-Speed Caching and Ranking

I have successfully integrated Redis into my local development environment using Docker Compose, creating a polyglot persistence layer alongside MongoDB. This log covers the foundational data structures and architectural concepts I mastered through direct CLI execution.

### Core Concepts Executed

#### 1. Strings and TTL (Time-To-Live)
I established basic key-value caching using the **String** data type. The crucial learning here was using the `EXPIRE` command.

* **SET** was used for simple key-value storage (e.g., `Destination` -> `Cairo`).
* **EXPIRE** demonstrated how to manage volatile data, automatically invalidating the cache after a set time (e.g., 10 seconds). I confirmed that expired keys result in an `(nil)` retrieval and are removed from the keyspace.

#### 2. Atomic Counting
I implemented atomic incrementation, which is vital for any high-volume metric tracking, like page views or access counts.

* The **INCR** command was used on the `Accesses` key. This operation guarantees thread-safe counting, unlike a read-modify-write cycle in a traditional application. I quickly fixed the initial syntax error by realizing `INCR` without a second argument increments by 1.

#### 3. Lists for Queues
I utilized the **List** data structure to manage a simple, ordered collection of user data, demonstrating its utility for queues or recent history feeds.

* **LPUSH** added users to the front of the `users` list.
* **LRANGE** was used to retrieve ranges of list members, demonstrating how to fetch an entire list (`0 -1`) or a subset (`0 1`).

#### 4. Sorted Sets (The Real Power Move)
The most valuable architectural lesson was the implementation of a real-time ranking system using the **Sorted Set** (`ZSET`) data type. This solves the problem of slow, complex `ORDER BY COUNT(*)` queries that would otherwise burden MongoDB.

* **ZADD** was used to insert destinations with a numeric score representing their popularity (e.g., `ZADD destinations:ranking 5 Rio_de_Janeiro`). I diagnosed and corrected the syntax error: members containing spaces must be connected (e.g., `Rio_de_Janeiro` instead of `Rio de Janeiro`).
* **ZINCRBY** was executed to atomically increase Rio de Janeiro's score by 1, simulating a new reservation.
* **ZRANGE ... WITHSCORES** immediately verified that the list re-sorted instantly, proving the structure's efficiency for creating leaderboards. The top-ranked item was correctly retrieved with its updated score.

This setup confirms Redis is fully operational and configured for handling high-speed cache and ranking duties for the trips