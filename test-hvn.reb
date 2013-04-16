REBOL[
	Title: "Test EDN reader"
	Date: 2013-04-16
	Author: [onetom@hackerspace.sg suller.andras@gmail.com]
	Description: {
		"Integration level" test for the EDN reader
	}
]

do %hvn.reb

seattle-data0: %../datomic-free-0.8.3889/samples/seattle/seattle-data0.dtm
probe edn read seattle-data0	; should not throw any errors
