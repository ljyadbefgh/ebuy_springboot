webpackJsonp([26],{IOMU:function(t,e,r){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var n={render:function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("el-select",{attrs:{clearable:"",filterable:"",remote:"","remote-method":t.searchProductTypeOptions,placeholder:"请选择产品类别"},on:{clear:t.clear,focus:t.focus},model:{value:t.productTypeId,callback:function(e){t.productTypeId=e},expression:"productTypeId"}},t._l(t.productTypeOptions,function(t){return r("el-option",{key:t.id,attrs:{label:t.name,value:t.id}})}),1)},staticRenderFns:[]};var o=r("VU/8")({name:"el-select-producttype",props:{value:{default:function(){return null}}},data:function(){return{query:"",productTypeOptions:[]}},methods:{searchProductTypeOptions:function(t){var e=this;""!=t&&""!=this.productTypeId?this.$message.error("如需选择其他的值，请先点右侧清空按钮，清空当前选项后再进行选择"):(this.query=t,this.$axios.get("/api/backstage/producttype",{params:{page:1,limit:10,name:this.query,id:this.productTypeId}}).then(function(t){var r=t.data;0===r.code&&(e.productTypeOptions=r.data)}))},clear:function(){var t=this;this.$nextTick(function(){t.searchProductTypeOptions("")})},focus:function(){null!=this.productTypeId&&""!=this.productTypeId||this.searchProductTypeOptions("")}},watch:{value:function(t,e){null!=t&&""!=t&&this.searchProductTypeOptions("")}},computed:{productTypeId:{get:function(){return this.value},set:function(t){this.$emit("input",t)}}}},n,!1,function(t){r("U/yu")},"data-v-8907f106",null);e.default=o.exports},"U/yu":function(t,e){}});