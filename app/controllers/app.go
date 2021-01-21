package controllers

import (
	"github.com/revel/revel"
)

type App struct {
	*revel.Controller
}

func (c App) Index() revel.Result {
	return c.Render()
}
func (c App) Download() revel.Result {
	return c.Render()
}
func (c App) Forums() revel.Result {
	return c.Render()
}
func (c App) Status() revel.Result {
	return c.Render()
}
func (c App) Online() revel.Result {
	return c.Render()
}
