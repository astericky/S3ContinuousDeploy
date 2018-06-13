package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hey there", r.URL.Path[1:])
}
func health(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Ok")
}
func main() {
	http.HandleFunc("/", handler)
	http.HandleFunc("/health", health)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
