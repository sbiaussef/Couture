require('./bootstrap');
import Vue from 'vue';

Vue.use(require('vue-moment'));
Vue.component('index', require('./pages/contact.vue').default);
import products from './pages/products'
const app = new Vue({
    el: '#app',
    components:{
        products
    }
});
