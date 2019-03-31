<template>
  <div>
  </div>
</template>

<script>
import { validationMixin } from 'vuelidate'
  import {
    required,
    email,
    minLength,
    maxLength
  } from 'vuelidate/lib/validators'
export default {
  name: "entries",
  mixins: [validationMixin],
  data: () => ({

  }),
  validations: {

  },
  methods: {

  }
}
</script>
