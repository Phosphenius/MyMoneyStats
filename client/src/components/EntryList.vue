<template>
  <div>
    <md-table>
       <md-table-row>
        <md-table-head md-numeric>ID</md-table-head>
        <md-table-head>Amount</md-table-head>
        <md-table-head>Title</md-table-head>
      </md-table-row>

      <md-table-row v-for="entry in entryList" :key="entry.id"> 
        <md-table-cell md-numeric>{{ entry.id }}</md-table-cell>
        <md-table-cell>{{ entry.amount }}</md-table-cell>
        <md-table-cell>{{ entry.title }}</md-table-cell>
      </md-table-row>
    </md-table>
  </div>
</template>

<script>


export default {
  name: "EntryList",
  computed: {
    entryList: {
      get () {
        return this.$store.state.entries
      }
    }
  }
}
</script>
