package model

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestUser_GetFirstname(t *testing.T) {
	u := &User{
		Firstname: "First",
		Lastname:  "Last",
	}
	assert.NotNil(t, u)
	assert.Equal(t, "First", u.GetFirstname())
}
