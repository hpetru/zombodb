-- do something that'll just return the number of shards returned, which should always be 5 for
-- the "words" table.  There's too much variability in the output to include all of it.
select json_array_length((zdb_profile_query('words', 'this is a test')::json)->'profile'->'shards');
