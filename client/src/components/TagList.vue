<template>
  <div>
     <md-table v-model="$store.state.tag.tags" md-sort="amount" md-sort-order="asc" md-fixed-header>
      <md-table-toolbar>
        <h1 class="md-title">Tags</h1>
      </md-table-toolbar>

      <md-table-row slot="md-table-row" slot-scope="{ item }">
        <md-table-cell md-label="ID" md-sort-by="id">{{ item.id }}</md-table-cell>
        <md-table-cell md-label="Title" md-sort-by="title">{{ item.title }}</md-table-cell>
      </md-table-row>
    </md-table>
  </div>
</template>

<script>
export default {
  name: "taglist"
};
</script>
