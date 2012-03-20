Feature: display list of movies sorted by different criteria
 
  As an avid moviegoer
  So that I can quickly browse movies based on my preferences
  I want to see movies sorted by title or release date

Background: movies have been added to database
  
  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And I am on the RottenPotatoes home page

Scenario: sort movies alphabetically
  Given all movies have been selected
  When I follow "Movie Title"
  Then the results should be sorted:
  | before                  | after                   |
  | 2001: A Space Odyssey   | Aladdin                 |
  | Aladdin                 | Amelie                  |
  | Amelie                  | Chicken Run             |
  | Chicken Run             | Chocolat                |
  | Chocolat                | Raiders of the Lost Ark |
  | Raiders of the Lost Ark | The Help                |
  | The Help                | The Incredibles         |
  | The Incredibles         | The Terminator          |
  | The Terminator          | When Harry Met Sally    |

Scenario: sort movies in increasing order of release date
  Given all movies have been selected
  When I follow "Release Date"
  Then the results should be sorted:
  | before                  | after                   |
  | 2001: A Space Odyssey   | Raiders of the Lost Ark |
  | Raiders of the Lost Ark | The Terminator          |
  | The Terminator          | When Harry Met Sally    |
  | When Harry Met Sally    | Aladdin                 |
  | Aladdin                 | Chicken Run             |
  | Chicken Run             | Chocolat                |
  | Chocolat                | Amelie                  |
  | Amelie                  | The Incredibles         |
  | The Incredibles         | The Help                |


