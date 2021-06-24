webpackJsonp([72],{"01Wq":function(e,r,t){"use strict";Object.defineProperty(r,"__esModule",{value:!0});var n={name:"ProductOrderSearch",components:{"el-select-customer":function(){return t.e(28).then(t.bind(null,"LK+k"))},"el-date-picker-between":function(){return t.e(30).then(t.bind(null,"/x8Z"))}},props:{productOrderQuery:{type:Object,default:function(){return{}}}},computed:{},data:function(){return{dialogFormVisible:!1}},methods:{openDialog:function(){this.dialogFormVisible=!0},closeDialog:function(){this.dialogFormVisible=!1},opened:function(){},closed:function(){this.$refs.form.resetFields()},createTimeQueryBeginChange:function(e){this.$set(this.productOrderQuery,"createTimeQueryOfBegin",e)},createTimeQueryEndChange:function(e){this.$set(this.productOrderQuery,"createTimeQueryOfEnd",e)},dealTimeQueryOfBeginChange:function(e){this.$set(this.productOrderQuery,"dealTimeQueryOfBegin",e)},dealTimeQueryOfEndChange:function(e){this.$set(this.productOrderQuery,"dealTimeQueryOfEnd",e)},sendTimeQueryOfBeginChange:function(e){this.$set(this.productOrderQuery,"sendTimeQueryOfBegin",e)},sendTimeQueryOfEndChange:function(e){this.$set(this.productOrderQuery,"sendTimeQueryOfEnd",e)},receiveTimeQueryOfBeginChange:function(e){this.$set(this.productOrderQuery,"receiveTimeQueryOfBegin",e)},receiveTimeQueryOfEndChange:function(e){this.$set(this.productOrderQuery,"receiveTimeQueryOfEnd",e)}}},i={render:function(){var e=this,r=e.$createElement,t=e._self._c||r;return t("el-dialog",{attrs:{title:"高级查询",visible:e.dialogFormVisible,"close-on-click-modal":!1,width:"600px"},on:{"update:visible":function(r){e.dialogFormVisible=r},opened:e.opened,closed:e.closed}},[t("el-form",{ref:"form",attrs:{model:e.productOrderQuery,"label-width":"90px"}},[t("el-form-item",{attrs:{label:"订单编号",align:"left"}},[t("el-input",{attrs:{placeholder:"订单编号"},model:{value:e.productOrderQuery.orderNo,callback:function(r){e.$set(e.productOrderQuery,"orderNo",r)},expression:"productOrderQuery.orderNo"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"付款方式",align:"left"}},[t("el-select",{attrs:{clearable:"",placeholder:"请选择"},model:{value:e.productOrderQuery.paymentType,callback:function(r){e.$set(e.productOrderQuery,"paymentType",r)},expression:"productOrderQuery.paymentType"}},[t("el-option",{attrs:{value:"1",label:"网上支付"}}),e._v(" "),t("el-option",{attrs:{value:"2",label:"货到付款"}})],1)],1),e._v(" "),t("el-form-item",{attrs:{label:"付款状态",align:"left"}},[t("el-select",{attrs:{clearable:"",placeholder:"请选择"},model:{value:e.productOrderQuery.paymentStatus,callback:function(r){e.$set(e.productOrderQuery,"paymentStatus",r)},expression:"productOrderQuery.paymentStatus"}},[t("el-option",{attrs:{value:"0",label:"未付款"}}),e._v(" "),t("el-option",{attrs:{value:"1",label:"已付款"}}),e._v(" "),t("el-option",{attrs:{value:"2",label:"已退款"}})],1)],1),e._v(" "),t("el-form-item",{attrs:{label:"订单状态",align:"left"}},[t("el-select",{attrs:{clearable:"",placeholder:"请选择"},model:{value:e.productOrderQuery.tag,callback:function(r){e.$set(e.productOrderQuery,"tag",r)},expression:"productOrderQuery.tag"}},e._l(e.myVariable.orderTagMap,function(e,r){return t("el-option",{key:r,attrs:{label:e,value:r}})}),1)],1),e._v(" "),t("el-form-item",{attrs:{label:"客户",align:"left"}},[t("el-select-customer",{model:{value:e.productOrderQuery.customerId,callback:function(r){e.$set(e.productOrderQuery,"customerId",r)},expression:"productOrderQuery.customerId"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"收货人姓名",align:"left"}},[t("el-input",{attrs:{placeholder:"请输入收货人姓名"},model:{value:e.productOrderQuery.sendName,callback:function(r){e.$set(e.productOrderQuery,"sendName",r)},expression:"productOrderQuery.sendName"}})],1),e._v(" "),t("el-form-item",{attrs:{label:"下单时间",align:"left"}},[t("el-date-picker-between",{attrs:{begin:e.productOrderQuery.createTimeQueryOfBegin,end:e.productOrderQuery.createTimeQueryOfEnd},on:{"begin-change":e.createTimeQueryBeginChange,"end-change":e.createTimeQueryEndChange}})],1),e._v(" "),t("el-form-item",{attrs:{label:"交易时间",align:"left"}},[t("el-date-picker-between",{attrs:{begin:e.productOrderQuery.dealTimeQueryOfBegin,end:e.productOrderQuery.dealTimeQueryOfEnd},on:{"begin-change":e.dealTimeQueryOfBeginChange,"end-change":e.dealTimeQueryOfEndChange}})],1),e._v(" "),t("el-form-item",{attrs:{label:"发货时间",align:"left"}},[t("el-date-picker-between",{attrs:{begin:e.productOrderQuery.sendTimeQueryOfBegin,end:e.productOrderQuery.sendTimeQueryOfEnd},on:{"begin-change":e.sendTimeQueryOfBeginChange,"end-change":e.sendTimeQueryOfEndChange}})],1),e._v(" "),t("el-form-item",{attrs:{label:"收货时间",align:"left"}},[t("el-date-picker-between",{attrs:{begin:e.productOrderQuery.receiveTimeQueryOfBegin,end:e.productOrderQuery.receiveTimeQueryOfEnd},on:{"begin-change":e.receiveTimeQueryOfBeginChange,"end-change":e.receiveTimeQueryOfEndChange}})],1)],1),e._v(" "),t("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[t("el-button",{on:{click:function(r){e.dialogFormVisible=!1}}},[e._v("关闭")]),e._v(" "),t("el-button",{attrs:{type:"primary"},on:{click:function(r){return e.$emit("tableRefresh")}}},[e._v("查询")])],1)],1)},staticRenderFns:[]};var l=t("VU/8")(n,i,!1,function(e){t("SnPg")},"data-v-003f3949",null);r.default=l.exports},SnPg:function(e,r){}});