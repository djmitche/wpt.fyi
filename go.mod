module github.com/web-platform-tests/wpt.fyi

go 1.12

require (
	cloud.google.com/go v0.40.0
	github.com/blang/semver v3.5.1+incompatible // indirect
	github.com/deckarep/golang-set v1.7.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/dgryski/go-farm v0.0.0-20190423205320-6a90982ecee2
	github.com/go-yaml/yaml v2.1.0+incompatible
	github.com/golang/mock v1.3.1
	github.com/google/go-github/v26 v26.0.9
	github.com/google/uuid v1.1.1
	github.com/gorilla/handlers v1.4.0
	github.com/gorilla/mux v1.7.2
	github.com/sirupsen/logrus v1.4.2
	github.com/stoewer/go-strcase v1.0.2
	github.com/stretchr/testify v1.3.0
	github.com/tebeka/selenium v0.9.4-0.20181011202039-edf31bb7fd71
	github.com/web-platform-tests/wpt-metadata v0.0.0-20190606141341-99d1b32cc534
	golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4 // indirect
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7 // indirect
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45
	golang.org/x/sys v0.0.0-20190626221950-04f50cda93cb // indirect
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4
	golang.org/x/tools v0.0.0-20190703172252-a00916dd39a5 // indirect
	google.golang.org/api v0.7.0
	google.golang.org/appengine v1.6.1
	google.golang.org/genproto v0.0.0-20190627203621-eb59cef1c072
	gopkg.in/src-d/go-billy.v4 v4.3.0
	gopkg.in/src-d/go-git.v4 v4.12.0
)

replace github.com/web-platform-tests/wpt.fyi => ./
replace github.com/web-platform-tests/wpt.fyi/api => ./api
replace github.com/web-platform-tests/wpt.fyi/shared => ./shared