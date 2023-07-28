@LookupFeature
Feature: iTunes Lookup Feature
  I want to validate the Lookup API with differnt values

  Scenario Outline: Validate the Lookup API with single param
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue |
      | id             |     909253 |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |           1 |

  Scenario Outline: Validate the Lookup API with unique id
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue |
      | id             |  284910350 |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |           1 |

  Scenario Outline: Validate the Lookup API with artist id
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue |
      | amgArtistId    |     468749 |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |           1 |

  Scenario Outline: Validate the Lookup API with multiple artist ids
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue  |
      | amgArtistId    | 468749,5723 |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |           2 |

  Scenario Outline: Validate the Lookup API with id, entity
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue |
      | id             |     909253 |
      | entity         | album      |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          45 |

  Scenario Outline: Validate the Lookup API with Artistid, limit, entity
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue  |
      | amgArtistId    | 468749,5723 |
      | limit          |           5 |
      | entity         | album       |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          12 |

  Scenario Outline: Validate the Lookup API with Artistid, limit, entity, sort
    Given Search the lookup with single or multiple parameter
      | queryParameter | paramValue  |
      | amgArtistId    | 468749,5723 |
      | limit          |           5 |
      | entity         | album       |
      | sort           | recent      |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          12 |
