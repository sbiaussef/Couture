require('./bootstrap');
import Vue from 'vue';



Vue.component('index', require('./pages/contact.vue').default);

const app = new Vue({
    el: '#app',

});
