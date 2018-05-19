import requests
import re
from lxml import html
import sqlite3

database_location = './data/UNSWSocietyFBEvents.db'

USERNAME = "test.tester.unsw@hotmail.com"
PASSWORD = "Mnbvcx098765"

LOGIN_URL = "https://www.facebook.com/login.php?"
URL = "https://www.facebook.com/search/events/?q=UNSW%20Society"
#URL = "https://www.facebook.com/search/events/?q=UNSW%20Society&filters_rp_events_date=%7B%22name%22%3A%22filter_events_date%22%2C%22args%22%3A%222018-05-13~2018-05-13%22%7D"
#URL="https://www.facebook.com/search/events/?q=UNSWLawRevue"

def main():
    #search_fb('',URL,LOGIN_URL,USERNAME,PASSWORD)
    check_for_fb_UNSWSocietyEvents(LOGIN_URL, USERNAME, PASSWORD)

    #get_fb_graph_api_data('UNSWLawRevue')

def search_fb(UNSWSocietyName,URL,LOGIN_URL,USERNAME,PASSWORD):
    session_requests = requests.session()

    # Get login csrf token
    result = session_requests.get(LOGIN_URL)
    tree = html.fromstring(result.text)
    authenticity_token = list(set(tree.xpath("//input[@name='lsd']/@value")))[0]

    # Create payload
    payload = {
        "email": USERNAME,
        "pass": PASSWORD,
        "lsd": authenticity_token
    }

    # Perform login
    result = session_requests.post(LOGIN_URL, data = payload, headers = dict(referer = LOGIN_URL))

    # Scrape url1
    result = session_requests.get(URL, headers = dict(referer = URL))

  #  print(result.text)

    input_str1 = result.text

    # if UNSWSocietyName != "":
    get_fb_graph_api_data(UNSWSocietyName)

    #

    pattern = r"/events/((\d+)?)/"

    matchList = re.findall(pattern, input_str1, re.X)

    # print(matchList)

    print('Events from: ', URL)

    output = []
    for x_e in matchList:
        if x_e not in output:
            output.append(x_e)
            #print(x_e[0])

            parse_fb_data(UNSWSocietyName,x_e[0],input_str1)

    #print(output)

def parse_fb_data(UNSWSocietyName,ID,input_str1):

    print("data_id ="+ID)

    #
    pattern = r"/events/"+ID+"((.*?))</div></div><div><div class=\"_ajw\">"
    try:
        matchList = re.findall(pattern, input_str1, re.S)[0]
    except IndexError:
        matchList = []
        matchList.append(0)

    #print('... Event number and content ... saved into input_str2')

    input_str2 = matchList[0]

#   data__id

    data__id = ID

    #print(data__id)

# Look for the Description in the page

    # (.*) anything
    # looks good ... A((.*)?)B ... find from A all (.*) up to the last match of B...
    # looks good ... A((.*?))B ... find from A (.*) first match of the B...

    pattern = r"<div class=\"_52eh\"><span>((.*?))$"

    try:
        matchList = re.findall(pattern, input_str2, re.S)[0]
    except (IndexError, TypeError):
        try:
            pattern = r"<meta name=\"description\" content=\"((.*)?)/><link rel=\"shortcut icon\""
            matchList = re.findall(pattern, input_str2, re.S)[0]
        except (IndexError, TypeError):
            try:
                pattern = r"<div class=\"_52eh\">((.*?))</div></div>"
                matchList = re.findall(pattern, input_str2, re.S)[0]
            except (IndexError, TypeError):
                try:
                    pattern = r"<div class=\"_ajw\"><div class=\"_52eh\">((.*?))$"
                    matchList = re.findall(pattern, input_str2, re.S)[0]
                except (IndexError, TypeError):
                    matchList=[]
                    matchList.append('')

    #print('... Description (data__description) ... ')

    data__description = str(matchList[0])

    data__description = data__description.replace('</span><wbr /><span class="word_break"></span>','')
    data__description = data__description.replace('<span>','')

    #print(data__description)

    #quit()

#Details per event
# Rest of the data is from the event page (URL2)

    session_requests2 = requests.session()

    # Get login csrf token
    result = session_requests2.get(LOGIN_URL)
    tree = html.fromstring(result.text)
    authenticity_token = list(set(tree.xpath("//input[@name='lsd']/@value")))[0]

    # Create payload
    payload = {
        "email": USERNAME,
        "pass": PASSWORD,
        "lsd": authenticity_token
    }

    # Perform login
    result = session_requests2.post(LOGIN_URL, data=payload, headers=dict(referer=LOGIN_URL))

    URL2 = 'https://www.facebook.com/'+ID

# Scrape url2
    r1 = session_requests2.get(URL2, headers = dict(referer = URL2))

    #print(URL2)

    input_str = r1.text

# UNSW Societie Name (username)


    pattern = r"<a rel=\"theater\" ajaxify=\"/((.*?))/photos/gm"
    try:
        matchList = re.findall(pattern, input_str, re.S)[0]
    except IndexError:
        try:
            pattern = r"Hosted by <a href=\"https://www.facebook.com/((.*?))/"
            matchList = re.findall(pattern, input_str, re.S)[0]
        except IndexError:
            matchList=[]
            matchList.append('')

    #print('... UNSW Societie Name (username) ... ')

    username = matchList[0]

    username = username.replace('" data-hovercard="','')

    #print(username)

# latitude and longitude

    pattern = r"&amp;center=((.*)%2C(.*)?)&amp;zoom"

    matchList = re.findall(pattern, input_str, flags=0)

    output = []
    for x in matchList:
        if x not in output:
            output.extend(x)

    #print('... latitude (data__place__location__latitude) ... ')

    try:
        data__place__location__latitude = output[1]
    except IndexError:
        data__place__location__latitude = 0

    #print(data__place__location__latitude)
    #print('... longitude (data__place__location__longitude) ... ')

    try:
        data__place__location__longitude = output[2]
    except IndexError:
        data__place__location__longitude = 0

    #print(data__place__location__longitude)

# going

    pattern = r"role=\"button\">((.*)?) going"

    try:
        matchList = re.findall(pattern, input_str, flags=0)[0]
    except IndexError:
        try:
            pattern = r"((\d+)?) people going"
            matchList = re.findall(pattern, input_str, flags=0)[0]
        except IndexError:
            matchList=[]
            matchList.append(0)

    #print('... going ...')
    data__going = matchList[0]
    #print(data__going)

    pattern = r"role=\"button\">((.*)?) went"

    try:
        matchList = re.findall(pattern, input_str, flags=0)[0]
    except IndexError:
        try:
            pattern = r"((\d+)?) people went"
            matchList = re.findall(pattern, input_str, flags=0)[0]
        except IndexError:
            matchList=[]
            matchList.append(0)

    #print('... or went ...')
    data__went = matchList[0]
    #print(data__went)

    pattern = r"·&nbsp;((.*)?) interested"

    try:
        matchList = re.findall(pattern, input_str, flags=0)[0]
    except IndexError:
        try:
            pattern = r"role=\"button\">((.*)?) interested"
            matchList = re.findall(pattern, input_str, flags=0)[0]
        except IndexError:
            matchList=[]
            matchList.append(0)

    #print('... interested ...')
    data__interested = matchList[0]
    #print(data__interested)

# <title id="pageTitle">
# </title>

    pattern = r"<title id=\"pageTitle\">((.*)?)</title>"

    try:
        matchList = re.findall(pattern, input_str, flags=0)[0]
    except IndexError:
        matchList=[]
        matchList.append(0)

    #print('... title (data__name) ...')

    data__name = matchList[0]

    #print(data__name)

#<span itemprop="startDate">
#</span> -

    pattern = r"<span itemprop=\"startDate\">((.*)?)</span></span>"
    pattern = "<span aria-label=\"((.*?))\""

    try:
        matchList = re.findall(pattern, input_str, flags=0)[0]
    except IndexError:
        matchList=[]
        matchList.append(0)

    #print('... from Date ... ')
    data__Date = matchList[0]
    #print(data__Date)

#</span> at <span>
#</span>–<span>


    pattern = r"</span> at <span>(((\d+):(\d+))?)"

    try:
        matchList = re.findall(pattern, input_str, re.S)[0]
    except IndexError:
        try:
            pattern = r" at <span>(((\d+):(\d+))?) "
            matchList = re.findall(pattern, input_str, re.S)[0]
        except IndexError:
            matchList=[]
            matchList.append(0)

    #print('... from Time (data__start_time) ... ')

    data__start_time = matchList[0]

    #print(data__start_time)


#</span>–<span>
#</span></div><div

    pattern = r"</span>–<span>((.*?))</span></div><div"

    try:
        matchList = re.findall(pattern, input_str, flags=0)[0]
    except IndexError:
        matchList=[]
        matchList.append(0)

    #print('... up to Time (data__end_time) ... ')

    data__end_time = matchList[0]

    #print(data__end_time)

#<div class="_62pa">Sun 14:30 – 17:30</div>

    if data__start_time == 0 and data__end_time == 0:
        pattern = r"<div class=\"_62pa\">((.*?))</div>"

        try:
            matchList = re.findall(pattern, input_str, flags=0)[0]
        except IndexError:
            try:
                pattern = r" at ((.*?)) to "
                matchList = re.findall(pattern, input_str, flags=0)[0]
            except IndexError:
                matchList = []
                matchList.append(0)

    #print('... Date Time From - To ... ')

        data__Time_From_To = matchList[0]

    else:
        data__Time_From_To = 0

    #print(data__Time_From_To)

    print('------------------')
    """
    print(data__id)
    print(data__description)
    print(username)
    print(data__place__location__latitude)
    print(data__place__location__longitude)
    print(data__going)
    print(data__went)
    print(data__interested)
    print(data__name)
    print(data__Date)
    print(data__start_time)
    print(data__end_time)
    print(data__Time_From_To)
    """


    save_data( data__id,
              data__description,
              username,
              data__place__location__latitude,
              data__place__location__longitude,
              data__going,
              data__went,
              data__interested,
              data__name,
              data__Date,
              data__start_time,
              data__end_time,
              data__Time_From_To)


def save_data(data__id,
        data__description,
        username,
        data__place__location__latitude,
        data__place__location__longitude,
        data__going,
        data__went,
        data__interested,
        data__name,
        data__Date,
        data__start_time,
        data__end_time,
        data__Time_From_To):
    conn = sqlite3.connect(database_location)
    c = conn.cursor()

    csid = 0

    for row in c.execute('SELECT fbEventsID  FROM UNSWSocietyEvents where data__id = ?',(data__id,)).fetchall():
        csid = str(row[0])
        c.execute('''UPDATE UNSWSocietyEvents
                        SET 
                        data__description = ?,
                        username = ?,
                        data__place__location__latitude = ?,
                        data__place__location__longitude = ?,
                        data__going = ?,
                        data__went = ?,
                        data__interested = ?,
                        data__name = ?,
                        data__Date = ?,
                        data__start_time = ?,
                        data__end_time = ?,
                        data__Time_From_To = ?
                  WHERE fbEventsID = ?
            ''',(
            data__description,
            username,
            data__place__location__latitude,
            data__place__location__longitude,
            data__going,
            data__went,
            data__interested,
            data__name,
            data__Date,
            data__start_time,
            data__end_time,
            data__Time_From_To,
            csid
        ))
    if csid==0:
        c.execute('''INSERT INTO UNSWSocietyEvents VALUES(
                                  NULL,
                                  ?,
                                  ?,
                                  ?,
                                  NULL,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?
                              )''', (
        data__id,
        data__description,
        username,
        data__place__location__latitude,
        data__place__location__longitude,
        data__going,
        data__went,
        data__interested,
        data__name,
        data__Date,
        data__start_time,
        data__end_time,
        data__Time_From_To
            ))
    conn.commit()
    conn.close()

def get_fb_graph_api_data(page_id):

    print("------------------------------")
    print(page_id)

    api_endpoint = "https://graph.facebook.com/v3.0/"
    access_token = "EAACEdEose0cBAIUKqND2jWwTQ8ZAdIpf9Im5QuZA7XRT1UI3AdYDnjbjZB9yif7ZBbXW2tgA8vFZAZAzl37SpKFdCD4XUyFQZBqxiufCUAUZA4H6dpWPPqubYQ0lLr08lKzJ7NxCg6PxfQQM3PFtyGgiWoL6Nqn74Kx3IFJ1LNUumVJWbMkKuFDV3PmIerVPwg3YA1KtkHskKcFt2RuJVHadxa4MShXzltMZD"

    # Access Token

    fb_graph_url = api_endpoint + page_id + "?fields=about,fan_count,website,cover,link,username,emails,founded&access_token=" + access_token

    session_requests = requests.session()

    api_response = session_requests.get(fb_graph_url)

    try:
        page_data = api_response.json()
    except (ValueError, KeyError, TypeError):
        page_data = {}

    try:
        about = str(page_data['about'])
    except:
        about = ""

    try:
        fan_count = str(page_data['fan_count'])
    except:
        fan_count = ""

    try:
        website = str(page_data['website'])
    except:
        website = ""

    try:
        cover_cover_id = str(page_data['cover']['cover_id'])
    except:
        cover_cover_id = ""

    try:
        cover_offset_x = str(page_data['cover']['offset_x'])
    except:
        cover_offset_x = ""

    try:
        cover_offset_y = str(page_data['cover']['offset_y'])
    except:
        cover_offset_y = ""

    try:
        cover_source = str(page_data['cover']['source'])
    except:
        cover_source = ""

    try:
        cover_id = str(page_data['cover']['id'])
    except:
        cover_id = ""

    try:
        link = str(page_data['link'])
    except:
        link = ""

    try:
        username = str(page_data['username'])
    except:
        username = ""

    try:
        emails = str(page_data['emails'])
    except:
        emails = ""

    try:
        founded = str(page_data['founded'])
    except:
        founded = ""

    try:
        id = str(page_data['id'])
    except:
        id = ""
    """
    print("username:" + username)
    print("id:" + id)
    print("fan_count:" + fan_count)
    print("website:" + website)

    print("cover:cover_id:" + cover_cover_id)
    print("cover:offset_x:" + cover_offset_x)
    print("cover:offset_y:" + cover_offset_y)
    print("cover:source:" + cover_source)
    print("cover:id:" + cover_id)

    print("link:" + link)
    print("username:" + username)
    print("emails:" + emails)

    print("founded:" + founded)
    """
    save_about_data(username,
                    id,
                    about,
                    fan_count,
                    website,
                    cover_cover_id,
                    cover_offset_x,
                    cover_offset_y,
                    cover_source,
                    cover_id,
                    link,
                    emails,
                    founded)

def save_about_data(username,
       id,
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
       founded):
    conn = sqlite3.connect(database_location)
    c = conn.cursor()

    csid = 0

    for row in c.execute('SELECT username FROM UNSWSocietyAbout where username = ?',(username,)).fetchall():
        csid = str(row[0])
        c.execute('''UPDATE UNSWSocietyAbout
                        SET id                  = ?,
                            about               = ?,
                            fan_count           = ?,
                            website             = ?,
                            cover__cover_id     = ?,
                            cover__offset_x     = ?,
                            cover__offset_y     = ?,
                            cover__source       = ?,
                            cover__id           = ?,
                            link                = ?,
                            emails              = ?,
                            founded             = ?
                  WHERE username = ?
            ''',(
            id,
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
            csid
        ))
    if csid==0:
        c.execute('''INSERT INTO UNSWSocietyAbout VALUES(
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?,
                                  ?
                              )''', (
            username,
            id,
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
            founded
            ))
    conn.commit()
    conn.close()


def check_for_fb_UNSWSocietyEvents(LOGIN_URL, USERNAME, PASSWORD):
    conn = sqlite3.connect(database_location)
    c = conn.cursor()
    for row in c.execute('''SELECT distinct username
                            FROM UNSWSocietyAbout
                            ''').fetchall():
        sid = str(row[0])
        URL = "https://www.facebook.com/search/events/?q="+sid
        search_fb(sid,URL, LOGIN_URL, USERNAME, PASSWORD)
    conn.commit()
    conn.close()

if __name__ == '__main__':
    main()