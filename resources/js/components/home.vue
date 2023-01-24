<template>
  <section id="app" class="section">
    <h3 class="title is-1" v-text="title" v-if="showForm"></h3>
    <div class="columns" id="form" v-if="showForm">
      <div class="column form-box">
        <div class="field">
          <label class="label field-tag">Name</label>
          <div class="control ip-field">
            <b-form-input
              id="input-1"
              v-model="name"
              type="text"
              placeholder="Name"
            ></b-form-input>
          </div>
        </div>

        <div class="field">
          <label class="label field-tag">Email</label>
          <div class="control ip-field">
            <b-form-input
              id="input-1"
              v-model="email"
              type="text"
              placeholder="Email"
            ></b-form-input>
          </div>
        </div>

        <div class="field">
          <label class="label field-tag">Education Background</label>
          <div class="control ip-field">
            <b-form-input
              id="input-1"
              v-model="education"
              type="text"
              placeholder="Education Background"
            ></b-form-input>
          </div>
        </div>

        <div class="field">
          <label class="label field-tag">Experience (Years)</label>
          <div class="control ip-field">
            <b-form-input
              id="input-1"
              v-model="experience"
              type="text"
              placeholder="Experience"
            ></b-form-input>
          </div>
        </div>

        <div class="field">
          <label class="label field-tag">Job Title / Role</label>
          <div class="control ip-field">
            <b-form-select
              :options="options"
              v-model="job_title"
            ></b-form-select>
          </div>
        </div>
        <div>
          <label class="label field-tag">Questions List</label>
          <br />
          <div
            v-for="(item, section) in this.questionsList"
            :key="section"
            class="field q-div"
          >
            <label class="label field-tag">
              <b>{{ section }}</b></label
            >
            <br />
            <div
              v-for="(qs, index) in item"
              :key="index"
              class="field type-box"
            >
              <div>
                <label class="label field-tag text-left">
                  {{ index + 1 }}. {{ qs.question }}</label
                >
              </div>
              <br />
              <div class="columns-option">
                <label class="options">
                  <input
                    type="radio"
                    :name="'competency_level_' + qs.id"
                    value="0"
                  />
                  I have never heard about it.
                </label>
                <br />
                <label class="options">
                  <input
                    type="radio"
                    :name="'competency_level_' + qs.id"
                    value="1"
                  />
                  I have heard about it, but I don't apply it.
                </label>
                <br />
                <label class="options">
                  <input
                    type="radio"
                    :name="'competency_level_' + qs.id"
                    value="2"
                  />
                  I understand the relevance of it, but don't apply it.
                </label>
                <br />
                <label class="options">
                  <input
                    type="radio"
                    :name="'competency_level_' + qs.id"
                    value="3"
                  />
                  I do apply it.
                </label>
                <br />
                <label class="options">
                  <input
                    type="radio"
                    :name="'competency_level_' + qs.id"
                    value="4"
                  />
                  I do apply it in various situations.
                </label>
              </div>
              <br />
              <br />
            </div>
          </div>

          <b-alert show variant="warning" v-if="this.inProgress"
            >Please Wait...</b-alert
          >
          <b-alert show variant="success" v-if="this.submitSuccess"
            >Response Submittied Successfully</b-alert
          >

          <b-alert show variant="danger" v-if="this.isEmpty"
            >Fields Cannot be Empty!</b-alert
          >
          <b-button
            variant="primary"
            @click.prevent="submitAnswers"
            class="btn-sb"
            >Submit</b-button
          >
        </div>
      </div>
    </div>
    <div id="chart-section" v-if="showChart">
      <h3 class="label">Competency Comparison Charts</h3>
      <div id="chart" style="max-width: 60%;margin-left: 22%;margin-top:2%">
        <apexchart
          type="radar"
          height="650"
          :options="chartOptions"
          :series="series_1"
        ></apexchart>
        <apexchart
          type="radar"
          height="650"
          :options="chartOptions_2"
          :series="series_2"
        ></apexchart>
        <apexchart
          type="radar"
          height="650"
          :options="chartOptions_3"
          :series="series_3"
        ></apexchart>
        <apexchart
          type="radar"
          height="650"
          :options="chartOptions_4"
          :series="series_4"
        ></apexchart>
      </div>
    </div>
  </section>
</template>

<script>
import $ from "jquery";
export default {
  name: "home",
  data() {
    return {
      title: "Please Answer The Questions Below",
      name: null,
      email: null,
      education: null,
      experience: null,
      job_title: null,
      questionsList: [],
      submittedAnswers: {},
      showSubmitFeedback: false,
      showForm: true,
      showChart: false,
      subScore: [],
      expecScore: [],
      questionAxis: [],
      inProgress: false,
      submitSuccess: false,
      questionsLoaded: false,
      chartOptions_2: null,
      chartOptions_3: null,
      chartOptions_4: null,
      isEmpty: false,
      options: [
        { value: "null", text: "Please select your Role" },
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
        { value: "production_staff", text: "Production staff" },
        { value: "service_technician", text: "Service technician" },
        { value: "quality_manager", text: "Quality manager" },
        {
          value: "innovation_and_strategy_management",
          text: "Innovation and (strategy) management",
        },
        { value: "management", text: "Management" },
      ],
      //   chart: {
      //     type: "bar",
      //     height: 500,
      //   },
      //   plotOptions: {
      //     bar: {
      //       horizontal: false,
      //       dataLabels: {
      //         position: "top",
      //       },
      //     },
      //   },
      //   dataLabels: {
      //     enabled: true,
      //     offsetX: -6,
      //     style: {
      //       fontSize: "12px",
      //       colors: ["#fff"],
      //     },
      //   },
      //   stroke: {
      //     show: true,
      //     width: 1,
      //     colors: ["#fff"],
      //   },
      //   tooltip: {
      //     shared: true,
      //     intersect: false,
      //   },
      //   xaxis: {
      //     categories: null,
      //   },
      //   legend: {
      //     show: true,
      //   },
      //   title: {
      //     text: undefined,
      //     align: "left",
      //     margin: 10,
      //     offsetX: 0,
      //     offsetY: 0,
      //     floating: false,
      //     style: {
      //       fontSize: "14px",
      //       fontWeight: "bold",
      //       fontFamily: undefined,
      //       color: "#263238",
      //     },
      //   },
      // },
      chartOptions: {
        chart: {
          height: 650,
          type: "radar",
          dropShadow: {
            enabled: true,
            blur: 1,
            left: 1,
            top: 1,
          },
        },
        title: {
          text: null,
          align: "center",
        },
        stroke: {
          width: 2,
        },
        fill: {
          opacity: 0.1,
        },
        markers: {
          size: 0,
        },
        xaxis: {
          categories: null,
        },
        legend: {
          show: true,
        },
      },
    };
  },
  computed: {},
  created() {},
  mounted() {
    this.$buefy.toast.open({
      message: `Questions are being laoded. Please wait`,
      type: "is-warning",
      queue: false,
    });

    axios
      .get("/api/getQuestionsList/")
      .then((response) => {
        this.questionsList = response.data;
      })
      .catch(function(error) {
        console.log(error);
      });
  },
  methods: {
    submitAnswers() {
      if (
        this.name == null ||
        this.email == null ||
        this.education == null ||
        this.experience == null ||
        this.job_title == null
      ) {
        this.isEmpty = true;
      } else {
        this.isEmpty = false;
        this.showSubmitFeedback = true;
        this.submittedAnswers["name"] = this.name;
        this.submittedAnswers["email"] = this.email;
        this.submittedAnswers["education"] = this.education;
        this.submittedAnswers["experience"] = this.experience;
        this.submittedAnswers["job_title"] = this.job_title;

        let qCount = 0;
        let outerKeys = Object.keys(this.questionsList);
        for (let idx = 0; idx < outerKeys.length; idx++) {
          for (
            let inner_index = 0;
            inner_index < this.questionsList[outerKeys[idx]].length;
            inner_index++
          ) {
            this.submittedAnswers["question_" + qCount] = $(
              "input[type='radio'][name='competency_level_" +
                this.questionsList[outerKeys[idx]][inner_index].id +
                "']:checked"
            ).val();
            qCount += 1;
          }
        }

        this.submittedAnswers["questionCount"] = qCount;
        this.inProgress = true;

        let scoresList = [];
        axios
          .post("/api/saveResponse", this.submittedAnswers)
          .then((response) => {
            this.inProgress = false;
            this.submitSuccess = true;
            qCount = 0;
            for (let sec_index = 0; sec_index < outerKeys.length; sec_index++) {
              for (
                let qindex = 0;
                qindex < this.questionsList[outerKeys[sec_index]].length;
                qindex++
              ) {
                if (
                  response.data[outerKeys[sec_index]][
                    this.questionsList[outerKeys[sec_index]][qindex].question
                  ]
                ) {
                  this.subScore.push(
                    this.submittedAnswers["question_" + qCount]
                  );

                  this.expecScore.push(
                    response.data[outerKeys[sec_index]][
                      this.questionsList[outerKeys[sec_index]][qindex].question
                    ]
                  );
                  this.questionAxis.push(
                    this.questionsList[outerKeys[sec_index]][qindex]
                      .competency_name
                  );
                  qCount += 1;
                }
              }
              scoresList[outerKeys[sec_index]] = [];
              scoresList[outerKeys[sec_index]].push([
                this.subScore,
                this.expecScore,
                this.questionAxis,
              ]);
              this.subScore = [];
              this.expecScore = [];
              this.questionAxis = [];
            }

            this.series_1 = [
              {
                name: "Submitted Score",
                data: scoresList["Methodical Competencies"][0][0],
              },
              {
                name: "Expected Score for Role: " + this.job_title,
                data: scoresList["Methodical Competencies"][0][1],
              },
            ];

            this.series_2 = [
              {
                name: "Submitted Score",
                data: scoresList["Professional Competencies"][0][0],
              },
              {
                name: "Expected Score for Role: " + this.job_title,
                data: scoresList["Professional Competencies"][0][1],
              },
            ];

            this.series_3 = [
              {
                name: "Submitted Score",
                data: scoresList["Self and Social Competencies"][0][0],
              },
              {
                name: "Expected Score for Role: " + this.job_title,
                data: scoresList["Self and Social Competencies"][0][1],
              },
            ];

            this.series_4 = [
              {
                name: "Submitted Score",
                data: scoresList["Management Competencies"][0][0],
              },
              {
                name: "Expected Score for Role: " + this.job_title,
                data: scoresList["Management Competencies"][0][1],
              },
            ];

            //this.chartOptions.xaxis.categories = this.questionAxis;
            this.chartOptions_2 = JSON.parse(JSON.stringify(this.chartOptions));
            this.chartOptions_3 = JSON.parse(JSON.stringify(this.chartOptions));
            this.chartOptions_4 = JSON.parse(JSON.stringify(this.chartOptions));
            this.chartOptions.xaxis.categories =
              scoresList["Methodical Competencies"][0][2];
            this.chartOptions.title.text = "Methodical Competencies";
            this.chartOptions_2.xaxis.categories =
              scoresList["Professional Competencies"][0][2];
            this.chartOptions_2.title.text = "Professional Competencies";
            this.chartOptions_3.xaxis.categories =
              scoresList["Self and Social Competencies"][0][2];
            this.chartOptions_3.title.text = "Self and Social Competencies";
            this.chartOptions_4.xaxis.categories =
              scoresList["Management Competencies"][0][2];
            this.chartOptions_4.title.text = "Management Competencies";
            this.showForm = false;
            this.showChart = true;
          })
          .catch(function(error) {
            console.log(error);
          });
      }
    },
  },
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

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

.q-div {
  border: 1px solid lightgrey;
  margin-bottom: 10px;
  padding-left: 2px;
}
.columns-option {
  margin-top: 8%;
}

.btn-sb {
  margin-bottom: 10px;
}
</style>
