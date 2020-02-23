<template>
    <div>

            <navbar></navbar>
            <home></home>
             <div class="page-content">
                    <featured></featured>
                    <projects></projects>
                    <collections></collections>
                    <contact></contact>
                    <faq></faq>
                    <footers></footers>
            </div>
            

    </div>
</template>

<script>
    import navbar from '../components/navbar'
    import footers from '../components/footer'
    import home from './home'
    import featured from './featured'   
    import projects from './projects'
    import collections  from './collections'
    import contact from './contact'
    import faq from './FAQ'
    export default {
        name: 'index',
        components: {
            navbar,
            footers,
            home,
            featured,
            projects,
            collections,
            contact,
            faq
        }

    }

</script>
<style lang="css" scoped>
div{
    margin:0px;
    padding: 0px;
}
</style>
