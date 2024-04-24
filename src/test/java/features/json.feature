Feature: json feature testing

Scenario: json reader parser

* def jsonObject =
"""
[
{
	"name":"Ram",
	"city":"Chennai",
	"age":"37"
},
{
	"name":"Kumar",
	"city":"Kallupatti",
	"age":"38"
}
]
"""

* print jsonObject
* print jsonObject[0].name
* print jsonObject[1].name +" "+jsonObject[1].city +" "+jsonObject[1].age

Scenario: complex json reader

* def jsonObject = 
"""
{
"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}
}
"""

* print jsonObject
* print jsonObject.menu
* print jsonObject.menu.id
* print jsonObject.menu.popup
* print jsonObject.menu.popup.menuitem
* print jsonObject.menu.popup.menuitem[0].value
* print jsonObject.menu.popup.menuitem[0].onclick
