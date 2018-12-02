
require './app/models/composer'
require './app/models/symphony'

Composer.destroy_all
Symphony.destroy_all

Composer.create(surname: "Haydn", forename: "Franz Joseph", city: "Vienna", dob: 1732, dod: 1809, age: 77, thumbnail: "/images/haydn.jpg")
Composer.create(surname: "Mozart", forename: "Wolfgang Amadeus", city: "Vienna", dob: 1756, dod: 1791, age: 35, thumbnail: "/images/mozart.jpg")
Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")
Composer.create(surname: "Schubert", forename: "Franz", city: "Vienna", dob: 1797, dod: 1828, age: 31, thumbnail: "/images/schubert.jpg")
Composer.create(surname: "Berlioz", forename: "Hector", city: "Paris", dob: 1803, dod: 1869, age: 65, thumbnail: "/images/berlioz.jpg")
Composer.create(surname: "Mendelsohn", forename: "Felix", city: "Leipzig", dob: 1809, dod: 1847, age: 38, thumbnail: "/images/mendelssohn.jpg")
Composer.create(surname: "Bruckner", forename: "Anton", city: "Vienna", dob: 1824, dod: 1896, age: 72, thumbnail: "/images/bruckner.jpg")
Composer.create(surname: "Brahms", forename: "Johannes", city: "Vienna", dob: 1833, dod: 1897, age: 63, thumbnail: "/images/brahms.jpg")
Composer.create(surname: "Borodin", forename: "Alexander", city: "St. Petersburg", dob: 1833, dod: 1887, age: 53, thumbnail: "/images/borodin.jpg")
Composer.create(surname: "Saint-Saëns", forename: "Camille", city: "Paris", dob: 1835, dod: 1921, age: 86, thumbnail: "/images/saint-saens.jpg")
Composer.create(surname: "Tchaikovsky", forename: "Pyotr Ilyich", city: "St. Petersburg", dob: 1840, dod: 1893, age: 53, thumbnail: "/images/tchaikovsky.jpg")
Composer.create(surname: "Dvořák", forename: "Antonin", city: "Prague", dob: 1841, dod: 1904, age: 62, thumbnail: "/images/dvorak.jpg")
Composer.create(surname: "Mahler", forename: "Gustav", city: "Vienna", dob: 1860, dod: 1911, age: 50, thumbnail: "/images/mahler.jpg")
Composer.create(surname: "Sibelius", forename: "Jean", city: "Helsinki", dob: 1865, dod: 1957, age: 91, thumbnail: "/images/sibelius.jpg")
Composer.create(surname: "Rachmininoff", forename: "Sergei", city: "New York", dob: 1873, dod: 1943, age: 69, thumbnail: "/images/rachmaninoff.jpg")
Composer.create(surname: "Copeland", forename: "Aaron", city: "New York", dob: 1900, dod: 1990, age: 90, thumbnail: "/images/copeland.jpg")
Composer.create(surname: "Shostakovich", forename: "Dmitri", city: "Moscow", dob: 1906, dod: 1975, age: 68, thumbnail: "/images/shostakovich.jpg")
Composer.create(surname: "Górecki", forename: "Henryk", city: "Katowice", dob: 1933, dod: 2010, age: 76, thumbnail: "/images/gorecki.jpg")
Composer.create(surname: "Franck", forename: "César", city: "Paris", dob: 1822, dod: 1890, age: 67, thumbnail: "/images/franck.jpg")


Symphony.create(name: "Symphony No. 83", key: "G minor", opus: "Hob. 1/83", moniker: "The Hen", year: 1785, runtime: 30, composer_id: 1)
Symphony.create(name: "Symphony No. 94", key: "G major", opus: "Hob. 1/94", moniker: "Surprise", year: 1791, runtime: 22, composer_id: 1)
Symphony.create(name: "Symphony No. 101", key: "D major", opus: "Hob. 1/101", moniker: "Clock", year: 1794, runtime: 29, composer_id: 1)
Symphony.create(name: "Symphony No. 82", key: "C major", opus: "Hob. 1/82", moniker: "The Bear", year: 1786, runtime: 26, composer_id: 1)
Symphony.create(name: "Symphony No. 96", key: "D major", opus: "Hob. 1/96", moniker: "Miracle", year: 1791, runtime: 21, composer_id: 1)
Symphony.create(name: "Symphony No. 100", key: "G major", opus: "Hob. 1/100", moniker: "Military", year: 1794, runtime: 25, composer_id: 1)
Symphony.create(name: "Symphony No. 44", key: "E-minor", opus: "Hob. 1/44", moniker: "Trauer", year: 1772, runtime: 29, composer_id: 1)
Symphony.create(name: "Symphony No. 88", key: "G major", opus: "Hob. 1/88", moniker: "", year: 1787, runtime: 20, composer_id: 1)
Symphony.create(name: "Symphony No. 104", key: "D major", opus: "Hob. 1/104", moniker: "London", year: 1795, runtime: 28, composer_id: 1)
Symphony.create(name: "Symphony No. 45", key: "F-sharp minor", opus: "Hob. 1/845", moniker: "Farewell", year: 1772, runtime: 27, composer_id: 1)
Symphony.create(name: "Symphony No. 48", key: "C major", opus: "Hob. 1/48", moniker: "Maria Theresa", year: 1769, runtime: 23, composer_id: 1)
Symphony.create(name: "Symphony No. 102", key: "B-flat major", opus: "Hob. 1/102", moniker: "", year: 1794, runtime: 24, composer_id: 1)
Symphony.create(name: "Symphony No. 85", key: "B-flat major", opus: "Hob. 1/85", moniker: "La Reine", year: 1785, runtime: 21, composer_id: 1)
Symphony.create(name: "Symphony No. 93", key: "D major", opus: "Hob. 1/93", moniker: "", year: 1791, runtime: 22, composer_id: 1)

Symphony.create(name: "Symphony No. 25", key: "G minor", opus: "K 183", moniker: "Little G Minor", year: 1773, runtime: 23, composer_id: 2)
Symphony.create(name: "Symphony No. 31", key: "D major", opus: "K 297", moniker: "Paris", year: 1778, runtime: 20, composer_id: 2)
Symphony.create(name: "Symphony No. 35", key: "D major", opus: "K 385", moniker: "Haffner", year: 1782, runtime: 22, composer_id: 2)
Symphony.create(name: "Symphony No. 38", key: "D major", opus: "K 504", moniker: "Prague", year: 1786, runtime: 37, composer_id: 2)
Symphony.create(name: "Symphony No. 39", key: "E-flat major", opus: "K 543", moniker: "", year: 1788, runtime: 30, composer_id: 2)
Symphony.create(name: "Symphony No. 40", key: "G minor", opus: "K 550", moniker: "", year: 1788, runtime: 34, composer_id: 2)
Symphony.create(name: "Symphony No. 41", key: "C major", opus: "K 551", moniker: "Jupiter", year: 1788, runtime: 38, composer_id: 2)

Symphony.create(name: "Symphony No. 1", key: "C major", opus: "Op. 21", moniker: "", year: 1800, runtime: 24, composer_id: 3)
Symphony.create(name: "Symphony No. 2", key: "D major", opus: "Op. 36", moniker: "", year: 1802, runtime: 33, composer_id: 3)
Symphony.create(name: "Symphony No. 3", key: "E-flat major", opus: "Op. 55", moniker: "Eroica", year: 1804, runtime: 44, composer_id: 3)
Symphony.create(name: "Symphony No. 4", key: "B-flat major", opus: "Op. 60", moniker: "", year: 1806, runtime: 32, composer_id: 3)
Symphony.create(name: "Symphony No. 5", key: "C minor", opus: "Op. 67", moniker: "", year: 1807, runtime: 32, composer_id: 3)
Symphony.create(name: "Symphony No. 6", key: "F major", opus: "Op. 68", moniker: "Pastoral", year: 1808, runtime: 41, composer_id: 3)
Symphony.create(name: "Symphony No. 7", key: "A major", opus: "Op. 92", moniker: "", year: 1812, runtime: 39, composer_id: 3)
Symphony.create(name: "Symphony No. 8", key: "F major", opus: "Op. 93", moniker: "The Little", year: 1812, runtime: 24, composer_id: 3)
Symphony.create(name: "Symphony No. 9", key: "D minor", opus: "Op. 125", moniker: "Choral", year: 1824, runtime: 60, composer_id: 3)

Symphony.create(name: "Symphony No. 9", key: "C major", opus: "D 944", moniker: "Great C major", year: 1828, runtime: 62, composer_id: 4)
Symphony.create(name: "Symphony No. 8", key: "B minor", opus: "D 759", moniker: "Unfinished", year: 1822, runtime: 25, composer_id: 4)
Symphony.create(name: "Symphony No. 6", key: "C major", opus: "D 589", moniker: "Little C major", year: 1818, runtime: 31, composer_id: 4)
Symphony.create(name: "Symphony No. 5", key: "B-flat major", opus: "D 485", moniker: "", year: 1816, runtime: 27, composer_id: 4)
Symphony.create(name: "Symphony No. 4", key: "C minor", opus: "D 417", moniker: "Tragic", year: 1816, runtime: 32, composer_id: 4)

Symphony.create(name: "Symphonie Fantastique", key: "C major", opus: "Op. 14", moniker: "", year: 1830, runtime: 57, composer_id: 5)

Symphony.create(name: "Symphony No. 5", key: "D major/D minor", opus: "Op. 107", moniker: "Reformation", year: 1830, runtime: 28, composer_id: 6)
Symphony.create(name: "Symphony No. 4", key: "A major", opus: "Op. 90", moniker: "Italian", year: 1834, runtime: 28, composer_id: 6)
Symphony.create(name: "Symphony No. 3", key: "A minor", opus: "Op. 56", moniker: "Scottish", year: 1842, runtime: 40, composer_id: 6)

Symphony.create(name: "Symphony No. 8", key: "C minor", opus: "WAB 108", moniker: "", year: 1890, runtime: 81, composer_id: 7)
Symphony.create(name: "Symphony No. 7", key: "E major", opus: "WAB 107", moniker: "", year: 1883, runtime: 65, composer_id: 7)

Symphony.create(name: "Symphony No. 1", key: "C minor", opus: "Op. 68", moniker: "", year: 1876, runtime: 44, composer_id: 8)
Symphony.create(name: "Symphony No. 2", key: "D major", opus: "Op. 73", moniker: "", year: 1877, runtime: 39, composer_id: 8)
Symphony.create(name: "Symphony No. 3", key: "F major", opus: "Op. 90", moniker: "", year: 1883, runtime: 32, composer_id: 8)
Symphony.create(name: "Symphony No. 4", key: "E minor", opus: "Op. 98", moniker: "", year: 1885, runtime: 40, composer_id: 8)

Symphony.create(name: "Symphony No. 2", key: "B minor", opus: "IAB 18", moniker: "", year: 1876, runtime: 30, composer_id: 9)

Symphony.create(name: "Symphony No. 3", key: "C minor", opus: "Op. 78", moniker: "Organ Sympony", year: 1886, runtime: 36, composer_id: 10)

Symphony.create(name: "Symphony No. 6", key: "B minor", opus: "Op. 74", moniker: "Pathétique", year: 1893, runtime: 43, composer_id: 11)
Symphony.create(name: "Symphony No. 5", key: "E minor", opus: "Op. 64", moniker: "", year: 1888, runtime: 47, composer_id: 11)
Symphony.create(name: "Manfred Symphony", key: "B minor", opus: "Op. 58", moniker: "", year: 1858, runtime: 53, composer_id: 11)
Symphony.create(name: "Symphony No. 4", key: "F minor", opus: "Op. 36", moniker: "", year: 1878, runtime: 41, composer_id: 11)

Symphony.create(name: "Symphony No. 9", key: "E minor", opus: "Op. 95", moniker: "New World", year: 1893, runtime: 43, composer_id: 12)
Symphony.create(name: "Symphony No. 5", key: "F major", opus: "Op. 76", moniker: "", year: 1880, runtime: 38, composer_id: 12)

Symphony.create(name: "Symphony No. 9", key: "D major/D-flat major", opus: "", moniker: "", year: 1910, runtime: 90, composer_id: 13)
Symphony.create(name: "Symphony No. 2", key: "C minor/E-flat major", opus: "", moniker: "Ressurection", year: 1894, runtime: 89, composer_id: 13)
Symphony.create(name: "Symphony No. 3", key: "D minor", opus: "", moniker: "", year: 1896, runtime: 99, composer_id: 13)
Symphony.create(name: "Das Lied von der Erde", key: "A minor/C major", opus: "", moniker: "", year: 1908, runtime: 61, composer_id: 13)
Symphony.create(name: "Symphony No. 8", key: "E-flat major", opus: "", moniker: "Symphony of a Thousand", year: 1906, runtime: 82, composer_id: 13)

Symphony.create(name: "Symphony No. 7", key: "C major", opus: "Op. 105", moniker: "", year: 1924, runtime: 23, composer_id: 14)

Symphony.create(name: "Symphony No. 2", key: "E minor", opus: "Op. 27", moniker: "", year: 1907, runtime: 56, composer_id: 15)
Symphony.create(name: "Symphony No. 3", key: "", opus: "", moniker: "", year: 1946, runtime: 45, composer_id: 16)

Symphony.create(name: "Symphony No. 5", key: "D minor", opus: "Op. 47", moniker: "", year: 1937, runtime: 44, composer_id: 17)

Symphony.create(name: "Symphony No. 3", key: "", opus: "Op. 36", moniker: "Symphony of Sorrowful Songs", year: 1976, runtime: 53, composer_id: 18)
Symphony.create(name: "Symphony", key: "D minor", opus: "", moniker: "", year: 1888, runtime: 37, composer_id: 19)
