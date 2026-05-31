// Se referencia el servicio al cual se le realiza la publicación
using {my_service as service} from '../service';


annotate service.Products with {

    product     @title            : 'Product';
    productName @title            : 'Product Name';
    decription  @title            : 'Description';
    category    @title            : 'Category';
    subCategory @title            : 'Sub Category';
    status      @title            : 'Status';
    rating      @title            : 'Rating';
    price       @title: 'Price'  @Measures.ISOCurrency: currency;
    currency    @Common.IsCurrency: true;

};

annotate service.Products with @(

    UI.DataPoint #Rating: {
        Value        : rating,
        Criticality  : {
            High  : 5,
            Medium: 3,
            Low   : 0
        },
        Visualization: #Rating
    },


    UI.LineItem         : [ // se referencia la entidad a la cual le vamos a implementar las anotaciones FIORI

        {
            $Type                : 'UI.DataField',
            Value                : ID,
            label                : 'ID',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },
        {
            $Type                : 'UI.DataField',
            Value                : product,
            label                : 'Product',
            @UI.Importance       : #High,
            ![@HTML5.CssDefaults]: {width: '6rem'}

        },

        {
            $Type                : 'UI.DataField',
            Value                : productName,
            label                : 'Product Name',
            @UI.Importance       : #High,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : decription,
            label                : 'Description',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },
        {
            $Type                : 'UI.DataField',
            Value                : category_ID,
            label                : 'Category',
            @UI.Importance       : #Medium,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : subCategory_ID,
            label                : 'Sub Category',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : status_code,
            label                : 'Status',
            @UI.Importance       : #High,
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : price,
            label                : 'Price',
            @UI.Importance       : #High,
            ![@HTML5.CssDefaults]: {width: '9rem'}
        },

        {
            $Type                : 'UI.DataFieldForAnnotation',
            Label                : 'Rating',
            Target               : '@UI.DataPoint#Rating',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : createdBy,
            label                : 'Created By',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '4rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : createdAt,
            label                : 'Created At',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '6rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : modifiedBy,
            label                : 'Modified By',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '4rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : modifiedAt,
            label                : 'Modified At',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '6rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : currency,
            label                : 'Currency',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : detail,
            label                : 'Details',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : supplier,
            label                : 'Supplier',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : contact,
            label                : 'Contact',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : reviews,
            label                : 'Reviews',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : inventory,
            label                : 'Inventory',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : sales,
            label                : 'Sales',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : category,
            label                : 'Category ID',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },
        {
            $Type                : 'UI.DataField',
            Value                : subCategory,
            label                : 'Sub Category ID',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : contact_ID,
            label                : 'Contact ID',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : detail_ID,
            label                : 'Details',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : supplier_ID,
            label                : 'Supplier ID',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

    ],

);
