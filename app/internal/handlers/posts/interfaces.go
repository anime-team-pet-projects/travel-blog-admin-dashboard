package posts

import "net/http"

type Service interface {
	GetAllPosts(w http.ResponseWriter, req *http.Request)
}
