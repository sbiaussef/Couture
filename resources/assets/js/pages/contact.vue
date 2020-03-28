<template>
  <div class="section-content">
    <form id="contact" method="post">
      <div class="row">
        <div class="col-md-4">
          <fieldset>
            <input
              name="name"
              type="text"
              class="form-control"
              id="name"
              :class="[{ 'border-danger': validation.name }]"
              v-model="name"
              placeholder="Your name..."
              required=""
            />
            <div v-if="validation.name" class="text-danger">
              
                <span v-for="(validate, index) in validation.name" :key="index">
                  {{ validate }}
                </span>
              
            </div>
          </fieldset>
        </div>
        <div class="col-md-4">
          <fieldset>
            <input
              name="email"
              type="email"
              class="form-control"
              id="email"
              :class="[{ 'border-danger': validation.email }]"
              v-model="email"
              placeholder="Your email..."
              required=""
            />
            <div v-if="validation.email" class="text-danger">
              
                <span v-for="(validate, index) in validation.email" :key="index">
                  {{ validate }}
                </span>
              
            </div>
          </fieldset>
        </div>
        <div class="col-md-4">
          <fieldset>
            <input
              name="subject"
              type="text"
              class="form-control"
              id="subject"
              :class="[{ 'border-danger': validation.subject }]"
              v-model="subject"
              placeholder="Subject..."
              required=""
            />
            <div v-if="validation.subject" class="text-danger">
              
                <span
                  v-for="(validate, index) in validation.subject"
                  :key="index"
                >
                  {{ validate }}</span>
                 
              
            </div>
          </fieldset>
        </div>
        <div class="col-md-12">
          <fieldset>
            <textarea
              name="message"
              rows="6"
              class="form-control"
              id="message"
              :class="[{ 'border-danger': validation.message }]"
              v-model="message"
              placeholder="Your message..."
              required=""
            ></textarea>
            <div v-if="validation.message" class="text-danger">

                <span
                  v-for="(validate, index) in validation.message"
                  :key="index"
                >
                  {{ validate }}
                </span>

            </div>
          </fieldset>
        </div>
        <div class="col-md-12">
          <fieldset>
            <button type="submit" id="form-submit" @click.prevent="sendMail()" class="btn">
              Send Message Now
            </button>
          </fieldset>
        </div>
      </div>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: "",
      email: "",
      subject: "",
      message: "",
      validation: []
    };
  },

  methods: {
    sendMail() {
      axios
        .post("/contact", {
          name: this.name,
          email: this.email,
          subject: this.subject,
          message: this.message
        })
        .then(res => {
          console.log(res);
          this.name = "";
          this.email = "";
          this.subject = "";
          this.message = "";
          this.validation = "";
        })
        .catch(err => {
          if (err.response.status == 422)
          this.validation = err.response.data.errors;
        });
    }
  }
};
</script>

<style scoped>
.contact {
  background-color: white;
}
.text-danger{
  margin-bottom: 10px;
}
</style>
