<template>
  <div id="FramedataSite">
    <img class="h-[20vh]" src="./assets/test.png" />
    <p class="font-bold">This is my vuejs test</p>
    <ErikTest id="ok" BAM="test"></ErikTest>
  </div>
</template>


<script>

import ErikTest from './components/ErikTest.vue';
export default {
  name: 'FramedataSite',
    components: {
        ErikTest
    }
}
</script>
