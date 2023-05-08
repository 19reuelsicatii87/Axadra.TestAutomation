@SEOR_AgencyTools_GbpScorer
Feature: SEOR > Agency Tools > WebAudit

  Background: 

  #Given User navigates to "https://account.seoreseller.com/login" using "chrome"
  #And User enter the username as "reuel+01@axadra.com"
  #And User enter the password as "asdasdasd"
  #And User click on the login button
  #Then User is successfully login
  #When User navigates to "https://account.seoreseller.com/pro/audits"
  #And User generates a WebAuditReport
  @WebAuditReportSummary
  Scenario Outline: Generate WebAudit Report and validate Summary section
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "reuel+01@axadra.com"
    And User enter the password as "asdasdasd"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<webAuditUrl>"
    And User clicks the most recent WebAuditReport
    Then User sees a new tab is open rendering the WebAuditReport
    And User sees the Summary Section > Grades SubSection is correct
    And User sees the Summary Section > WebSite Score SubSection is correct
    And User sees the Summary Section > Verdict Table SubSection is correct

    Examples: 
      | browser | loginUrl                              | webAuditUrl                                |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/audits |

  @WebAuditReportUsability
  Scenario Outline: Generate WebAudit Report and validate Usability section
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "reuel+01@axadra.com"
    And User enter the password as "asdasdasd"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<webAuditUrl>"
    And User clicks the most recent WebAuditReport
    Then User sees a new tab is open rendering the WebAuditReport
    And User sees the Usability Section > Mobile Friendliness SubSection is correct
    And User sees the Usability Section > Google Analytics Found SubSection is correct
    And User sees the Usability Section > Page Speed Insight SubSection is correct

    Examples: 
      | browser | loginUrl                              | webAuditUrl                                |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/audits |

  @WebAuditReportSecurity
  Scenario Outline: Generate WebAudit Report and validate Security section
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "reuel+01@axadra.com"
    And User enter the password as "asdasdasd"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<webAuditUrl>"
    And User clicks the most recent WebAuditReport
    Then User sees a new tab is open rendering the WebAuditReport
    And User scroll to Security Section
    And User sees the Security Section > SSL SubSection is correct
    And User sees the Security Section > Malware SubSection is correct
    And User sees the Security Section > HTTPS SubSection is correct
    And User sees the Security Section > Blacklisted SubSection is correct

    Examples: 
      | browser | loginUrl                              | webAuditUrl                                |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/audits |

  @WebAuditReportOrganicTrafficTechnicalSEO
  Scenario Outline: Generate WebAudit Report and validate Organic Traffic > Technical SEO section
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "reuel+01@axadra.com"
    And User enter the password as "asdasdasd"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<webAuditUrl>"
    And User clicks the most recent WebAuditReport
    Then User sees a new tab is open rendering the WebAuditReport
    And User scroll to Organic Traffic Section
    And User sees the Organic Traffic > Technical SEO > Sitemap SubSection is correct
    And User sees the Organic Traffic > Technical SEO > Robot SubSection is correct
    And User sees the Organic Traffic > Technical SEO > Redirection SubSection is correct

    Examples: 
      | browser | loginUrl                              | webAuditUrl                                |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/audits |

  @WebAuditReportOrganicTrafficOnPageSEO
  Scenario Outline: Generate WebAudit Report and validate Organic Traffic > OnPage SEO section
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "reuel+01@axadra.com"
    And User enter the password as "asdasdasd"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<webAuditUrl>"
    And User clicks the most recent WebAuditReport
    Then User sees a new tab is open rendering the WebAuditReport
    And User scroll to Organic Traffic Section
    And User sees the Organic Traffic > OnPage SEO > Title SubSection is correct
    And User sees the Organic Traffic > OnPage SEO > Description SubSection is correct
    And User sees the Organic Traffic > OnPage SEO > Heading SubSection is correct
    And User sees the Organic Traffic > OnPage SEO > Images SubSection is correct

    Examples: 
      | browser | loginUrl                              | webAuditUrl                                |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/audits |

  @WebAuditReportOrganicTrafficOffPageSEO
  Scenario Outline: Generate WebAudit Report and validate Organic Traffic > OffPage SEO section
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "reuel+01@axadra.com"
    And User enter the password as "asdasdasd"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<webAuditUrl>"
    And User clicks the most recent WebAuditReport
    Then User sees a new tab is open rendering the WebAuditReport
    And User scroll to Organic Traffic Section
    And User sees the Organic Traffic > OffPage SEO > Backlinks SubSection is correct
    And User sees the Organic Traffic > OffPage SEO > MOZ Domain Authority SubSection is correct
    And User sees the Organic Traffic > OffPage SEO > MOZ Page Authority SubSection is correct
    And User sees the Organic Traffic > OffPage SEO > Majestic Citation Flow SubSection is correct
    And User sees the Organic Traffic > OffPage SEO > Majestic Trust Flow SubSection is correct

    Examples: 
      | browser | loginUrl                              | webAuditUrl                                |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/audits |

  @WebAuditReportPaidTraffic
  Scenario Outline: Generate WebAudit Report and validate Paid Traffic
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "reuel+01@axadra.com"
    And User enter the password as "asdasdasd"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<webAuditUrl>"
    And User clicks the most recent WebAuditReport
    Then User sees a new tab is open rendering the WebAuditReport
    And User scroll to Paid Traffic Section
    And User sees the Paid Traffic > Estimated Traffic SubSection is correct
    And User sees the Paid Traffic > Keyword Detected SubSection is correct
    And User sees the Paid Traffic > Average Position SubSection is correct
    And User sees the Paid Traffic > SEMvsSEO Ratio SubSection is correct

    Examples: 
      | browser | loginUrl                              | webAuditUrl                                |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/audits |

  @GbpScorerReportRecentReview
  Scenario Outline: Generate GBPScorer Report and validate Recent Review
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "reuel+01@axadra.com"
    And User enter the password as "asdasdasd"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<webAuditUrl>"
    And User clicks the most recent GBPScorer Report
    Then User sees a new tab is open rendering the GBPScorer Report
    And User scroll to Recent Review Section
    And User sees the Recent Review Section is correct

    Examples: 
      | browser | loginUrl                              | webAuditUrl                                |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/gbp-report |

  @GenerateGbpScorerReport
  Scenario Outline: Generate GBP Scorer Report
    Given User navigates to "<loginUrl>" using "<browser>"
    And User enter the username as "<username>"
    And User enter the password as "<password>"
    And User click on the login button
    Then User is successfully login
    When User navigates to "<gbpScorerUrl>"
    And User generates a GbpScorerReport

    Examples: 
      | browser | loginUrl                              | gbpScorerUrl                                   | username                 | password        |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/gbp-report | reuel+01@axadra.com      | asdasdasd       |
      | chrome  | https://account.seoreseller.com/login | https://account.seoreseller.com/pro/gbp-report | clayton@truelogic.com.ph | aGXYwqhPeAV4j7J |
