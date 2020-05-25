<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <span @click="update" v-if="!is_refresh" style="color:blue; cursor:pointer" >Убрать бронь</span>
                <span v-if="is_refresh & !ok & !err" style="color:grey">Ожидание сервера...</span>
                <span v-if="is_refresh & ok & !err" style="color:green;" >Успешно</span>
                <span v-if="err" style="color:red;" >Ошибка</span>
            </div>
        </div>
    </div>
</template>
 
<script>
    export default {
        props:[
            "book",
            "user_id",
            "elem_id",
        ],
        data:function(){
            return{
                is_refresh:false,
                ok:false,
                err:false,
            }
        },
        mounted() {
        },
        methods: {
            update:function(){
                this.is_refresh = true;
                axios.post("/booked-del",{book_id:this.book,user_id:this.user_id}).then((res) => {
                    if(res.data){
                        this.elem_id = this.elem_id-1;
                        document.getElementById(this.elem_id).remove();
                    }
                }).catch((error) =>{
                    this.err = true;
                    console.log(error);
                });
            }
        }
        
    }
</script>
