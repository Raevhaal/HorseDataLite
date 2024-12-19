import './assets/main.css'
import './index.css'

import { createApp } from 'vue'
import App from './App.vue' 
//import type { InjectionKey } from 'vue'
import { createStore } from 'vuex'

// declare module 'vue' {
//     // declare your own store states
//     interface State {
//       count: number
//     }
  
//     // provide typings for `this.$store`
//     interface ComponentCustomProperties {
//       $store: Store<State>
//     }
// }

// define your typings for the store state
// export interface State {
//     count: number
// }
  
// define injection key
// export const key: InjectionKey<Store<State>> = Symbol()

const store = createStore({
    state () {
      return {
        count: 0
      }
    },
    mutations: {
      increment (state : any) {
        state.count++
      }
    }
  })


const app = createApp(App)
app.use(store)
app.mount('#mainDiv')

console.log(store.state.count)


