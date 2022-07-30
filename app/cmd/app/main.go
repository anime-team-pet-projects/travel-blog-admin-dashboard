package main

import (
	"log"
	"travel-blog-admin-panel/internal/app"
	"travel-blog-admin-panel/internal/config"
	"travel-blog-admin-panel/pkg/logging"
)

func main() {
	log.Print("config init")
	cfg := config.GetConfig()

	log.Print("logger init")
	logger := logging.GetLogger(cfg.AppConfig.LogLevel)

	a, err := app.NewApp(cfg, &logger)
	if err != nil {
		logger.Fatal(err)
	}

	logger.Println("Running Application")
	a.Run()
}
