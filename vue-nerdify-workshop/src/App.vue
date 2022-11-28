<template>
  <h1 class="my-6 ml-6 text-3xl text-zinc-700 font-bold">
    Welcome back, {{ user.name }}
  </h1>
  <div class="ml-4">
    <div class="mb-12">
      <form @submit.prevent="addTask">
        <div class="flex ml-8 space-x-4">
          <input v-model="completed" class="w-4" type="checkbox" name="" id="" />
          <input v-model="title" 
            class="bg-transparent w-96 text-lg focus:outline-none focus:ring-0 focus:border-transparent border-zinc-700"
            placeholder="Add a new task"
            type="text"
          />
        </div>
      </form>

    </div>

    <h2 v-if="tasks.length === 0"  class="text-gray-400">There is no task saved</h2>

    <div v-if="pendingTasks.length > 0">
      <h2>Completed Tasks</h2>

      <TaskCard v-for="task in pendingTasks" :key="task.id" :task="task" @remove="removeTask(task.id)" />

    </div>


    <div v-if="completedTasks.length > 0">
      <h2>Pending Tasks</h2>
      <TaskCard v-for="task in completedTasks" :key="task.id" :task="task" @remove="removeTask(task.id)"/>
    </div>
  

  </div>
</template>

<script>

import { nanoid } from 'nanoid'
import TaskCard from "./components/TaskCard.vue"

export default {

  components: {
    TaskCard
  },

  data() {
    return {
      completed: false,
      user: {
        name: "John Doe",
      },
      title: "",
      tasks: []
    };
  },

  computed: {
    completedTasks() {
    return  this.tasks.filter((task) => task.completed)
    },
    pendingTasks() {
      return this.tasks.filter((task) => !task.completed)
    }
  },
  
  methods: {
    addTask() {
      const task = {
        id: nanoid(),
        completed: this.completed,
        title: this.title,
      }
      this.tasks.push(task);
      this.title = ""
   },

   deleteTask(id) {
    const taskIndex = this.tasks.findIndex((task) => task.id === id)
      this.tasks.splice(taskIndex, 1)
   }
  }

};

</script>

<style>
body {
  background-color: #f5f5f5;
}
</style>
