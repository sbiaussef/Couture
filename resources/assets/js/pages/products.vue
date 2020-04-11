<template>
<div>
  <div v-if="this.products.length>0">
    <ul>
      <div v-for="prod in this.products" :key="prod.id">
        <li>
          <div class="item">
            <img :src="'storage/' + JSON.parse(prod.pictures)[0]" alt="" />
            <div class="text-content">
              <h4>{{ prod.productName }}</h4>
              <span>{{ prod.created_at }}</span>
              <p>{{ prod.productDescription.substring(0, 50) }}....</p>

              <div class="accent-button button">
                <a :href="'product/'+prod.slug" target="_blank">Show more</a>
              </div>
            </div>
          </div>
        </li>
      </div>
    </ul>
    <div class="pagination">
      <ul>
        <li :class="[{ disabled: !pagination.prev }]">
          <a @click="getProducts(pagination.prev)"><<</a>
        </li>
        <li v-for="(item, index) in pagination.last" :key="index">
          <a @click="getProducts('/productByCategory?page=' + item)">{{
            item
          }}</a>
        </li>
        <li :class="[{ disabled: !pagination.next }]">
          <a @click="getProducts(pagination.next)">>></a>
        </li>
      </ul>
    </div>
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {
      getUrl: "",
      pagination: {},
      isLoaded: false,
      products: []
    };
  },
  props: ["product"],
  mounted() {
    /** mounted cause we want to call it in the load of the page */
    this.getProducts();
  },
  methods: {
    getProducts(getUrl) {
      this.isLoaded = true;
      this.$emit("update:isLoaded", this.isLoaded);
      let vm = this;
      getUrl = getUrl || "/productByCategory";
      axios
        .get(getUrl, {
          params: {
            category: this.product
          }
        })
        .then(result => {
          this.paginatePost(result.data);
          this.products = result.data.data;
        })
        .catch(err => {
          console.log(err);
        });
    },
    paginatePost(result) {
      let paginate = {
        first: result.current_page,
        last: result.last_page,
        prev: result.prev_page_url,
        next: result.next_page_url,
        lastPage: result.last_page_url,
        firstPage: result.first_page_url
      };
      this.pagination = paginate;
    }
  }
};
</script>

<style scoped>
.disabled {
  pointer-events: none;
  opacity: 0.6;
}
.disabled a {
  background-color: gainsboro;
}

.pagination {
  display: inline-block;
}

.pagination ul li a {
  color: peru;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  cursor: pointer;
}
.pagination ul li a:hover {
  color: burlywood;
}
#products .tabgroup ul li:last-child {
  display: inline-block;
  text-align: left;
  margin-bottom: 10px;
  padding-bottom: 20px;
  border-bottom: 1px solid #ddd;
}
</style>
