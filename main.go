// main.go

package main

import (
	"fmt"
	"net/http"
)

func homeHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello! This is the home page.")
}

func pingHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "pong")
}

func healthHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, `
		<html>
		<head>
			<title>Health Check</title>
		</head>
		<body>
			<h1 style="background-color: green; color: white; padding: 20px;">Server is healthy!</h1>
		</body>
		</html>
	`)
}

func main() {
	http.HandleFunc("/", homeHandler)
	http.HandleFunc("/ping", pingHandler)
	http.HandleFunc("/health", healthHandler)

	fmt.Println("Server is listening on :8880")
	http.ListenAndServe(":8880", nil)
}
