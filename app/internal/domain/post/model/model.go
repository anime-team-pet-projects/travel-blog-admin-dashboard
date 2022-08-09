package model

type Post struct {
	ID      string `json:"id"`
	Title   string `json:"title"`
	Content string `json:"content"`
	OwnerID string `json:"owner_Id"`
}
