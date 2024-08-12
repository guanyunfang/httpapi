package main
import (
    "fmt"
    "log"
    "net/http"
    "github.com/gorilla/mux" // Third-party package for routing
)
// helloHandler handles requests to the /hello endpoint
func helloHandler(w http.ResponseWriter, r *http.Request) {
    w.WriteHeader(http.StatusOK)
    w.Write([]byte("Hello, World!"))
}
// greetHandler handles requests to the /greet/{name} endpoint
func greetHandler(w http.ResponseWriter, r *http.Request) {
    vars := mux.Vars(r)
    name := vars["name"]
    message := fmt.Sprintf("Hello, %s!", name)
    w.WriteHeader(http.StatusOK)
    w.Write([]byte(message))
}
func main() {
    r := mux.NewRouter()
    r.HandleFunc("/hello", helloHandler).Methods("GET")
    r.HandleFunc("/greet/{name}", greetHandler).Methods("GET")
    fmt.Println("Starting server on :8080")
    log.Fatal(http.ListenAndServe(":8080", r))
}








