Setting.find_or_create_by!(name: "bart_max_distance", value: "1")
Setting.find_or_create_by!(name: "email_body", value: <<END)
Hi, we are interested in your listing.

Please let us live there kthx.
END

Search.find_or_create_by!(description: "Oakland apartments",
                          url: "http://sfbay.craigslist.org/search/eby/apa?nh=58&nh=61&nh=62&nh=64&pets_cat=1")


BartStation.find_or_create_by!(name: "12th St. Oakland City Center",
                                abbreviation: "12TH",
                                latitude: 37.803664,
                                longitude: -122.271604,
                                address: "1245 Broadway",
                                city: "Oakland",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94612")
BartStation.find_or_create_by!(name: "16th St. Mission",
                                abbreviation: "16TH",
                                latitude: 37.765062,
                                longitude: -122.419694,
                                address: "2000 Mission Street",
                                city: "San Francisco",
                                county: "sanfrancisco",
                                state: "CA",
                                zipcode: "94110")
BartStation.find_or_create_by!(name: "19th St. Oakland",
                                abbreviation: "19TH",
                                latitude: 37.80787,
                                longitude: -122.269029,
                                address: "1900 Broadway",
                                city: "Oakland",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94612")
BartStation.find_or_create_by!(name: "24th St. Mission",
                                abbreviation: "24TH",
                                latitude: 37.752254,
                                longitude: -122.418466,
                                address: "2800 Mission Street",
                                city: "San Francisco",
                                county: "sanfrancisco",
                                state: "CA",
                                zipcode: "94110")
BartStation.find_or_create_by!(name: "Ashby",
                                abbreviation: "ASHB",
                                latitude: 37.853024,
                                longitude: -122.26978,
                                address: "3100 Adeline Street",
                                city: "Berkeley",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94703")
BartStation.find_or_create_by!(name: "Balboa Park",
                                abbreviation: "BALB",
                                latitude: 37.72198087,
                                longitude: -122.4474142,
                                address: "401 Geneva Avenue",
                                city: "San Francisco",
                                county: "sanfrancisco",
                                state: "CA",
                                zipcode: "94112")
BartStation.find_or_create_by!(name: "Bay Fair",
                                abbreviation: "BAYF",
                                latitude: 37.697185,
                                longitude: -122.126871,
                                address: "15242 Hesperian Blvd.",
                                city: "San Leandro",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94578")
BartStation.find_or_create_by!(name: "Castro Valley",
                                abbreviation: "CAST",
                                latitude: 37.690754,
                                longitude: -122.075567,
                                address: "3301 Norbridge Dr.",
                                city: "Castro Valley",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94546")
BartStation.find_or_create_by!(name: "Civic Center/UN Plaza",
                                abbreviation: "CIVC",
                                latitude: 37.779528,
                                longitude: -122.413756,
                                address: "1150 Market Street",
                                city: "San Francisco",
                                county: "sanfrancisco",
                                state: "CA",
                                zipcode: "94102")
BartStation.find_or_create_by!(name: "Coliseum/Oakland Airport",
                                abbreviation: "COLS",
                                latitude: 37.754006,
                                longitude: -122.197273,
                                address: "7200 San Leandro St.",
                                city: "Oakland",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94621")
BartStation.find_or_create_by!(name: "Colma",
                                abbreviation: "COLM",
                                latitude: 37.684638,
                                longitude: -122.466233,
                                address: "365 D Street",
                                city: "Colma",
                                county: "sanmateo",
                                state: "CA",
                                zipcode: "94014")
BartStation.find_or_create_by!(name: "Concord",
                                abbreviation: "CONC",
                                latitude: 37.973737,
                                longitude: -122.029095,
                                address: "1451 Oakland Avenue",
                                city: "Concord",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94520")
BartStation.find_or_create_by!(name: "Daly City",
                                abbreviation: "DALY",
                                latitude: 37.70612055,
                                longitude: -122.4690807,
                                address: "500 John Daly Blvd.",
                                city: "Daly City",
                                county: "sanmateo",
                                state: "CA",
                                zipcode: "94014")
BartStation.find_or_create_by!(name: "Downtown Berkeley",
                                abbreviation: "DBRK",
                                latitude: 37.869867,
                                longitude: -122.268045,
                                address: "2160 Shattuck Avenue",
                                city: "Berkeley",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94704")
BartStation.find_or_create_by!(name: "Dublin/Pleasanton",
                                abbreviation: "DUBL",
                                latitude: 37.701695,
                                longitude: -121.900367,
                                address: "5801 Owens Dr.",
                                city: "Pleasanton",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94588")
BartStation.find_or_create_by!(name: "El Cerrito del Norte",
                                abbreviation: "DELN",
                                latitude: 37.925655,
                                longitude: -122.317269,
                                address: "6400 Cutting Blvd.",
                                city: "El Cerrito",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94530")
BartStation.find_or_create_by!(name: "El Cerrito Plaza",
                                abbreviation: "PLZA",
                                latitude: 37.9030588,
                                longitude: -122.2992715,
                                address: "6699 Fairmount Avenue",
                                city: "El Cerrito",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94530")
BartStation.find_or_create_by!(name: "Embarcadero",
                                abbreviation: "EMBR",
                                latitude: 37.792976,
                                longitude: -122.396742,
                                address: "298 Market Street",
                                city: "San Francisco",
                                county: "sanfrancisco",
                                state: "CA",
                                zipcode: "94111")
BartStation.find_or_create_by!(name: "Fremont",
                                abbreviation: "FRMT",
                                latitude: 37.557355,
                                longitude: -121.9764,
                                address: "2000 BART Way",
                                city: "Fremont",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94536")
BartStation.find_or_create_by!(name: "Fruitvale",
                                abbreviation: "FTVL",
                                latitude: 37.774963,
                                longitude: -122.224274,
                                address: "3401 East 12th Street",
                                city: "Oakland",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94601")
BartStation.find_or_create_by!(name: "Glen Park",
                                abbreviation: "GLEN",
                                latitude: 37.732921,
                                longitude: -122.434092,
                                address: "2901 Diamond Street",
                                city: "San Francisco",
                                county: "sanfrancisco",
                                state: "CA",
                                zipcode: "94131")
BartStation.find_or_create_by!(name: "Hayward",
                                abbreviation: "HAYW",
                                latitude: 37.670399,
                                longitude: -122.087967,
                                address: "699 'B' Street",
                                city: "Hayward",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94541")
BartStation.find_or_create_by!(name: "Lafayette",
                                abbreviation: "LAFY",
                                latitude: 37.893394,
                                longitude: -122.123801,
                                address: "3601 Deer Hill Road",
                                city: "Lafayette",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94549")
BartStation.find_or_create_by!(name: "Lake Merritt",
                                abbreviation: "LAKE",
                                latitude: 37.797484,
                                longitude: -122.265609,
                                address: "800 Madison Street",
                                city: "Oakland",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94607")
BartStation.find_or_create_by!(name: "MacArthur",
                                abbreviation: "MCAR",
                                latitude: 37.828415,
                                longitude: -122.267227,
                                address: "555 40th Street",
                                city: "Oakland",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94609")
BartStation.find_or_create_by!(name: "Millbrae",
                                abbreviation: "MLBR",
                                latitude: 37.599787,
                                longitude: -122.38666,
                                address: "200 North Rollins Road",
                                city: "Millbrae",
                                county: "sanmateo",
                                state: "CA",
                                zipcode: "94030")
BartStation.find_or_create_by!(name: "Montgomery St.",
                                abbreviation: "MONT",
                                latitude: 37.789256,
                                longitude: -122.401407,
                                address: "598 Market Street",
                                city: "San Francisco",
                                county: "sanfrancisco",
                                state: "CA",
                                zipcode: "94104")
BartStation.find_or_create_by!(name: "North Berkeley",
                                abbreviation: "NBRK",
                                latitude: 37.87404,
                                longitude: -122.283451,
                                address: "1750 Sacramento Street",
                                city: "Berkeley",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94702")
BartStation.find_or_create_by!(name: "North Concord/Martinez",
                                abbreviation: "NCON",
                                latitude: 38.003275,
                                longitude: -122.024597,
                                address: "3700 Port Chicago Highway",
                                city: "Concord",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94520")
BartStation.find_or_create_by!(name: "Oakland Int'l Airport",
                                abbreviation: "OAKL",
                                latitude: 37.71297174,
                                longitude: -122.21244024,
                                address: "4 Airport Drive",
                                city: "Oakland",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94621")
BartStation.find_or_create_by!(name: "Orinda",
                                abbreviation: "ORIN",
                                latitude: 37.87836087,
                                longitude: -122.1837911,
                                address: "11 Camino Pablo",
                                city: "Orinda",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94563")
BartStation.find_or_create_by!(name: "Pittsburg/Bay Point",
                                abbreviation: "PITT",
                                latitude: 38.018914,
                                longitude: -121.945154,
                                address: "1700 West Leland Road",
                                city: "Pittsburg",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94565")
BartStation.find_or_create_by!(name: "Pleasant Hill/Contra Costa Centre",
                                abbreviation: "PHIL",
                                latitude: 37.928403,
                                longitude: -122.056013,
                                address: "1365 Treat Blvd.",
                                city: "Walnut Creek",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94597")
BartStation.find_or_create_by!(name: "Powell St.",
                                abbreviation: "POWL",
                                latitude: 37.784991,
                                longitude: -122.406857,
                                address: "899 Market Street",
                                city: "San Francisco",
                                county: "sanfrancisco",
                                state: "CA",
                                zipcode: "94102")
BartStation.find_or_create_by!(name: "Richmond",
                                abbreviation: "RICH",
                                latitude: 37.936887,
                                longitude: -122.353165,
                                address: "1700 Nevin Avenue",
                                city: "Richmond",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94801")
BartStation.find_or_create_by!(name: "Rockridge",
                                abbreviation: "ROCK",
                                latitude: 37.844601,
                                longitude: -122.251793,
                                address: "5660 College Avenue",
                                city: "Oakland",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94618")
BartStation.find_or_create_by!(name: "San Bruno",
                                abbreviation: "SBRN",
                                latitude: 37.637753,
                                longitude: -122.416038,
                                address: "1151 Huntington Avenue",
                                city: "San Bruno",
                                county: "sanmateo",
                                state: "CA",
                                zipcode: "94066")
BartStation.find_or_create_by!(name: "San Francisco Int'l Airport",
                                abbreviation: "SFIA",
                                latitude: 37.616035,
                                longitude: -122.392612,
                                address: "International Terminal, Level 3",
                                city: "San Francisco Int'l Airport",
                                county: "sanmateo",
                                state: "CA",
                                zipcode: "94128")
BartStation.find_or_create_by!(name: "San Leandro",
                                abbreviation: "SANL",
                                latitude: 37.72261921,
                                longitude: -122.1613112,
                                address: "1401 San Leandro Blvd.",
                                city: "San Leandro",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94577")
BartStation.find_or_create_by!(name: "South Hayward",
                                abbreviation: "SHAY",
                                latitude: 37.63479954,
                                longitude: -122.0575506,
                                address: "28601 Dixon Street",
                                city: "Hayward",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94544")
BartStation.find_or_create_by!(name: "South San Francisco",
                                abbreviation: "SSAN",
                                latitude: 37.664174,
                                longitude: -122.444116,
                                address: "1333 Mission Road",
                                city: "South San Francisco",
                                county: "sanmateo",
                                state: "CA",
                                zipcode: "94080")
BartStation.find_or_create_by!(name: "Union City",
                                abbreviation: "UCTY",
                                latitude: 37.591208,
                                longitude: -122.017867,
                                address: "10 Union Square",
                                city: "Union City",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94587")
BartStation.find_or_create_by!(name: "Walnut Creek",
                                abbreviation: "WCRK",
                                latitude: 37.905628,
                                longitude: -122.067423,
                                address: "200 Ygnacio Valley Road",
                                city: "Walnut Creek",
                                county: "contracosta",
                                state: "CA",
                                zipcode: "94596")
BartStation.find_or_create_by!(name: "West Dublin/Pleasanton",
                                abbreviation: "WDUB",
                                latitude: 37.699759,
                                longitude: -121.928099,
                                address: "6501 Golden Gate Drive",
                                city: "Dublin",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94568")
BartStation.find_or_create_by!(name: "West Oakland",
                                abbreviation: "WOAK",
                                latitude: 37.80467476,
                                longitude: -122.2945822,
                                address: "1451 7th Street",
                                city: "Oakland",
                                county: "alameda",
                                state: "CA",
                                zipcode: "94607")
