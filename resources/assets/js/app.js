require('./bootstrap');
import Vue from 'vue';
import Vuex from 'vuex';
import vuerouter from 'vue-router';
import {routes} from './routes';
import { VueSpinners  } from '@saeris/vue-spinners';
import Toasted from 'vue-toasted';

Vue.use(Toasted);
Vue.use(VueSpinners );

Vue.use(require('vue-moment'));
Vue.use(Vuex);
Vue.use(vuerouter);

const router = new vuerouter({
    routes,
    mode:'history',
    scrollBehavior (to, from, savedPosition) {
        return { x: 0, y: 0 }
      }
});

Vue.component('index', require('./pages/index.vue').default);

const app = new Vue({
    el: '#app',
    router,

});
