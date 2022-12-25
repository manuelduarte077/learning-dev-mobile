import flet as ft

# User Control
from todo import TodoApp


def main(page: ft.Page):
    # AppBar
    page.appbar = ft.AppBar(
        leading=ft.Icon(ft.icons.MENU),
        leading_width=40,
        title=ft.Text('Flet TODO'),
        center_title=True,
        bgcolor=ft.colors.INDIGO_ACCENT
    )

    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER
    page.update()

    # create application instance
    todo = TodoApp()

    # add application's root control to the page
    page.add(todo)


ft.app(target=main)
