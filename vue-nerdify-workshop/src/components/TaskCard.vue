<template>
    <div class="flex space-x-8 bg-white rounded mb-4 w-1/2 p-8">
        <input v-model="task.completed" class="w-4" type="checkbox" />
        <p :class="{'line-through': task.completed}" >{{ task.title }}</p>
        <button class="rounded-full text-red-500" @click="$emit('remove')">Save Changes</button>
    </div>
</template>

<script setup>

    defineProps({
        task: {
            type: Object,
            required: true
        }
    })
    defineEmits(['remove'])

</script>

<style>
</style>