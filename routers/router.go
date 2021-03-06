package routers

import (
    "github.com/gin-gonic/gin"

    "github.com/k8sz/gin/pkg/setting"

    "github.com/k8sz/gin/routers/api"
    _ "github.com/k8sz/gin/docs"

    "github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"

    
    "github.com/k8sz/gin/routers/api/v1"

    "github.com/k8sz/gin/mid/jwt"
)

func InitRouter() *gin.Engine {
    r := gin.New()

    r.Use(gin.Logger())

    r.Use(gin.Recovery())

    r.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))

    gin.SetMode(setting.RunMode)

    r.GET("/auth", api.GetAuth)

    apiv1 := r.Group("api/v1")
    apiv1.Use(jwt.JWT())
    {
        //获取标签列表
        apiv1.GET("/tags", v1.GetTags)
        //新建标签
        apiv1.POST("/tags", v1.AddTag)
        //更新指定标签
        apiv1.PUT("/tags/:id", v1.EditTag)
        //删除指定标签
        apiv1.DELETE("/tags/:id", v1.DeleteTag)
    } 
       




    return r
}

