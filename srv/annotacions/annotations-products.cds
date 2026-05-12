using {my_service as service} from '../service'; // Se referencia el servicio al cual se le realiza la publicación

annotate service.Products with {

    product     @title            : 'Product';
    productName @title            : 'Product Name';
    category    @title            : 'Category';
    subCategory @title            : 'SubCategory';
    status      @title            : 'Status';
    rating      @title            : 'Rating';
    price       @title: 'Price'  @Measures.ISOCurrency: currency;
    currency    @Common.IsCurrency: true;


};


annotate service.Products with @( // se referencia la entidad a la cual le vamos a implementar las anotaciones FIORI

UI.LineItem: [

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
        Value: subcCategory ,
    },

    {
        $Type : 'UI.DataField',
        Value : status,
    },

     {
        $Type : 'UI.DataField',
        Value : rating,
    },

    {
        $Type : 'UI.DataField',
        Value : price,
    },

    {
        $Type : 'UI.DataField',
        Value : currency,
    },

]


);
