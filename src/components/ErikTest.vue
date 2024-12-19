<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <!-- <h1>Number of row : {{ lengthOfValues }}</h1> -->
    <!-- <ul v-for = "row in getValues">
          {{ row[0] }} / {{ row[1] }}
        </ul> -->
    <br />
    <p class="text-3xl">test</p>
    <ul>
      <li>
        <a href="https://github.com/skysign/vuejs-sqljs-boilerplate" target="_blank"
          >vuejs-sqljs-boilerplate</a
        >
        <p>{{ store }}</p>
      </li>
    </ul>
  </div>
</template>

<script>
// import SQL from 'sql.js'
// const db = new SQL.Database();

export default {
name: 'ErikTest',
data () {
    return {
    msg: 'Welcome to awawa'
    }
},

// created: function () {
//   console.log('begin created HelloWorld')
//   this.$store.dispatch('getDBFile', { self: this })
//   console.log('end created HelloWorld')
// },

// computed: {
//   lengthOfValues: function () {
//     return this.$store.state.values.length
//   },
//   getValues: function () {
//     return this.$store.state.values
//   }
// },

// methods: {
//   DBFileIsLoaded: function () {
//     console.log('begin DBFileIsLoaded')
//     this.$store.state.db = new SQL.Database(this.$store.state.dbFile)
//     let sql = 'select * from mytable'
//     let rlt = this.$store.state.db.exec(sql)
//     this.$store.state.values = rlt[0].values

//     console.log(rlt)
//     console.log('end DBFileIsLoaded')
//   }
// }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1,
h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
