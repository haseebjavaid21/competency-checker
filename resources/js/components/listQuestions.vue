<template>
  <section id="app" class="section">
    <h3 class="title is-1">Questions List</h3>
    <b-icon icon="trash-can" size="is-medium"> </b-icon>
    <div class="columns">
      <div class="column table-box">
        <modal-box
          v-if="isModalActive"
          :trash-object-name="trashSubject"
          @confirm="trashConfirm"
          @cancel="trashCancel"
        />

        <b-table
          :loading="isLoading"
          :paginated="paginated"
          :per-page="perPage"
          :striped="true"
          :hoverable="true"
          :data="questionList"
        >
          <b-table-column label="ID" field="id" v-slot="props">
            <p class="text-left">{{ props.row.id }}</p>
          </b-table-column>
          <b-table-column label="Question" field="question" v-slot="props">
            <p>{{ props.row.question }}</p>
          </b-table-column>
          <b-table-column
            label="Competency Type"
            field="competency_type"
            v-slot="props"
          >
            <p class="text-left">{{ props.row.competency_type }}</p>
          </b-table-column>
          <b-table-column
            label="Competency Name"
            field="competency_name"
            v-slot="props"
          >
            <p class="text-left">{{ props.row.competency_name }}</p>
          </b-table-column>
          <b-table-column
            custom-key="actions"
            class="is-actions-cell"
            v-slot="props"
          >
            <div class="buttons is-right">
              <button
                class="button is-small is-danger edit-btn"
                type="button"
                @click.prevent="editModal(props.row)"
              >
                Edit
              </button>
              <br />
              <button
                class="button is-small is-danger"
                type="button"
                @click.prevent="trashModal(props.row)"
              >
                Delete
              </button>
            </div>
          </b-table-column>
        </b-table>
      </div>
    </div>
  </section>
</template>

<script>
import $ from "jquery";
import ModalBox from "@/components/ModalBox";
import router from "@/router.js";

export default {
  name: "questionCreator",
  components: {
    ModalBox,
  },
  data() {
    return {
      questionList: [],
      isLoading: false,
      paginated: false,
      perPage: 10,
      checkedRows: [],
      isModalActive: false,
      trashObject: null,
    };
  },
  computed: {
    trashSubject() {
      if (this.trashObject) {
        return this.trashObject.name;
      }
      if (this.checkedRows.length) {
        return `${this.checkedRows.length} entries`;
      }
      return null;
    },
  },
  created() {},
  mounted() {
    this.getQuestionsList();
  },
  methods: {
    getQuestionsList() {
      axios
        .get("/api/all")
        .then((response) => {
          if (response.data.length > this.perPage) {
            this.paginated = true;
          } else {
            this.paginated = false;
          }
          this.questionList = response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    },
    trashModal(trashObject = null) {
      if (trashObject) {
        this.trashObject = trashObject;
        this.isModalActive = true;
      }
    },
    trashConfirm() {
      this.isModalActive = false;

      axios
        .delete("/api/" + this.trashObject.id + "/delete")
        .then((response) => {
          this.trashObject = null;
          this.$buefy.toast.open({
            message: `Deleted`,
            type: "is-success",
            queue: false,
          });
          this.getQuestionsList();
        })
        .catch((err) => {
          this.$buefy.toast.open({
            message: `Error: ${err.message}`,
            type: "is-danger",
            queue: false,
          });
        });
    },
    trashCancel() {
      this.isModalActive = false;
    },
    editModal(editModal) {
      if (editModal) {
        //router.push({ path: "/edit/" + editModal.id });
        window.location.href = "/edit/" + editModal.id;
      }
    },
  },
};
</script>

<style>
.table-box {
  width: 72%;
  margin-left: 15%;
}

.edit-btn {
  margin-bottom: 10px;
}
</style>
