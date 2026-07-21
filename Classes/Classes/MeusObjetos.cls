Class Meu.Teste.MeusObjetos Extends %RegisteredObject
{
    Property name As %String;
    Property age As %Integer;
    Property city As %String;

Method Apresent() 
{
    Write "Hello, my name is " _..name_ ", and I'm " _..age_ " old , and living in " _..city_ "."
}
}
