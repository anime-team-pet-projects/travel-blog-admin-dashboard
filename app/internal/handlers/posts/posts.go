package posts

import (
	"net/http"

	"github.com/julienschmidt/httprouter"
)

const (
	URL = "api/posts"
)

type Handler struct {
	baseHandler
}

func NewPostsHandler() *Handler {
	return &Handler{}
}

func (h *Handler) Register(router *httprouter.Router) {
	router.HandlerFunc(http.MethodGet, URL, h.GetAllPosts)
}

// Posts List
// @Summary List of posts
// @Tags Posts
// @Success 204
// @Failure 400
// @Router /api/posts [get]
func (h *Handler) GetAllPosts(w http.ResponseWriter, req *http.Request) {
	w.WriteHeader(204)
}
