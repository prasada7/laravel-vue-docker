import VueRouter from 'vue-router';
import Home from './routes/home';
import About from './routes/about';
import Users from './routes/users';

const router = new VueRouter({
    routes: [
        {
            path: '/',
            component: Home
        },
        {
            path: '/about',
            component: About
        },
        {
            path: '/users',
            component: Users
        }
    ],
    mode: 'history',
    linkActiveClass: 'active'
});

export {
    VueRouter,
    router
}
