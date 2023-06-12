@startuml

/'
 ' Style for PlantUML'
 '/

'Constant Definition
!define FONTSERIF Noto Serif
!define FONTSANS Noto Sans
!define FONTMONO Inconsolata

'General
skinparam shadowing false
skinparam handwritten false
skinparam backgroundColor transparent
skinparam componentStyle uml2
skinparam dpi 300

'Default'
skinparam default{
  'Font Style
  FontColor Black
  FontName FONTSANS
  FontSize 10
  FontStyle plain
  MonospacedFontName FONTMONO

  'Other Style
  TextAlignment left
}
skinparam padding 2

'Header
skinparam header {
  FontColor Black
  FontName FONTSANS
  FontSize 10
  FontStyle plain
}

'Footer
skinparam footer {
  FontColor Black
  FontName FONTSANS
  FontSize 10
  FontStyle plain
}

'Title (inherits from Default)
skinparam title {
  'Font Style (inherits from Default)
  FontSize 14

  'Border Color
  BackgroundColor transparent
  BorderColor White
  BorderRoundCorner 0
  BorderThickness 0
}

'Arrow
skinparam arrow {
  'Font Style (inherits from Default)
  FontName FONTSERIF

  'Color
  Color Black
  LollipopColor Black
  Thickness 1
  MessageAlignment center
}

'Note
skinparam note {
  'Font Style
  FontColor Black
  FontName FONTSERIF
  FontSize 10
  FontStyle plain

  'Color
  BackgroundColor LemonChiffon
  BorderColor Black
  BorderThickness 1
}

'Node
skinparam node {
  'Font Style (inherits from Default)
  FontSize 14
  StereotypeFontColor Black
  StereotypeFontName FONTMONO
  StereotypeFontSize 12
  StereotypeFontStyle plain

  'Border Color
  BackgroundColor White
  BorderColor Black
}

'Rectangle
skinparam rectangle {
  'Font Style (inherits from Default)
  FontSize 14
  StereotypeFontColor Black
  StereotypeFontName FONTMONO
  StereotypeFontSize 12
  StereotypeFontStyle plain

  'Border Color
  BackgroundColor White
  BorderColor Black
  BorderThickness 1
}

'Folder
skinparam folder {
  'Font Style (inherits from Default)
  StereotypeFontColor Black
  StereotypeFontName FONTMONO
  StereotypeFontSize 10
  StereotypeFontStyle plain

  'Border Color
  BackgroundColor White
  BorderColor Black
}

'Frame
skinparam frame {
  'Font Style (inherits from Default)
  StereotypeFontColor Black
  StereotypeFontName FONTMONO
  StereotypeFontSize 10
  StereotypeFontStyle plain

  'Border Color
  BackgroundColor White
  BorderColor Black
}

'Cloud
skinparam cloud {
  'Font Style (inherits from Default)
  FontSize 14
  StereotypeFontColor Black
  StereotypeFontName FONTMONO
  StereotypeFontSize 12
  StereotypeFontStyle plain

  'Border Color
  BackgroundColor White
  BorderColor Black
}

'Database
skinparam database {
  'Font Style (inherits from Default)
  FontSize 14
  StereotypeFontColor Black
  StereotypeFontName FONTMONO
  StereotypeFontSize 12
  StereotypeFontStyle plain

  'Border Color
  BackgroundColor White
  BorderColor Black
}

'Package (default style)
skinparam package {
  'Style
  Style folder
  TitleAlignment center

  'Font Style (inherits from Default)
  StereotypeFontColor Black
  StereotypeFontName FONTMONO
  StereotypeFontSize 10
  StereotypeFontStyle plain

  'Border Color
  BackgroundColor White
  BorderColor Black
  BorderThickness 1
}

'Actor
skinparam actor {
  'Font Style (inherits from Default)
  FontSize 14

  'Border Color
  BackgroundColor WhiteSmoke
  BorderColor Black
}

'Boundary
skinparam boundary {
  'Font Style (inherits from Default)
  FontSize 14

  'Border Color
  BackgroundColor WhiteSmoke
  BorderColor Black
}

'Control
skinparam control {
  'Font Style (inherits from Default)
  FontSize 14

  'Border Color
  BackgroundColor WhiteSmoke
  BorderColor Black
}

'Entity
skinparam entity {
  'Font Style (inherits from Default)
  FontSize 14

  'Border Color
  BackgroundColor WhiteSmoke
  BorderColor Black
}

'Collections
skinparam collections {
  'Font Style (inherits from Default)
  FontSize 14

  'Border Color
  BackgroundColor WhiteSmoke
  BorderColor Black
}

'Participant
skinparam participant {
  'Font Style (inherits from Default)
  FontSize 14

  'Border Color and Padding
  BackgroundColor WhiteSmoke
  BorderColor Black
  Padding 20
}

'Sequence Diagrams
hide footbox
skinparam BoxPadding 10
'skinparam MaxMessageSize 100
skinparam sequence {
  'Actor, Boundary, Control, Entity, and Collections
  ActorBorderThickness 1

  'Arrow
  ArrowThickness 1

  'Box (inherits from Default)
  BoxBackgroundColor transparent
  BoxBorderColor Black

  'Delay (inherits from Default)

  'Divider (inherits from Default)
  DividerBackgroundColor transparent
  DividerBorderColor Gray
  DividerBorderThickness 1

  'Group (inherits from Default)
  GroupFontName FONTSERIF
  GroupHeaderFontName FONTSANS
  GroupBackgroundColor WhiteSmoke
  GroupBodyBackgroundColor White
  GroupBorderColor Black
  GroupBorderThickness 1

  'Life line
  LifeLineBackgroundColor transparent
  LifeLineBorderColor Black
  LifeLineBorderThickness 1

  'Message
  MessageAlignment center
  MessageTextAlignment left

  'Newpage
  NewpageSeparatorColor Gray

  'Participant
  Participant plain
  ParticipantBorderThickness 1

  'Reference (inherits from Default)
  ReferenceBackgroundColor White
  ReferenceHeaderBackgroundColor WhiteSmoke
  ReferenceBorderColor Black
  ReferenceBorderThickness 1
  ReferenceAlignment center

  'Stereotype (inherits to Actor, Boundary, Control, Entity, Collections, Database, and Participant)
  StereotypeFontColor Black
  StereotypeFontName FONTMONO
  StereotypeFontSize 12
  StereotypeFontStyle plain

  'Title (inherits from Default)
}

'Class
skinparam class {
  'Font Style (inherits from Default)
  FontSize 14
  StereotypeFontColor Black
  StereotypeFontName FONTMONO
  StereotypeFontSize 12
  StereotypeFontStyle plain

  'Color
  BackgroundColor White
  HeaderBackgroundColor White
  BorderColor Black
  BorderThickness 1

  'Attributions
  AttributeFontColor Black
  AttributeFontName FONTMONO
  AttributeFontSize 10
  AttributeFontStyle plain
  AttributeIconSize 0
}

'Interface Class
skinparam interface {
  FontStyle italic
}

'Circled Character in Class Diagram'
hide circle
skinparam circled {
  CharacterFontColor Black
  CharacterFontName FONTMONO
  CharacterFontSize 14
  CharacterFontStyle plain
  CharacterRadius 8
}

title Classes - Class Diagram


class Simulador {
  +Void criarBD()
  +String pegarSimulacoesTestadas()
  +Void gerarGrafico(opcao=0)
  +Void gerarGraficos()
  +Int embarque(aviao, filaDeEmbarque: List, contadorEntrada: Int)
  +Void posicaoNaFila2(filaDeEmbarque: List, sequencia: List, posicao: Int, posicoes: List)
  +Void posicaoNaFila(filaDeEmbarque: List, sequencia: List, posicao: Int)
  +List metodoAleatorio(posicoes: List, filaDeEmbarque: List, sequencia: List)
  +Void embaralhaWilma(sequencia: List, fileiras: Int, coluna: Int)
  +Void criaFila(sequencia: List, filaDeEmbarque: List)
  +List metodoWilma(posicoes: List, filaDeEmbarque: List, sequencia: List, fileiras: Int, coluna: Int)
  +Void embaralhaBlock(sequencia: List, fileiras: Int, colunas: Int)
  +Void auxMetBlock(ini: Int, fim: Int, Lista: List)
  +List metodoBlockBoarding(posicoes: List, filaDeEmbarque: List, sequencia: List, fileiras: Int, coluna: Int)
  +List metodoBackToFront(posicoes: List, filaDeEmbarque: List, sequencia: List, fileiras: Int, coluna: Int)
  +Void metodoSteffan(posicoes: List, filaDeEmbarque: List, sequencia: List, fileiras: List)
  +Void rodarSimulacoes(quantidadeSimulacoes: Int, opcao: Int, qtdAssento: Int, qtdColuna: Int)
  +Int testeSimulacoes(quantidadeSimulacoes: Int, opcao: Boolean, qtdAssento: Int, qtdColuna: Int, metodo: Int)
  +Void teste(quantidadeSimulacoes: Int, qtdAssento: Int, qtdColuna: Int)
}

class Assento {
  +Assento()
  +Void ocuparAssento(pessoa: Pessoa)
}

class Classe{
  +Classe(nome: String, qtdAssento: Int, qtdColunas: Int)
  +Void ocuparAssento(passageiro: Pessoa, numero: Int)
}


class Aviao {
  +Aviao(qtdAssentos: Int, qtdColunas: Int)
  +Boolean corredorVazio()
  +Boolean colocarFila(passageiro: Pessoa)
  +Void andarFila()
  +String __str__()
}

abstract class Pessoa {
  +Pessoa(nome: String, assento: Assento)
}

class Crianca extends Pessoa {
  +Boolean temBagagem = False
  +Int tempoBagagem = 0
}

class Adulto extends Pessoa {
  +Boolean temBagagem = True
  +Int tempoBagagem = 3
}

Classe o-- Pessoa
Aviao *-- Assento
Simulador o-- Aviao
Simulador o-- Pessoa
Assento o-- Pessoa
Aviao o--- Pessoa

@enduml
