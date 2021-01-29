<template>
    <page class="users-page">
        <div v-if="isLoading" class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
        <list v-on:itemClick="onItemClick" v-if="!isLoading" :items="users"></list>
    </page>
</template>

<script src="./users.js"></script>

<style src="./styles.scss" lang="scss"></style>



