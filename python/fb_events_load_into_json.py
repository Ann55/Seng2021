
import sqlite3
import json

database_location = './data/UNSWSocietyFBEvents.db'
json_file_location = '../src/data/UNSWSocietyFBEvents.js'

def main():

    my_query = query_db('''select fbEventsID as id,
                     data__id,
                     data__description,
                     username as society,
                     id as id1,
                     data__place__location__latitude,
                     data__place__location__longitude,
                     cast(data__going as int) as going,
                     cast(data__went as int) as data__went,
                     cast(data__interested as int) as interested,
                     data__name as eventName,
                     data__Date as date,
                     data__start_time,
                     data__end_time,
                     data__Time_From_To,
                     about,
                     fan_count,
                     website,
                     cover__cover_id,
                     cover__offset_x,
                     cover__offset_y,
                     cover__source,
                     cover__id,
                     link,
                     emails,
                     founded,
                     0 as isSaved
                            from vwUNSWSocietyEventsAbout where data__description <> ''
                     order by cast(data__interested as int) desc''')

    json_output = json.dumps(my_query)

    save_to_json_file(json_output)

def save_to_json_file(j):
    filename = json_file_location

    # If the file name exists, write a JSON string into the file.
    if filename:
        # Writing JSON data
        with open(filename, 'w', encoding="utf-8") as f:
            f.write("export const data = ")
            f.write(j)
    f.close()

def query_db(query, args=(), one=False):
    conn = sqlite3.connect(database_location)
    cur = conn.cursor()
    cur.execute(query, args)
    r = [dict((cur.description[i][0], value) \
               for i, value in enumerate(row)) for row in cur.fetchall()]
    cur.connection.close()
    return (r[0] if r else None) if one else r

if __name__ == '__main__':
    main()