
# SQL Exercise

# In your cloud9 environment, install the sqlite3 gem.
# Create an empty sql1 repository within github.
# Clone that repository to your cloud9 ~/environment directory.
# Within the sql1 directory you create via the clone, create a file gitignore with a single line that says *.db 
# From the command line, do mv gitignore .gitignore    -- This will rename the gitignore file as required by git.
# Within sql1 directory, create a file sql_exercise.rb
# The program sql_exercise.rb should open a database file called maindata.db and should create a users table with a primary key, an email, and a password.   Then, the program should insert several records into that table, do a select to retrieve the records, and print out the resulting array.  
# Use git operations to push your code to github.


require 'sqlite3'

if File exists?("maindata.db")
  File.delete("maindata.db")
end 


db. = SQLite3::Database.new("maindata.db")

db.execute <<-SQL
CREATE TABLE users (
    id INTEGER PRIMAY KEY,
    email VARCHAR,
    password VARCHAR
  ); 
SQL

db.execute ("INSERT INTO users")
    