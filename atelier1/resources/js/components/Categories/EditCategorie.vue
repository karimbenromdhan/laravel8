<template lang="">

<form @submit.prevent="modifierCategorie">
 <div class="form-group">
 <input type="text" class="form-control" placeholder="Nom" v-model="Categorie.nomcategorie">
 </div>
 <div class="form-group">
<FilePond max-files="1" @change="onFileChange"
:files="'../storage/images/'+Categorie.imagecategorie" />
</div>

 <button type="submit" class="btn btn-block btn-primary">Modifier
Catégorie</button>
</form>
</template>
<script>
import vueFilePond from 'vue-filepond';
import 'filepond/dist/filepond.min.css';
import FilePondPluginImagePreview from 'filepond-plugin-image-preview';
import 'filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.css'; 
export default {
     components: {
 FilePond: vueFilePond(FilePondPluginImagePreview)
 }, 

 data() {
 return {
 Categorie:[]
 }
 },
 mounted (){
 this.getOneCategorie() ;
 },
 methods: {

 modifierCategorie(){
 const categ = {
 nomcategorie:this.Categorie.nomcategorie,
 imagecategorie:this.Categorie.imagecategorie
 }
 this.axios.put(`http://localhost:8000/api/categories/${this.$route.params.id}`,categ)
 .then(() => {
 this.$router.push('/categories')})
 .catch(error => {
 this.errorMessage = error.message;
 console.error("There was an error!", error);})
 },
 onFileChange(e) {
 this.Categorie.imagecategorie =
"categories/"+e.target.files[0].name;
 },
 getOneCategorie(){
 this.axios
 .get(`http://localhost:8000/api/categories/${this.$route.params.id}`)
 .then((res) => {
 this.Categorie = res.data;
 });
 }
 }
} 
</script>
<style lang="">

</style>