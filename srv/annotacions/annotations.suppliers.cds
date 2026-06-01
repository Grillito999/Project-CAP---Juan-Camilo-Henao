using {my_service as service} from '../service';

annotate service.Suppliers with {

    supplierName @(

    Common.Label: 'Supplier',

    );

};