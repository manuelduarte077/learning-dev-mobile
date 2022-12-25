import flet as ft


def main(page: ft.Page):
    # AppBar
    page.appbar = ft.AppBar(
        leading=ft.Icon(ft.icons.MENU),
        leading_width=40,
        title=ft.Text('Flet TODO'),
        center_title=True,
        bgcolor=ft.colors.INDIGO_ACCENT

    )

    # Body

    # TexField
    def add_clicked(e):
        page.add(ft.Checkbox(label=new_task.value))
        new_task.value = ""
        page.update()

    new_task = ft.TextField(hint_text="Whats needs to be done?", expand=True)

    tasks_view = ft.Column()
    view = ft.Column(
        width=600,
        controls=[
            ft.Row(
                controls=[
                    new_task,
                    ft.FloatingActionButton(
                        icon=ft.icons.ADD, on_click=add_clicked)
                ],
            ),
            tasks_view,
        ],
    )

    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER
    page.add(view)


ft.app(target=main)
