using {my_service as service} from '../service';

annotate service.Suppliers with {

    ID   @( Common.Label          : 'Supplier',
            Common.Text           : supplierName, // Muestra el nombre del proveedor en lugar del ID en la interfaz de usuario
            Common.TextArrangement: #TextOnly  ); // Muestra solo el texto (nombre del proveedor) en la interfaz de usuario

    supplier  @( Common.Label: 'Supplier ID', );

    supplierName @( Common.Label   : 'Supplier Name',
                    UI.HiddenFilter: true ); // Oculata el campo de filtro en el value help 

    webAdress @( Common.Label: 'Web Adress',);

};
