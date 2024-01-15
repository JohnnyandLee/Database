The design choices I made for this ER diagram:

1. Each student should attend at least 1 class and 1 project.

2. Each Instructor should at least teach 1 class and supervise 1 project.

3. Enroll_ID in Class table means either a student or an instructor enrolls in a class.

4. A student can rate a class, and the corresponding instructor at the same time, so does rate a project and the corresponding instructor at the same time.
   Students should rate class/instructor and project/instructor separately.(submit more than twice)

5. If Enroll_ID is according to an instructor, it will not contribute to the Rating table.

6. Project Group is formed by composite identifier like Group1 John.(therefore, the primary key is unique)

7. Table is formed by composite identifier like Table1 Speakers1.(therefore, the primary key is unique)
 