<template>
    <div class="container user-list">
        <ul class="list-group">
            <li @click="onListItemClick(item)" v-for="item in items" class="list-group-item" :key="item.email">
                {{ item.name  }}
            </li>
        </ul>
    </div>
</template>

<script src="./list.js"></script>
