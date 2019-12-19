#language: pt
#encoding: UTF-8
@teste
Funcionalidade: procurar Apartamento
Eu como usuario do site quinto andar
Quero procurar um Apartamento em uma localidade
Para alugar

Cenário: Procurar Apartamento por localidade
   Dado que esteja na home page
   Quando  procurar um Apartamento por uma localidade
   E aplico os filtros
   Entao valido os filtros
   E visualizo os Apartamentos mais proximos

