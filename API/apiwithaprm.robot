*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary
Suite Setup   Create Session  baseurl  https://reqres.in

*** Test Cases ***
api_withparm
   &{parm}=  create dictionary  page=2
  # ${response}=    get on session  baseurl  /search?  &{parm}:DNA
   ${response}=    get on session  baseurl  /api/users  params=&{parm}
  #   http://api.plos.org/search?q=title:DNA
   log to console  ${response.json()}
2nd url
    create session  url2    http://api.plos.org
    ${par2}=    create dictionary  q=title:DNA
    ${response2}=   get on session  url2    /search  params=${par2}
    log to console  ${response2.json()}
    log to console  ${response2}
