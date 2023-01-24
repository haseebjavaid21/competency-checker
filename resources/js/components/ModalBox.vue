<template>
  <div class="modal-card">
    <header class="modal-card-head">
      <p class="modal-card-title"><b>Confirm action</b></p>
    </header>
    <section class="modal-card-body">
      <p>
        This will permanently delete the record. Are you sure?
      </p>
    </section>
    <footer class="modal-card-foot">
      <button class="button" type="button" @click="cancel">Cancel</button>
      <button class="button is-danger" @click="confirm">Delete</button>
    </footer>
  </div>
</template>

<script>
export default {
  name: "ModalBox",
  props: {
    isActive: {
      type: Boolean,
      default: false,
    },
    trashObjectName: {
      type: String,
      default: null,
    },
  },
  data() {
    return {
      isModalActive: false,
    };
  },
  watch: {
    isActive(newValue) {
      this.isModalActive = newValue;
    },
    isModalActive(newValue) {
      if (!newValue) {
        this.cancel();
      }
    },
  },
  methods: {
    cancel() {
      this.$emit("cancel");
    },
    confirm() {
      this.$emit("confirm");
    },
  },
};
</script>

<style>
.modal-card {
  border: 1px solid darkgrey;
  padding-bottom: 9px;
  width: 36%;
  margin-left: 18%;
  margin-top: 10%;
  z-index: 999999999999;
  position: absolute;
  background: cornsilk;
}
</style>
