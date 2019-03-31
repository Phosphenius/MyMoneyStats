<template>
  <div>
    <form novalidate class="md-layout" @submit.prevent="validateTag">
      <md-card class="md-layout-item md-size-50 md-small-size-100">
        <md-card-header>
          <div class="md-title">Add Tag</div>
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
                  v-model="tag.title"
                  :disabled="sending"
                />
                <span class="md-error" v-if="!$v.tag.title.required">The title is required</span>
                <span class="md-error" v-else-if="!$v.tag.title.minlength">Invalid title</span>
              </md-field>
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
    <taglist />
  </div>
</template>

<script>
import { validationMixin } from "vuelidate";
import { required, minLength } from "vuelidate/lib/validators";

import taglist from "@/components/TagList.vue"


export default {
  name: "tags",
  components: {taglist},
  mixins: [validationMixin],
  data: () => ({
    tag: {
      title: null,
    },
    sending: false
  }),
  validations: {
    tag: {
      title: {
        required,
        minLength: minLength(3)
      }
    }
  },
  methods: {
    getValidationClass(fieldName) {
      const field = this.$v.tag[fieldName];

      if (field) {
        return {
          "md-invalid": field.$invalid && field.$dirty
        };
      }
    },
    validateTag() {
      this.$v.$touch();

      if (!this.$v.$invalid) {
        this.submit();
      }
    },
    submit() {
      this.sending = true;
      this.$store.dispatch('createTag', this.tag)
        .then(() => {
          this.sending = false;
          this.clearForm()
        });
    },
    clearForm() {
      this.$v.$reset();
      this.tag.title = null
    }
  }
};
</script>
