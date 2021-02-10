*** Settings ***
Library  OperatingSystem
Library  DatabaseLibrary
Suite Setup       Connect To Database    pymssql  ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}

*** Variables ***
${DBName}           AdventureWorksDW2008R2
${DBUser}           sa
${DBPass}           abhi
${DBHost}           localhost
${DBPort}           1434

*** Test Cases ***
featch data
    @{output}=  Query  select * from dbo.DimCurrency;
    log to console  many  @{output}

