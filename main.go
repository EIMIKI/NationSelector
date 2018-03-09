package main

import (
	"html/template"
	"log"
	"net/http"
	"path/filepath"
	"sync"
)

type templateHandler struct {
	once     sync.Once
	filename string
	template *template.Template
}

func (t *templateHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	t.once.Do(func() {
		t.template = template.Must(template.ParseFiles(filepath.Join("templates", t.filename)))
	})
	t.template.Execute(w, nil)
}

func main() {
	//ハンドラー
	http.Handle("/stylesheets/", http.StripPrefix("/stylesheets/", http.FileServer(http.Dir("stylesheets/"))))
	http.Handle("/", &templateHandler{filename: "index.html"})
	http.Handle("/select", &templateHandler{filename: "select.html"})
	http.HandleFunc("/result", func(w http.ResponseWriter, r *http.Request) {

		r.ParseForm()
		v := r.Form

		var req reqData
		req.area = v.Get("area")
		req.ideology = v.Get("ideology")
		req.team = v.Get("team")
		req.sea = v.Get("sea")
		req.nf = v.Get("nf")

		tmpl := template.Must(template.ParseFiles("./templates/result.html"))
		tmpl.Execute(w, selector(req))
	})

	//サーバースタート
	if err := http.ListenAndServe(":9000", nil); err != nil {
		log.Fatal("ListenAndServe:", err)
	}
}
