export default {

    props: {
        'name': String,
        'items': Array
    },

    methods: {
        onListItemClick(item) {
            this.$emit('itemClick', item);
        },
    },

    data() {
        return {
            message: "Hello there."
        }
    },

}
