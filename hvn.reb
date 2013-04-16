REBOL [
	Title: "EDN format reader"
	Date: 2013-04-16
	Author: [onetom@hackerspace.sg suller.andras@gmail.com]
	Description: {
		EDN reader pronounced as [heaven] ;)
	}
]

edn: func [edn [string!]] [load tr edn edn-fixes]
tr: func [input [string!] substitutions [block!]] [
	output: copy input
	foreach [from to] substitutions [replace/all output from to]
	output
]
edn-fixes: [
	"{" "["	; curly braces are strings in rebol
	"}" "]"	; so we can convert them into blocks (just for quick testing)
	"," " "	; commas are irrelevant
]
