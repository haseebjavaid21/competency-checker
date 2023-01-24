<template>
  <section id="app" class="section">
    <h3 class="title is-1">Add New Competency</h3>
    <div class="columns">
      <div class="column form-box">
        <label class="label field-tag">Competency Name</label>
        <div class="field">
          <b-form-input
            id="input-comp"
            v-model="competency_name"
            type="text"
            placeholder="Enter Competency Name"
          ></b-form-input>
        </div>

        <b-alert
          show
          variant="success"
          v-if="this.submitSuccess"
          style="margin-top: 10px;"
          >New Competency Saved Successfully</b-alert
        >
        <div class="sub-action">
          <b-button variant="primary" @click="saveCompetency">Submit</b-button>
          <b-button variant="secondary" @click="clearFields">Clear</b-button>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "questionCreator",
  data() {
    return {
      competency_name: null,
      submitSuccess: false,
    };
  },
  computed: {},
  created() {},
  mounted() {},
  methods: {
    saveCompetency() {
      axios
        .post("/api/addCompetency", { name: this.competency_name })
        .then((response) => {
          this.submitSuccess = true;
        })
        .catch(function(error) {
          console.log(error);
        });
    },
    clearFields() {
      this.competency_name = null;
      this.submitSuccess = false;
    },
  },
};
</script>

<style>
.field-tag {
  float: left;
  margin-bottom: -2px;
}

.form-box {
  width: 50%;
  margin-left: 25%;
}

.ip-field {
  padding-bottom: 4px;
}

.options {
  float: left;
  margin-bottom: 0rem !important;
}

.sub-action {
  margin-top: 5%;
}

/* @import'~bootstrap/dist/css/bootstrap.css' */
</style>
