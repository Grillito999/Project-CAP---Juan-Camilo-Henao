using {com.project as entities} from '../db/schema';

service my_service {

    entity Products         as projection on entities.Products;
    entity ProductDetails   as projection on entities.ProductDetails;
    entity Status           as projection on entities.status;
    entity Suppliers        as projection on entities.Suppliers;
    entity Contacts         as projection on entities.Contacts;
    entity Reviews          as projection on entities.Reviews;
    entity Inventories      as projection on entities.Inventories;
    entity Sales            as projection on entities.Sales;
    entity VH_Categories    as projection on entities.Categories; // Value help
    entity VH_SubCategories as projection on entities.SubCategories; // Value help

// con $expand=tosubCategories podemos ver las asociaciones
};
