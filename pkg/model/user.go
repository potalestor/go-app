package model

// User is an example of model.
type User struct {
	Firstname string
	Lastname  string
}

// GetFirstname returns first name of user.
func (u *User) GetFirstname() string {
	return u.Firstname
}
