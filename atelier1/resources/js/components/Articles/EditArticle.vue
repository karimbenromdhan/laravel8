<template lang="">
<form @submit.prevent="modifierproduit">

 <div class="form-group">
 <input type="text" class="form-control" placeholder="reference" v-model="article.reference">
 </div>
 <div class="form-group">
     <input type="text" class="form-control" placeholder="designation" v-model="article.designation">
 </div>
 <div class="form-group">
 <input type="text" class="form-control" placeholder="marque" v-model="article.marque">
 </div>
 <div class="form-group">
 <input type="text" class="form-control" placeholder="caracteristiques" v-model="article.caracteristiques">
 </div>
 <div class="form-group">
 <input type="number" class="form-control" placeholder="prixAchat" v-model="article.prixAchat">
 </div>
 <div class="form-group">
 <input type="number" class="form-control" placeholder="prixVente" v-model="article.prixVente">
 </div>
 <div class="form-group">
 <input type="number" class="form-control" placeholder="prixSolde" v-model="article.prixSolde">
 </div>
 <div class="form-group">
 <input type="number" class="form-control" placeholder="qtestock" v-model="article.qtestock">
 </div>
 <div class="form-group">
 Catégories<select class="form-control" v-model="article.categorieID"
@change="getscategories($event)" >
 <option :value=article.categorieID></option>
 <option v-for="c in Categories" :key="c.id"
:value=c.id>{{c.nomcategorie}}</option>
 </select>
 </div>
 <div class="form-group">
 Sous Catégories<select class="form-control" v-model="article.scategorieID">
 <option :value=article.scategorieID></option>
 <option v-for="sc in Scategories" :key="sc.id"
:value=sc.id>{{sc.nomscategorie}}</option>
 </select>
 </div>
 <div class="form-group">
 <FilePond max-files="1" @change="onFileChange"
:files="article.imageartpetitf" />
</div>
 <div class="form-group">
     <FilePond @change="onFileChangeM" :files="tab" @removefile
="onRemoveFileClick" />
</div>
 <button type="submit" class="btn btn-block btn-primary">Modifier
Produit</button>
</form>
</template>

<script>
import vueFilePond from 'vue-filepond';
import 'filepond/dist/filepond.min.css';
import FilePondPluginImagePreview from 'filepond-plugin-image-preview';
import 'filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.css';

export default {
 name: 'edit',
 components: {
 FilePond: vueFilePond(FilePondPluginImagePreview)
 },
 data() {
 return {
 tab:[],
 article:{},
 Categories:[],
 Scategories:[],

 }
 },
 methods: {

 modifierproduit(){
 this.axios.patch(`http://localhost:8000/api/articles/${this.$route.params.id}`,this.article)
 .then(() => {
 this.$router.push('/articles')})
 .catch(error => {
 this.errorMessage = error.message;
 console.error("There was an error!", error);})
 },
 onFileChange(e) { 
     this.article.imageartpetitf =
'../storage/images/'+e.target.files[0].name;

 },
 onFileChangeM (e) {

 this.tab.push('../storage/images/'+e.target.files[0].name);
 this.article.imageartgrandf=JSON.stringify(this.tab);
 console.log(this.article.imageartgrandf)
 },
 onRemoveFileClick(...e){
 let imag= '../storage/images/'+e[1].filename;
 var index = this.tab.map((val)=> {return val }).indexOf(imag);
 this.tab.splice(index,1);
 this.article.imageartgrandf=JSON.stringify(this.tab);
 },
 getscategories(event){
 let categ=event.target.value;
 this.axios.get('http://localhost:8000/api/scat/'+categ).then(res =>
{
 this.Scategories = res.data;
 }).catch(error => {
 console.log(error)
 });
 },
 getCategories(){
 this.axios.get('http://localhost:8000/api/categories').then(res => {
 this.Categories = res.data;
 }).catch(error => {
 console.log(error)
 });
 },
 getOneArticle(){
 this.axios
 .get(`http://localhost:8000/api/articles/${this.$route.params.
id}`)
 .then((res) => {
 this.article = res.data;
 this.tab= JSON.parse(this.article.imageartgrandf);
 });
 }
 },
 created() {
 this.getOneArticle() ;
 this.getCategories();
 },
}
</script>
<style lang="">

</style>