// Se referencia el servicio al cual se le realiza la publicación
using {my_service as service} from '../service';

annotate service.Products with {

    product     @title            : 'Product'; // Se implementan las anotaciones de título para mostrar un título personalizado en la aplicación FIORI
    productName @title            : 'Product Name';
    decription  @title            : 'Description';
    rating      @title            : 'Rating';
    price       @title: 'Price'  @Measures.ISOCurrency: currency;
    currency    @Common.IsCurrency: true;

};

annotate service.Products with @(

    UI.DataPoint #Rating: { // Se implementan las anotaciones de DataPoint para mostrar el campo rating como una valoración por estrellas en la aplicación FIORI
        Value        : rating,
        Criticality  : {
            High  : 5,
            Medium: 3,
            Low   : 0
        },
        Visualization: #Rating
    },

    UI.HeaderInfo       : { // Se implementan las anotaciones de HeaderInfo para mostrar información relevante en el encabezado de la aplicación FIORI
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Product',
        TypeNamePlural: 'Products',

    },

    UI.SelectionFields  : [ // Filtros que se muestran en la parte superior de la aplicación FIORI
        product,
        productName,
        category.category,
        subCategory.subCategory,
        status.code,
        supplier.supplierName
    ], 

    // Capabilities.FilterRestrictions: { // Se implementan las anotaciones de FilterRestrictions para restringir los filtros que se pueden aplicar en la aplicación FIORI
    
    // $Type : 'Capabilities.FilterRestrictionsType',
    
    // FilterExpressionRestrictions: [
    //     {
    //         $Type: 'Capabilities.FilterExpressionRestrictionsType',
    //        Property : product,
    //         AllowedExpressions: [ 'EQ' ] // Se permiten las expresiones de comparación para el campo price en los filtros de la aplicación FIORI
    //     }
    // ]


    // },

    UI.LineItem         : [ // se referencia la entidad a la cual le vamos a implementar las anotaciones FIORI

        {
            $Type                : 'UI.DataField',
            // Se implementan las anotaciones de LineItem para mostrar los campos en la vista de lista de la aplicación FIORI
            Value                : ID,
            label                : 'ID',
            @UI.Hidden           : true,
            // Se oculta el campo ID en la aplicación FIORI
            ![@HTML5.CssDefaults]: {width: '10rem'} // Se asigna un ancho específico para el campo ID en la aplicación FIORI
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
            Value                : category.category,
            label                : 'Category',
            @UI.Importance       : #Medium,
            ![@HTML5.CssDefaults]: {width: '9rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : subCategory.subCategory,
            label                : 'Sub Category',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '9rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : supplier.supplierName,
            label                : 'Supplier',
            ![@HTML5.CssDefaults]: {width: '8rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : status.code,
            label                : 'Status',
            Criticality          : status.criticality,
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
            // Se implementan las anotaciones de DataFieldForAnnotation para mostrar el campo rating como una valoración por estrellas
            Label                : 'Rating',
            Target               : '@UI.DataPoint#Rating',
            // Se referencia el DataPoint que se implementó anteriormente para mostrar el campo rating como una valoración por estrellas en la aplicación FIORI
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
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : modifiedBy,
            label                : 'Modified By',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '10rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : modifiedAt,
            label                : 'Modified At',
            @UI.Importance       : #Low,
            ![@HTML5.CssDefaults]: {width: '10rem'}
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

        {

            $Type                : 'UI.DataField',
            Value                : category_ID,
            label                : 'Category ID',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '7rem'}


        },
        {
            $Type                : 'UI.DataField',
            Value                : subCategory_ID,
            label                : 'Sub Category ID',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '7rem'}
        },

        {
            $Type                : 'UI.DataField',
            Value                : status_code,
            label                : 'Status Code',
            @UI.Hidden           : true,
            ![@HTML5.CssDefaults]: {width: '7rem'}
        }

    ],

);
