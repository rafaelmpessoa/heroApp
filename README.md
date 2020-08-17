# Hero App
Youtube Video, [clique](https://www.youtube.com/watch?v=cRwaaP_j_ng) para abrir

[![HERO APP](http://img.youtube.com/vi/cRwaaP_j_ng/0.jpg)](http://www.youtube.com/watch?v=cRwaaP_j_ng)


## Motivação
Processo seletivo para oi sami

## Features
Buscar/Filtrar Heroís

Ver detalhes do Herói

## Recursos
 Injeção de dependência com get_it
 
 Utilização de objetos imutáveis com freezed
 
 Isolates para melhorar performance
 
 bloc test
 
 widget test
 


## Arquitetura
### Clean architecture  (SOLID) pattern

Com dois módulos **Common**, recursos compartilhados em todos os módulos e **Hero** , total independete.

- #### Layers
	-  Data - Acesso aos dados
		- data_sources - Fonte de dados do app, pode ser remote (fonte externa) ou local (fonte interna). Pattern *FEATURE_remote_data_source.dart*
		- repository - Acesso ao data_source, responsabilidade da lógica de acesso aos dados e cache. Pattern *FEATURE_repository.dart*
	- Domain - Lógica de negócio
		- errors - mapear todos possíveis tipos de erros e falhas. Pattern *FEATURE_failures.dart* ,*FEATURE_erros.dart* .
		- entities - modelo do dado. Pattern *FEATURE.dart*
		- repository - Implementação do contrato (interface) que será implementado no repository. Pattern *FEATURE_repository.dart*
		- usecases - casos de uso do usuário (lógica de negócio) acesso ao repository. Implementação do contrato e do caso de uso. Pattern *USECASE_use_case.dart*, *USECASE_use_case.dart*
		- utils - class utilitárias como, converters, validators, enums... . Pattern *FEATURE_validator.dart*
	- Presentation - User Interface
		- page - Pattern *FEATURE_page.dart*
		- widgets - componentização
		- utils - mixin e extensions. Pattern *FEATURE_mixin.dart* e *FEATURE_extension.dart*
		- bloc - acesso a usecases. Pattern *FEATURE_bloc.dart*
		- app.dart  - configuração base das UI. Ex: Temas, rotas e título. 
		- routes.dart - declaração das rotas.

## Constantes
 app_themes.dart - Declação do temas e estilo padrão do app.
 
 assests.dart - Referência ao path dos icones/imagem
 
 constants.dart - Declação das cores utilizadas em todo o app.
 
 strings.dart - Declação de todos os textos, frases e palavras no app.






