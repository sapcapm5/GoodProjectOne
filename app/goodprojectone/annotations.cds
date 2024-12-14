using MyService as service from '../../srv/MyService';
annotate service.POHEADER with @(

UI.SelectionFields:[
    poNumber,
    vendor,
    vendorName
],


    UI.FieldGroup #GeneratedGroup :
    
     {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Po Number',
                Value : poNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vendor',
                Value : vendor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vendorName',
                Value : vendorName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.HeaderInfo :{
        TypeName: 'Purchase Order',
        TypeNamePlural: 'Purchase Orders',
        Title: {
            $Type: 'UI.DataField',
            Value: poNumber,
        }
    },
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Po Number',
            Value : poNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'vendor',
            Value : vendor,
        },
        {
            $Type : 'UI.DataField',
            Label : 'vendorName',
            Value : vendorName,
        },
    ],
);

