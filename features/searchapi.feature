Feature: iTunes Search Feature
  I want to validate the Search API with differnt values

  @singleQueryParam
  Scenario Outline: Validate the Search API with single query param term
    Given Search the iTunes with single parameter
      | queryParameter | paramValue   |
      | term           | jack+johnson |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          50 |

  @multipleParamsLimit
  Scenario Outline: Validate the Search API with multiple params term, limit
    Given Search the iTunes with single parameter
      | queryParameter | paramValue   |
      | term           | jack+johnson |
      | limit          |           25 |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          25 |

  @multipleParamsEntity
  Scenario Outline: Validate the Search API with multiple params term, entity
    Given Search the iTunes with single parameter
      | queryParameter | paramValue   |
      | term           | jack+johnson |
      | entity         | musicVideo   |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          15 |

  @multipleParamsCountry
  Scenario Outline: Validate the Search API with multiple params term, country
    Given Search the iTunes with single parameter
      | queryParameter | paramValue |
      | term           | jim+jones  |
      | country        | ca         |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          50 |

  @multipleParamsCountry
  Scenario Outline: Validate the Search API with multiple params term, country, entity
    Given Search the iTunes with single parameter
      | queryParameter | paramValue |
      | term           | jim+jones  |
      | country        | us         |
      | entity         | musicVideo   |
    Then validate the values "<validateParam>" "<validateVal>"

    Examples: 
      | validateParam | validateVal |
      | resultCount   |          50 |