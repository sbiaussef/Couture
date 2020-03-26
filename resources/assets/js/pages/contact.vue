<template>
  <div class="section-content">
    <form id="contact" action="#" method="post">
      <div class="row">
        <div class="col-md-4">
          <fieldset>
            <input
              name="name"
              type="text"
              class="form-control"
              id="name"
              placeholder="Your name..."
              required=""
            />
          </fieldset>
        </div>
        <div class="col-md-4">
          <fieldset>
            <input
              name="email"
              type="email"
              class="form-control"
              id="email"
              placeholder="Your email..."
              required=""
            />
          </fieldset>
        </div>
        <div class="col-md-4">
          <fieldset>
            <input
              name="subject"
              type="text"
              class="form-control"
              id="subject"
              placeholder="Subject..."
              required=""
            />
          </fieldset>
        </div>
        <div class="col-md-12">
          <fieldset>
            <textarea
              name="message"
              rows="6"
              class="form-control"
              id="message"
              placeholder="Your message..."
              required=""
            ></textarea>
          </fieldset>
        </div>
        <div class="col-md-12">
          <fieldset>
            <button type="submit" id="form-submit" class="btn">
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
            console.error(err.response.data.errors);
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
</style>
