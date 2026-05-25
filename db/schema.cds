namespace com.project; // sirve para organizar los modulos SAP.

// aspectos - librerias

using {
    cuid, // Se usa para e el ID (UUID)
    managed, // Se usa para generar la audtoria
    sap.common.CodeList // Se usa para generar un listado corto unicamente de 3 campos
} from '@sap/cds/common';

// variable.
type decimal : Decimal(5, 3);

entity Products : cuid, managed {

    //  key ID           : UUID; Se troma el valor mediante el aspecto CUID
    product     : String;
    productName : String;
    decription  : LargeString; // String muy grande.
    category    : Association to Categories; // Asociacion 1;1
    subCategory : Association to SubCategories; // Asociacion 1;1
    status      : Association to status;
    rating      : Decimal(3, 2); // De los tres digitos se toman 2 para los decimales.
    price       : Decimal(5, 2);
    currency    : String;
    detail      : Association to ProductDetails; // asocacion 1:1
    supplier    : Association to Suppliers; // asocacion 1:1
    contact     : Association to Contacts; // asocacion 1:1
    reviews     : Association to many Reviews
                      on reviews.product = $self; // asocacion 1:N
    inventory   : Association to many Inventories
                      on inventory.product = $self; // asocacion 1:N
    sales       : Association to many Sales
                      on sales.product = $self; // asocacion 1:N
};

entity ProductDetails : cuid, managed {

    baseUnit   : String(2) default 'EA';
    height     : decimal;
    width      : decimal;
    depth      : decimal;
    weight     : decimal;
    unitVolume : String(2) default 'EA';
    unitweight : String(2) default 'KG';
};

entity Suppliers : cuid, managed {

    supplier     : String(9);
    supplierName : String(40);
    webAdress    : String;
};

entity Contacts : cuid, managed {

    fullName : String(9);
    email    : String(40);
    mobile   : Integer;
}

entity Reviews : cuid, managed {

    rating     : Decimal(3, 2);
    date       : String(40);
    reviewText : String;
    product    : Association to Products;
}

entity Inventories : cuid, managed {

    stockNumber : String(9);
    department  : String;
    nim         : Integer;
    max         : Integer;
    target      : Integer;
    quatity     : decimal(4, 3);
    baseUnit    : String default 'EA';
    product     : Association to Products;
}

entity Sales : cuid, managed {

    fullName : String(9);
    email    : String(40);
    mobile   : Integer;
    product  : Association to Products;
}

// Value Help //
entity Categories : cuid, managed { //Entidad de matchcode/value help

    category        : String(80);
    tosubCategories : Association to many SubCategories // asociacion 1;N
                          on tosubCategories.category = $self; // $SELF indica que se usa el campo ID
};

entity SubCategories : cuid, managed { //Entidad de matchcode/value help

    subCategory : String(80);
    category    : Association to Categories;
};

// Code List: listado corto de max 3 opciones

entity status : CodeList {

    key code : String(20) enum {
            inStock = 'In Stock';
            OutOfStock = ' Not In Stock';
            lowAvailability = 'low Availability';

        }

}
