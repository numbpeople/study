*** Test Cases ***
return form keyword
    ${a}    Set Variable    abc
    Comment    Run Keyword If    "${a}" == "abc"    log    abc    #如果条件为true运行log
    Comment    Run Keyword And Return If    "${a}" == "abc"    log    abc
    Return From Keyword If    "${a}" == "abc"    ${a}
    comment    ${b}    Return From Keyword If    "${a}" == "abc"    bc

random
    ${str}    Evaluate    string.ascii_letters    string
    ${len}    Get Length    ${str}
    ${num}    Set Variable    10
    ${newname}    Set Variable    ${EMPTY}
    FOR    ${index}    IN RANGE    ${num}
    ${i}    Evaluate    random.randint(0,int(${len})-1)    random
    ${tmp}    Set Variable    ${str[int(${i})-1]}
    ${newname}    Set Variable    ${newname}${tmp}
    log    ${newname}

random.randit
    ${num}    Evaluate    random.randint(1,10)    random    
    
    ${LOG_FILE}    ${LOG_FILE}
