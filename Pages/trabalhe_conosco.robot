*** Variables ***

&{trabalheConosco}
...     btnAccept=//*[contains(text(), "Aceitar")]
...     btnCadastrarCurriculo=//*[contains(text(), "CADASTRE SEU CURRÍCULO")]
...     nome=//*[@id="name"]
...     cargo=//*[@id="headline"]
...     salario=//*[@id="salary"]
...     email=//*[@id="email"]
...     telefone=//*[@id="phone-0"]
...     cmbpais=//*[@id="country"]
...     estado=//*[@id="region"]
...     cidade=//*[@id="city"]
...     bairro=//*[@id="neighborhood"]
...     endereço=//*[@id="address"]
...     cep=//*[@id="zipcode"]
...     resumo=//*[@id="summary"]
...     btnAddFormacao=//*[@id="__layout"]/div/div/section/div/div/form/fieldset[5]/div[2]/div/button
...     curriculo=//*[@id="validatedCustomFile"]
...     btnTermos=//*[@id="consent"]
...     btnFinalizar=//button[@type='submit']
...     sucesso=//*[text()='com sucesso']

&{preencheFormulario}
...     nome=Juliana Pereira Margato
...     cargo=Analista de Qualidade
...     salario=6.000,00
...     email=julianamargato@hotmail.com.br 
...     telefone=44 9 9171-7788
...     cmbpais=BR 
...     estado=PR 
...     cidade=Maringá
...     bairro=Zona 08
...     endereço=av.guedner, 692
...     cep=87050390
...     resumo=curriculo enviado com Robot FrameWork
...     sucesso=sucesso