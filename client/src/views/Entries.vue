<template>
  <div>
    <form novalidate class="md-layout" @submit.prevent="validateEntry">
      <md-card class="md-layout-item md-size-50 md-small-size-100">
        <md-card-header>
          <div class="md-title">Add Entry</div>
        </md-card-header>
        <md-card-content>
          <div class="md-layout md-gutter">
            <div class="md-layout-item md-small-size-100">
              <md-field :class="getValidationClass('title')">
                <label for="first-name">Title</label>
                <md-input
                  name="first-name"
                  id="first-name"
                  autocomplete="given-name"
                  v-model="entry.title"
                  :disabled="sending"
                />
                <span class="md-error" v-if="!$v.entry.title.required">The title is required</span>
                <span class="md-error" v-else-if="!$v.entry.title.minlength">Invalid title</span>
              </md-field>
            </div>

            <div class="md-layout-item md-small-size-100">
              <md-field :class="getValidationClass('amount')">
                <label for="first-name">Amount</label>
                <md-input
                  name="first-name"
                  id="first-name"
                  autocomplete="given-name"
                  v-model="entry.amount"
                  :disabled="sending"
                />
                <span class="md-error" v-if="!$v.entry.amount.required">The amount is required</span>
                <span class="md-error" v-else-if="!$v.entry.amount.decimal">Invalid amount</span>
              </md-field>
            </div>

            <div class="md-layout-item md-small-size-100">
              <md-datepicker
                v-model="entry.date"
                :disabled="sending"
              >
                <label>Date</label>
              </md-datepicker>
            </div>
          </div>
        </md-card-content>
        <md-card-actions>
          <md-button type="submit" class="md-icon-button md-raised md-primary" :disabled="sending">
            <md-icon>add</md-icon>
          </md-button>
        </md-card-actions>
      </md-card>
    </form>
    <entrylist />
  </div>
</template>

<script>
import { validationMixin } from "vuelidate";
import { required, minLength, decimal } from "vuelidate/lib/validators";

import entrylist from "@/components/EntryList.vue"


export default {
  name: "entries",
  components: {entrylist},
  mixins: [validationMixin],
  data: () => ({
    entry: {
      title: null,
      amount: null,
      date: new Date()
    },
    sending: false
  }),
  validations: {
    entry: {
      title: {
        required,
        minLength: minLength(3)
      },
      amount: {
        required,
        decimal
      }
    }
  },
  methods: {
    getValidationClass(fieldName) {
      const field = this.$v.entry[fieldName];

      if (field) {
        return {
          "md-invalid": field.$invalid && field.$dirty
        };
      }
    },
    validateEntry() {
      this.$v.$touch();

      if (!this.$v.$invalid) {
        this.submit();
      }
    },
    submit() {
      this.sending = true;
      this.$store.dispatch('createEntry', this.entry)
        .then(() => {
          this.sending = false;
          this.clearForm()
        });
    },
    clearForm() {
      this.$v.$reset();
      this.entry.title = null,
      this.entry.amount = null,
      this.entry.date = new Date()
    }
  }
};
</script>
