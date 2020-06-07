<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <span @click="update" v-if="!is_refresh & count!=0" style="color:blue; cursor:pointer" >Забронировать</span>
                <span v-if="is_refresh & !ok &!err" style="color:grey">Ожидание сервера...</span>
                <span v-if="is_refresh & ok & !massage &!err" style="color:green;" >
                Книга успешно забронирована.<br> Книга будет ждать вас 3 дня
                </span>
                <span v-if="is_refresh & ok & massage &!err" style="color:red" >
                Вы уже забронировали эту книгу
                </span>
                <span v-if="count==0" style="color:grey" >
                Нет свободных копий
                </span>
                <span v-if="err" style="color:red;">Ошибка</span>
            </div>
        </div>
    </div>
</template>
 
<script>
    export default {
        props:[
            "book",
            "user_id",
            "count",
        ],
        data:function(){
            return{
                is_refresh:false,
                ok:false,
                massage:false,
                err:false,
            }
        },
        mounted() {
        },
        methods: {
            update:function(){
                this.is_refresh = true;
                axios.post("/booked",{book_id:this.book,user_id:this.user_id}).then((res) => {
                    if(res.data == "Вы уже забронировали эту книгу"){
                        this.ok = true;
                        this.massage = true;
                    }else this.ok = true;
                }).catch((error) => {
                    this.err = true;
                    console.log(error);
                });
            }
        }
        
    }
</script>
