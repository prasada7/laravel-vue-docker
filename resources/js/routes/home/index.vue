<template>
    <page id="home-page">
        This is the {{ pageTitle }}
    </page>
</template>

<script>
export default {
    data() {
        return {
            pageTitle: "Home Page"
        }
    },
    mounted() {
        console.log("This is working 2");
    }
}
</script>
