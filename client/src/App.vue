<template>
  <div id="app">
    <nav class="navigation">
      <ul>
        <li>
          <router-link to="/">Home</router-link>
        </li>
        <li>
          <router-link to="/entries">Entries</router-link>
        </li>
        <li>
          <router-link to="/tags">Tags</router-link>
        </li>
        <li>
          <router-link to="/logout">Logout</router-link>
        </li>
      </ul>
    </nav>
    <router-view/>
  </div>
</template>

<style lang="scss">
$bg: #fff;
$bg-ctrl: #cedbf6;
$disabled-ctrl: #4576db;
$secondary: #f5deb3;
$primary: #6495ed;

body,
ul {
  padding: 0;
  margin: 0;
}

ul {
  list-style: none;
}

a {
  text-decoration: none;
  color: $primary;
}

details {
  display: inline;
}

body {
  padding-top: 35px;
}

.navigation {
  position: fixed;
  top: 0px;
  left: 0px;
  width: 100%;

  background: $primary;

  ul {
    display: flex;

    li {
      &:hover {
        background: #c0c0ff;
      }

      &:last-child {
        margin-left: auto;
      }
    }

    .router-link-exact-active {
      background: #8585e0;

      a {
        pointer-events: none;
        cursor: default;
      }

      &:hover {
        background: #8585e0;
      }
    }

    a {
      display: block;
      padding: 8px;
      color: #111;
    }
  }
}
</style>
