<template>
  <div>
    <form novalidate class="md-layout" @submit.prevent="validateUser">
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
                <span class="md-error" v-if="!$v.entry.title.required">The title</span>
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
              <md-datepicker :class="getValidationClass('amount')" v-model="entry.date">
                <label>Date</label>
                <span class="md-error" v-if="!$v.entry.date.required">The date is required</span>
              </md-datepicker>
            </div>
          </div>
        </md-card-content>
        <md-card-actions>
          <md-button class="md-icon-button md-raised md-primary">
            <md-icon>add</md-icon>
          </md-button>
        </md-card-actions>
      </md-card>
    </form>
  </div>
</template>

<script>
import { validationMixin } from "vuelidate";
import { required, minLength, decimal } from "vuelidate/lib/validators";

export default {
  name: "entries",
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
      },
      date: {
        required
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
    }
  }
};
</script>
