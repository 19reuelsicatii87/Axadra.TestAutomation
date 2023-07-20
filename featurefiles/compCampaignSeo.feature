@COMP_Campaign_Seo_Keywords
Feature: COMP > Partner > Campaign > SEO

  Background: 

  #Given User navigates to "https://account.seoreseller.com/login" using "chrome"
  #And User enter the username as "reuel+01@axadra.com"
  #And User enter the password as "asdasdasd"
  #And User click on the login button
  #Then User is successfully login
  #When User navigates to "https://account.seoreseller.com/pro/audits"
  #And User generates a WebAuditReport
  @Add_And_Remove_Single_Keyword_From_Trash_Button
  Scenario Outline: Add and Remove Single Keyword from Trash button
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "<username>"
    And User enter the password as "<password>"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<campaignKeywordUrl>"
    And User remove a single "<keyword>" from Trash button
    And User add a single "<keyword>"
    And User see Add Keyword modal
    And User close Add Keyword modal
    And User remove a single "<keyword>" from Trash button

    Examples: 
      | browser | loginUrl                           | campaignKeywordUrl                                                         | username         | password  | keyword                         |
      | chrome  | https://compass.trendup.asia/login | https://compass.trendup.asia/clients/bucket/1/35505/project/37031/keywords | reuel@axadra.com | asdasdasd | aa real estate agent green lake |
      | chrome  | https://compass.trendup.asia/login | https://compass.trendup.asia/clients/bucket/1/35505/project/37031/keywords | reuel@axadra.com | asdasdasd | ab real estate agent green lake |

  @Add_And_Remove_Single_Keyword_From_Remove_Button
  Scenario Outline: Add and Remove Single Keyword from Remove button
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "<username>"
    And User enter the password as "<password>"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<campaignKeywordUrl>"
    And User remove a single "<keyword>" from Remove button
    And User add a single "<keyword>"
    And User see Add Keyword modal
    And User close Add Keyword modal
    And User remove a single "<keyword>" from Remove button

    Examples: 
      | browser | loginUrl                           | campaignKeywordUrl                                                         | username         | password  | keyword                         |
      | chrome  | https://compass.trendup.asia/login | https://compass.trendup.asia/clients/bucket/1/35505/project/37031/keywords | reuel@axadra.com | asdasdasd | ac real estate agent green lake |
      | chrome  | https://compass.trendup.asia/login | https://compass.trendup.asia/clients/bucket/1/35505/project/37031/keywords | reuel@axadra.com | asdasdasd | ad real estate agent green lake |

  @Add_And_Remove_Multiple_Keyword_From_Trash_Button
  Scenario Outline: Add and Remove Multiple Keyword from Trash button
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "<username>"
    And User enter the password as "<password>"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<campaignKeywordUrl>"
    And User remove a multiple "<keyword>" from Trash button
    And User add a multiple "<keyword>"
    And User see Add Keyword modal
    And User close Add Keyword modal
    And User remove a multiple "<keyword>" from Trash button

    Examples: 
      | browser | loginUrl                           | campaignKeywordUrl                                                         | username         | password  | keyword                                                     |
      | chrome  | https://compass.trendup.asia/login | https://compass.trendup.asia/clients/bucket/1/35505/project/37031/keywords | reuel@axadra.com | asdasdasd | ba real estate,bb real estate,bc real estate,bd real estate |

  @Add_And_Remove_Multiple_Keyword_From_Remove_Button
  Scenario Outline: Add and Remove Multiple Keyword from Remove button
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "<username>"
    And User enter the password as "<password>"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<campaignKeywordUrl>"
    And User remove a multiple "<keyword>" from Remove button
    And User add a multiple "<keyword>"
    And User see Add Keyword modal
    And User close Add Keyword modal
    And User remove a multiple "<keyword>" from Remove button

    Examples: 
      | browser | loginUrl                           | campaignKeywordUrl                                                         | username         | password  | keyword                                                     |
      | chrome  | https://compass.trendup.asia/login | https://compass.trendup.asia/clients/bucket/1/35505/project/37031/keywords | reuel@axadra.com | asdasdasd | aa real estate,ab real estate,ac real estate,ad real estate |

  @Add_Single_Duplicate_Keyword
  Scenario Outline: Add Single Duplicate Keyword
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "<username>"
    And User enter the password as "<password>"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<campaignKeywordUrl>"
    And User add a single "<keyword>"
    And User see Duplicate Keyword modal

    Examples: 
      | browser | loginUrl                           | campaignKeywordUrl                                                         | username         | password  | keyword               |
      | chrome  | https://compass.trendup.asia/login | https://compass.trendup.asia/clients/bucket/1/35505/project/37031/keywords | reuel@axadra.com | asdasdasd | duplicate real estate |

  @Add_Mulitple_Duplicate_Keyword
  Scenario Outline: Add Multiple Duplicate Keyword
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "<username>"
    And User enter the password as "<password>"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<campaignKeywordUrl>"
    And User add a multiple "<keyword>"
    And User see Duplicate Keyword modal

    Examples: 
      | browser | loginUrl                           | campaignKeywordUrl                                                         | username         | password  | keyword                                        |
      | chrome  | https://compass.trendup.asia/login | https://compass.trendup.asia/clients/bucket/1/35505/project/37031/keywords | reuel@axadra.com | asdasdasd | duplicate real estate, duplicate real estate 1 |

  @KeywordCount_Between_Keyword_And_Summary_And_Trend
  Scenario Outline: KeywordCount Between Keyword And Summary And Trend
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "reuel@axadra.com"
    And User enter the password as "asdasdasd"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<campaignKeywordUrl>"
    And User compares KeywordCount over Keyword "<campaignKeywordUrl>"
    #When User navigates to "<campaignTrendUrl>"
    #And User compares KeywordCount over Trend "<campaignTrendUrl>"
    #When User navigates to "<campaignSummaryUrl>"
    #And User compares KeywordCount over Summary "<campaignSummaryUrl>"

    Examples: 
      | browser | loginUrl                           | campaignKeywordUrl                                                        | campaignTrendUrl                                                     | campaignSummaryUrl                                                               |
      | chrome  | https://compass.trendup.asia/login | https://compass.trendup.asia/clients/bucket/1/5703/project/34246/keywords | https://compass.trendup.asia/clients/bucket/1/5703/project/34246/seo | https://compass.trendup.asia/clients/bucket/1/5703/project/34246/ranking_summary |