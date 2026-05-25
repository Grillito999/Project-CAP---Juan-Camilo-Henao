// Se referencia el servicio al cual se le realiza la publicación
using {my_service as service} from '../service';

annotate service.Products with {

    product     @title            : 'Product';
    productName @title            : 'Product Name';
    decription  @title            : 'Description';
    category    @title            : 'Category';
    subCategory @title            : 'SubCategory';
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
            $Type: 'UI.DataField',
            Value: product,
        },

        {
            $Type: 'UI.DataField',
            Value: productName,
        },

        {
            $Type: 'UI.DataField',
            Value: category,
        },

        {
            $Type: 'UI.DataField',
            Value: subCategory,
        },

        {
            $Type: 'UI.DataField',
            Value: status,
        },

        {
            $Type: 'UI.DataField',
            Value: price,
        },

        {
            $Type : 'UI.DataFieldForAnnotation',
            Label : 'Rating',
            Target: '@UI.DataPoint#Rating'
        },

    ],

);
