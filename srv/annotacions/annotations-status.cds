using {my_service as service} from '../service';

annotate service.Status with {

    code @( 
        
        Common.Label          : 'Status', // Se implementan las anotaciones de Label para mostrar un nombre personalizado para el campo code en la aplicación FIORI
        Common.Text           : name, // Se implementan las anotaciones de Text para mostrar el valor del campo name en lugar del valor del campo code en la aplicación FIORI
        Common.TextArrangement: #TextOnly // Se implementan las anotaciones de TextArrangement para mostrar solo el valor del campo name en la aplicación FIORI, ocultando el valor del campo code
    );

};
