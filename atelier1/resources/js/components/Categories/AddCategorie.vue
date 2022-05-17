<template lang="">

<form @submit.prevent="ajouterCategorie">
 <div class="form-group">
 <input type="text" class="form-control" placeholder="Nom" v-model="nomcategorie">
 </div>
 <div class="form-group">
  <FilePond max-files="1" @change="onFileChange"/>
 <input type="file" class="form-control" placeholder="Image" @change="onFileChange">
</div>

 <button type="submit" class="btn btn-block btn-primary">Ajouter
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
 nomcategorie: "",
 imagecategorie: "",
 }
 },
 methods: {

 ajouterCategorie(){ 
 const categ = {
 nomcategorie:this.nomcategorie,
 imagecategorie:this.imagecategorie
 }
 console.log(categ)
 this.axios.post("http://localhost:8000/api/categories",categ)
 .then(() => {
 this.$router.push('/categories')})
 .catch(error => {
 this.errorMessage = error.message;
 console.error("There was an error!", error);})
 },
 onFileChange(e) {
 this.imagecategorie = "categories/"+e.target.files[0].name;
 }
 }
}
</script>
<style lang="">

</style>
