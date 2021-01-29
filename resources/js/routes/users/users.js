import axios from 'axios';

export default {

    data() {
        return {
            pageTitle: "Users list page",
            isLoading: true,
            users: []
        }
    },

    methods: {
        onItemClick(user) {
            console.log(user);
        }
    },

    mounted() {
        // Get the users from the back end
        axios.get('http://localhost/user').then(response => {
            if (response.data) {
                this.isLoading = false;
                this.users = response.data;
            }
        });

        console.log("Arrived at the users' list page");
    }

}

