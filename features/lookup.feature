@LookupFeature
Feature: iTunes Lookup Feature
  I want to validate the Lookup API with differnt values

  Scenario Outline: Validate the Lookup API with single param
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue   |
      | id          | 909253  |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          1 |

  Scenario Outline: Validate the Search API
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue   |
      | id          | 284910350  |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          1 |

  Scenario Outline: Validate the Search API
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue   |
      | amgArtistId           | 468749|
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          1 |

  Scenario Outline: Validate the Search API
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue |
      | amgArtistId           | 468749,5723  |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          2 |

  Scenario Outline: Validate the Search API
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue |
      | id          | 909253  |
      | entity         | album   |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          45 |