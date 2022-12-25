import flet as ft


class TodoApp(ft.UserControl):

    def build(self):
        self.new_task = ft.TextField(
            hint_text="Whats needs to be done?", expand=True)
        self.tasks = ft.Column()

        # application's root control (i.e. "view") containing all other controls

        return ft.Column(
            width=600,
            controls=[
                ft.Row(
                    controls=[
                        self.new_task,
                        ft.FloatingActionButton(
                            icon=ft.icons.ADD, on_click=self.add_clicked)
                    ],
                ),
                self.tasks,
            ],
        )

    def add_clicked(self, e):
        self.page.add(ft.Checkbox(label=self.new_task.value))
        self.new_task.value = ""
        self.update()
