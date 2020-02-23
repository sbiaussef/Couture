export const routes =[
    {
        path:"/",
        component: require('./pages/home.vue').default
    },
    {
        path:"/featured",
        component: require('./pages/featured.vue').default
    },
    {
        path:"/projects",
        component: require('./pages/projects.vue').default
    },
    {
        path:"/collections",
        component: require('./pages/collections.vue').default
    },
    {
        path:"/contact",
        component: require('./pages/contact.vue').default
    },
    {
        path:"/FAQ",
        component: require('./pages/FAQ.vue').default
    },
];
