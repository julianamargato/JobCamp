*** Settings ***

Library  SeleniumLibrary
Resource  ${EXECDIR}/Pages/trabalhe_conosco.robot
Suite Setup  Open Browser  about:blank  chrome
Suite Teardown  Close Browser

*** Variables ***
${url}=  https://www.primecontrol.com.br/trabalhe-conosco/

*** Test Cases ***
Test
    Go To  ${url}
    Click Element  ${trabalheConosco.btnAccept}
    Click Element  ${trabalheConosco.btnCadastrarCurriculo}
    Switch Window  New
    Input Text  ${trabalheConosco.nome}  ${preencheFormulario.nome}
    Input Text  ${trabalheConosco.cargo}  ${preencheFormulario.cargo}
    Input Text  ${trabalheConosco.salario}  ${preencheFormulario.salario}
    Input Text  ${trabalheConosco.email}  ${preencheFormulario.email}
    Input Text  ${trabalheConosco.telefone}  ${preencheFormulario.telefone}
    Select From List By Value  ${trabalheConosco.cmbpais}  ${preencheFormulario.cmbpais}
    Input Text  ${trabalheConosco.estado}  ${preencheFormulario.estado}
    Input Text  ${trabalheConosco.cidade}  ${preencheFormulario.cidade}
    Input Text  ${trabalheConosco.bairro}  ${preencheFormulario.bairro}
    Input Text  ${trabalheConosco.endereço}  ${preencheFormulario.endereço}
    Input Text  ${trabalheConosco.cep}  ${preencheFormulario.cep}
    Input Text  ${trabalheConosco.resumo}  ${preencheFormulario.resumo}
    Choose File  ${trabalheConosco.curriculo}  ${EXECDIR}/Currículo.pdf
    Wait Until Page Contains  Currículo.pdf  30
    Scroll Element Into View  ${trabalheConosco.btnTermos}
    Select Checkbox  ${trabalheConosco.btnTermos}
    Checkbox Should Be Selected  ${trabalheConosco.btnTermos}
    Click Element  ${trabalheConosco.btnFinalizar}
