module github.com/k8sz/gin

go 1.14

require (
	github.com/astaxie/beego v1.12.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/fsnotify/fsnotify v1.4.9 // indirect
	github.com/gin-gonic/gin v1.6.3
	github.com/go-ini/ini v1.56.0
	github.com/go-playground/validator/v10 v10.3.0 // indirect
	github.com/go-sql-driver/mysql v1.5.0 // indirect
	github.com/golang/protobuf v1.4.2 // indirect
	github.com/jinzhu/gorm v1.9.12
	github.com/kr/pretty v0.1.0 // indirect
	github.com/lib/pq v1.2.0 // indirect
	github.com/mitchellh/mapstructure v1.3.1 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/pelletier/go-toml v1.8.0 // indirect
	github.com/spf13/afero v1.2.2 // indirect
	github.com/spf13/cast v1.3.1 // indirect
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/spf13/viper v1.7.0 // indirect
	github.com/unknwon/com v1.0.1
	golang.org/x/sys v0.0.0-20200523222454-059865788121 // indirect
	gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127 // indirect
	gopkg.in/ini.v1 v1.56.0 // indirect
	gopkg.in/yaml.v2 v2.3.0 // indirect
)

replace (
	github.com/k8sz/gin/conf => /root/golang/gin/pkg/conf
	github.com/k8sz/gin/mid => /root/golang/gin/mid
	github.com/k8sz/gin/models => /root/golang/gin/models
	github.com/k8sz/gin/pkg/setting => /root/golang/gin/pkg/setting
	github.com/k8sz/gin/routers => /root/golang/gin/routers
)
