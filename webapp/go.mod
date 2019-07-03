module github.com/web-platform-tests/wpt.fyi/webapp

go 1.12

require (
	github.com/gorilla/mux v1.7.3
	github.com/web-platform-tests/wpt.fyi v0.0.0-00010101000000-000000000000
	google.golang.org/appengine v1.6.1
)

replace github.com/web-platform-tests/wpt.fyi => ../
