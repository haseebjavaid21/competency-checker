<template>
  <section id="app" class="section">
    <h3 class="title is-1">{{ title }}</h3>
    <div class="columns">
      <div class="column form-box">
        <label class="label field-tag">Competency Type</label>
        <div class="field">
          <b-form-select
            :options="competencyOptions"
            v-model="competency_type"
          ></b-form-select>
        </div>

        <label class="label field-tag">Competency Name</label>
        <div class="field">
          <b-form-select
            :options="competencyNameOptions"
            v-model="competency_name"
          ></b-form-select>
        </div>

        <div class="field">
          <label class="label field-tag">Question Statement</label>
          <div class="control">
            <b-form-textarea
              id="input-1"
              v-model="questionStatement"
              type="text-area"
              placeholder="Enter Question Statement"
              rows="6"
            ></b-form-textarea>
          </div>
        </div>

        <div class="field">
          <div class="field">
            <label class="label field-tag">Possible Options : <br /></label>
            <div class="control">
              <br />
              <label class="options">0 = I have never heard about it.</label
              ><br />
              <label class="options"
                >1 = I have heard about it, but I don't apply it.</label
              ><br />
              <label class="options"
                >2 = I understand the relevance of it, but don't apply
                it.</label
              ><br />
              <label class="options">3 = I do apply it.</label><br />
              <label class="options"
                >4 = I do apply it in various situations.</label
              ><br />
            </div>
          </div>

          <div class="row" style="margin-top:10px;margin-left: 2px">
            <div class="field">Role</div>
            <div class="field" style="width: 91%">Answer</div>
          </div>
          <div
            class="row"
            v-for="(row, index) in roleAnswers"
            :key="index"
            style="margin-left: 2px;margin-top: 10px;"
          >
            <div class="field" style="width: 45%">
              <b-form-select
                :options="options"
                v-model="row.role"
              ></b-form-select>
            </div>
            <div class="field" style="width: 45%;margin-left: 10px;">
              <b-form-input
                id="input-2"
                v-model="row.answer"
                type="text"
                placeholder="Required Score"
              ></b-form-input>
            </div>
            <button
              v-if="!row.new_row"
              class="add-row"
              style="margin-left: 10px"
              @click="addNewRow"
            >
              Add
            </button>
            <button
              v-if="row.new_row"
              class="add-row"
              style="margin-left: 10px"
              @click="removeRow(index)"
            >
              Remove
            </button>
          </div>
        </div>

        <b-alert
          show
          variant="success"
          v-if="this.submitSuccess"
          style="margin-top: 10px;"
          >Question Saved Successfully</b-alert
        >
        <div class="sub-action">
          <b-button variant="primary" @click="saveQuestion">Submit</b-button>
          <b-button variant="secondary" @click="clearFields">Clear</b-button>
          <b-button variant="secondary" @click="returnToList" v-if="isEdit"
            >Cancel</b-button
          >
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
      questionStatement: null,
      showSubmitFeedback: false,
      questionAnswer: null,
      related_role: [],
      competency_type: null,
      submitSuccess: false,
      competency_name: null,
      competencyNameOptions: [],
      isEdit: false,
      editRecordId: null,
      title: "Add More Questions",
      roleAnswers: [
        {
          role: null,
          answer: null,
        },
      ],
      options: [
        //{value : 'null', text: 'Please select Role'},
        { value: "customer", text: "Customer" },
        { value: "customer_representative", text: "Customer representative" },
        { value: "project_manager", text: "Project Manager" },
        { value: "internal_support", text: "Internal support" },
        { value: "process_policy_owner", text: "Process & policy owner" },
        { value: "system_engineer", text: "System Engineer" },
        { value: "developer", text: "Developer" },
        {
          value: "production_coordinator_planner",
          text: "Production coordinator/planner",
        },
        //{ value: "v_v_staff", text: "Validation & Verification staff" },
        { value: "production_staff", text: "Production staff" },
        { value: "service_technician", text: "Service technician" },
        { value: "quality_manager", text: "Quality manager" },
        {
          value: "innovation_and_strategy_management",
          text: "Innovation and (strategy) management",
        },
        { value: "management", text: "Management" },
      ],
      competencyOptions: [
        { value: "Methodical Competencies", text: "Methodical Competencies" },
        {
          value: "Professional Competencies",
          text: "Professional Competencies",
        },
        {
          value: "Self and Social Competencies",
          text: "Self and Social Competencies",
        },
        { value: "Management Competencies", text: "Management Competencies" },
      ],
    };
  },
  computed: {},
  created() {
    if (window.location.href.indexOf("edit") !== -1) {
      this.isEdit = true;
      this.title = "Edit Question";
      this.editRecordId = window.location.href.split("/")[4];
      axios
        .get("/api/edit/" + this.editRecordId)
        .then((response) => {
          this.competency_type = response.data.competency_type;
          this.competency_name = response.data.competency_name;
          this.questionStatement = response.data.statement;
          this.roleAnswers = [];
          if (response.data.role_answer) {
            for (
              let index = 0;
              index < response.data.role_answer.length;
              index++
            ) {
              let obj = {
                role: response.data.role_answer[index].role,
                answer: response.data.role_answer[index].answer,
              };
              if (index == response.data.role_answer.length) {
                obj.new_row = false;
              } else {
                obj.new_row = true;
              }
              this.roleAnswers.push(obj);
            }
          }
          this.roleAnswers.push({
            role: null,
            answer: null,
            new_row: false,
          });
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  mounted() {
    axios.get("/api/getCompetencyNameList").then((response) => {
      this.competencyNameOptions = response.data;
    });
  },
  methods: {
    saveQuestion() {
      let url =
        this.isEdit == false ? "/addQuestion" : "/update/" + this.editRecordId;
      axios
        .post("/api" + url, {
          competency_type: this.competency_type,
          competency_name: this.competency_name,
          statement: this.questionStatement,
          role_answer: this.roleAnswers,
        })
        .then((response) => {
          this.submitSuccess = true;
          if (this.isEdit) {
            window.location.href = "/list";
          }
        })
        .catch(function(error) {
          console.log(error);
        });
    },
    clearFields() {
      this.competency_type = null;
      this.competency_name = null;
      this.questionStatement = null;
      this.roleAnswers = [
        {
          role: null,
          answer: null,
        },
      ];
      this.submitSuccess = false;
    },
    addNewRow() {
      for (let index = 0; index < this.roleAnswers.length; index++) {
        this.roleAnswers[index].new_row = true;
      }

      this.roleAnswers.push({
        role: null,
        answer: null,
        new_row: false,
      });
    },
    removeRow(index) {
      this.roleAnswers.splice(index, 1);
    },
    returnToList() {
      window.location.href = "/list";
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
