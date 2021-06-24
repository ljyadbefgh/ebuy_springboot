webpackJsonp([35,0],{"6Goi":function(e,t){},Qz3x:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o=r("mvHQ"),i=r.n(o),n=r("woOf"),l=r.n(n),a={name:"ProductEdit",components:{"el-select-producttype":function(){return r.e(26).then(r.bind(null,"IOMU"))},"el-select-orderNum":function(){return r.e(27).then(r.bind(null,"fBYU"))}},props:{orderNumOptions:{default:function(){return[]}}},data:function(){return{dialogFormVisible:!1,picUrlId:"picUrl",contentId:"content",picUrlConfig:{wordCount:!1},contentConfig:{wordCount:!0},ueditorLoading1:!0,ueditorLoading2:!0,form:{previewPictures:[],productTypeId:null,name:"",picUrl:"",orderNum:100,recommendation:0,originalPrice:0,price:0,repository:0,click:0,onSale:"",description:"",content:""},rules:{productTypeId:[{required:!0,message:"不能为空"}],name:[{required:!0,message:"不能为空",trigger:"blur"},{min:2,max:30,message:"长度在 2 到 20个字符",trigger:"blur"}],picUrl:[{required:!0,message:"不能为空",trigger:"blur"}],orderNum:[{required:!0,message:"不能为空",trigger:"blur"}],originalPrice:[{validator:this.myMethod.elementRules.validateFloat}],price:[{validator:this.myMethod.elementRules.validateFloat}],repository:[{required:!0,message:"不能为空",trigger:"blur"},{type:"number",message:"必须为数字值"}],click:[{required:!0,message:"不能为空",trigger:"blur"},{type:"number",message:"必须为数字"}],onSale:[{required:!0,message:"请选择显示方式"}]}}},methods:{openDialog:function(e){var t=this;this.dialogFormVisible=!0,this.$nextTick(function(){t.$axios.get("api/backstage/product/"+e).then(function(e){var r=e.data;0===r.code&&(t.form=l()(t.form,r.data),t.form.productTypeId=r.data.productType.id,t.form.onSale=String(t.form.onSale))})})},closeDialog:function(){this.dialogFormVisible=!1},opened:function(){},closed:function(){this.$refs.form.resetFields(),this.$refs.contentUeditor.setContent("")},onchangeLoaddingOfImage:function(e){this.ueditorLoading1=e},onchangeLoaddingOfContent:function(e){this.ueditorLoading2=e},uploadPicUrl:function(e){this.form.picUrl=e},uploadPrePicUrl:function(e){var t=e.split(",");this.form.previewPictures.length+t.length>8?this.$message.error("预览图不能超过8张"):this.form.previewPictures=this.form.previewPictures.concat(t)},removePreviewPicture:function(e){this.form.previewPictures.splice(e,1)},submitForm:function(e){var t=this;this.$refs[e].validate(function(e){if(!e)return!1;var r={id:t.form.productTypeId};t.form.productType=r,t.form.content=t.$refs.contentUeditor.getContent(),t.$axios.put("/api/backstage/product",i()(t.form)).then(function(e){var r=e.data;0===r.code&&(t.$message({type:"success",message:r.msg}),t.$emit("tableRefresh"),t.closeDialog())})})}}},c={render:function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("el-dialog",{attrs:{title:"产品编辑",visible:e.dialogFormVisible,"close-on-click-modal":!1,width:"1010px"},on:{"update:visible":function(t){e.dialogFormVisible=t},opened:e.opened,closed:e.closed}},[r("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"80px"}},[r("el-form-item",{attrs:{label:"产品分类",prop:"productTypeId",align:"left"}},[r("el-select-producttype",{model:{value:e.form.productTypeId,callback:function(t){e.$set(e.form,"productTypeId",t)},expression:"form.productTypeId"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"名称",prop:"name"}},[r("el-input",{attrs:{maxlength:"10","show-word-limit":""},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"图片",prop:"picUrl",align:"left"}},[r("el-input",{staticStyle:{width:"300px"},attrs:{clearable:"",readonly:""},model:{value:e.form.picUrl,callback:function(t){e.$set(e.form,"picUrl",t)},expression:"form.picUrl"}}),e._v(" "),r("MyUeditor",{attrs:{editorId:"picUrlIdEdit",config:e.picUrlConfig,loading:e.ueditorLoading1,editorType:"image"},on:{onChangeLoading:e.onchangeLoaddingOfImage,uploadPicUrl:e.uploadPicUrl}})],1),e._v(" "),r("el-form-item",{attrs:{label:"预览图"}},[r("div",{attrs:{id:"picturePreViewsDiv"}},e._l(e.form.previewPictures,function(t,o){return r("article",{key:o,staticClass:"picturePreView",on:{mouseover:function(t){e.imageOperatorShow=!0},mouseout:function(t){e.imageOperatorShow=!1}}},[r("el-image",{staticStyle:{height:"60px",width:"80px","margin-right":"10px"},attrs:{fit:"fill",src:t,"preview-src-list":[t]}}),e._v(" "),r("div",{attrs:{align:"center",id:"'mask_'+index"}},[r("el-link",{staticStyle:{"font-size":"12px"},attrs:{type:"primary",icon:"el-icon-delete"},on:{click:function(t){return e.removePreviewPicture(o)}}},[e._v("删除")])],1)],1)}),0),e._v(" "),r("MyUeditor",{attrs:{editorId:"picUrlId+index",config:e.picUrlConfig,editorType:"image",allowUploadPictureNumber:"8"},on:{uploadPicUrl:e.uploadPrePicUrl}})],1),e._v(" "),r("el-form-item",{attrs:{label:"优先级",prop:"orderNum",align:"left"}},[r("el-select-orderNum",{attrs:{orderNumOptions:e.orderNumOptions},model:{value:e.form.orderNum,callback:function(t){e.$set(e.form,"orderNum",e._n(t))},expression:"form.orderNum"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"推荐指数",prop:"recommendation",align:"left"}},[r("el-rate",{attrs:{max:5,"show-score":"","text-color":"#ff9900"},model:{value:e.form.recommendation,callback:function(t){e.$set(e.form,"recommendation",t)},expression:"form.recommendation"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"产品原价",prop:"originalPrice"}},[r("el-input",{model:{value:e.form.originalPrice,callback:function(t){e.$set(e.form,"originalPrice",t)},expression:"form.originalPrice"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"产品现价",prop:"price"}},[r("el-input",{model:{value:e.form.price,callback:function(t){e.$set(e.form,"price",t)},expression:"form.price"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"库存",prop:"repository"}},[r("el-input",{model:{value:e.form.repository,callback:function(t){e.$set(e.form,"repository",e._n(t))},expression:"form.repository"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"人气",prop:"click"}},[r("el-input",{model:{value:e.form.click,callback:function(t){e.$set(e.form,"click",e._n(t))},expression:"form.click"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"是否上架",prop:"onSale",align:"left"}},[r("el-select",{attrs:{placeholder:"请选择上架状态"},model:{value:e.form.onSale,callback:function(t){e.$set(e.form,"onSale",t)},expression:"form.onSale"}},[r("el-option",{attrs:{value:"true",label:"上架"}}),e._v(" "),r("el-option",{attrs:{value:"false",label:"下架"}})],1)],1),e._v(" "),r("el-form-item",{attrs:{label:"简介",prop:"description"}},[r("el-input",{attrs:{type:"textarea",autosize:{minRows:6,maxRows:10},placeholder:"请输入简介"},model:{value:e.form.description,callback:function(t){e.$set(e.form,"description",t)},expression:"form.description"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"介绍",prop:"content",align:"left"}},[r("MyUeditor",{ref:"contentUeditor",attrs:{editorType:"editor",editorId:"contentIdEdit",loading:e.ueditorLoading2,value:e.form.content,config:e.contentConfig},on:{onChangeLoading:e.onchangeLoaddingOfContent}})],1)],1),e._v(" "),r("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[r("el-button",{on:{click:function(t){e.dialogFormVisible=!1}}},[e._v("取 消")]),e._v(" "),r("el-button",{attrs:{type:"primary"},on:{click:function(t){return e.submitForm("form")}}},[e._v("编辑")])],1)],1)},staticRenderFns:[]};var s=r("VU/8")(a,c,!1,function(e){r("6Goi")},"data-v-c3d607a2",null);t.default=s.exports},mvHQ:function(e,t,r){e.exports={default:r("qkKv"),__esModule:!0}},qkKv:function(e,t,r){var o=r("FeBl"),i=o.JSON||(o.JSON={stringify:JSON.stringify});e.exports=function(e){return i.stringify.apply(i,arguments)}}});