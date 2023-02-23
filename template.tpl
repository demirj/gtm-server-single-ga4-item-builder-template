___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Single GA4 Item Builder",
  "description": "Build GA4\u0027s items array based on custom input.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "PARAM_TABLE",
    "name": "mappingTable",
    "displayName": "",
    "paramTableColumns": [
      {
        "param": {
          "type": "SELECT",
          "name": "itemsProp",
          "displayName": "GA4 Items Property",
          "macrosInSelect": false,
          "selectItems": [
            {
              "value": "item_id",
              "displayValue": "item_id"
            },
            {
              "value": "item_name",
              "displayValue": "item_name"
            },
            {
              "value": "affiliation",
              "displayValue": "affiliation"
            },
            {
              "value": "coupon",
              "displayValue": "coupon"
            },
            {
              "value": "discount",
              "displayValue": "discount"
            },
            {
              "value": "index",
              "displayValue": "index"
            },
            {
              "value": "item_brand",
              "displayValue": "item_brand"
            },
            {
              "value": "item_category",
              "displayValue": "item_category"
            },
            {
              "value": "item_category2",
              "displayValue": "item_category2"
            },
            {
              "value": "item_category3",
              "displayValue": "item_category3"
            },
            {
              "value": "item_category4",
              "displayValue": "item_category4"
            },
            {
              "value": "item_category5",
              "displayValue": "item_category5"
            },
            {
              "value": "item_list_id",
              "displayValue": "item_list_id"
            },
            {
              "value": "item_list_name",
              "displayValue": "item_list_name"
            },
            {
              "value": "item_variant",
              "displayValue": "item_variant"
            },
            {
              "value": "location_id",
              "displayValue": "location_id"
            },
            {
              "value": "price",
              "displayValue": "price"
            },
            {
              "value": "quantity",
              "displayValue": "quantity"
            }
          ],
          "simpleValueType": true
        },
        "isUnique": true
      },
      {
        "param": {
          "type": "TEXT",
          "name": "userValue",
          "displayName": "User Value",
          "simpleValueType": true
        },
        "isUnique": false
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

let table = data.mappingTable;

let obj = {};

if (table) {
  table.forEach(function(p, i) {
   
    obj[p.itemsProp] = p.userValue;
  
  });
}

return [obj];


___TESTS___

scenarios: []


___NOTES___

Created on 23.2.2023, 14:43:06


