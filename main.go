package main

import (
    "fmt"
    "net/http"

    
    "github.com/k8sz/gin/routers"

    "github.com/k8sz/gin/pkg/setting"
)

func main() {
    router := routers.InitRouter()

	s := &http.Server{
		Addr:           fmt.Sprintf(":%d", setting.HTTPPort),
		Handler:        router,
		ReadTimeout:    setting.ReadTimeout,
		WriteTimeout:   setting.WriteTimeout,
		MaxHeaderBytes: 1 << 20,
	}

	s.ListenAndServe()
}

