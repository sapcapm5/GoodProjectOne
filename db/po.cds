namespace po.xmen.db;
using { cuid  } from '@sap/cds/common';


context MASTER {

    entity POHEADER : cuid {
      key EBELN: String(10);
          VENDOR: String(10);
          VENDORNAME: String(30);
          ITEM: Composition of many TRANSACTION.POITEM on ITEM.EBELN = $self
                                                          
    }
}

context TRANSACTION {
    
    entity POITEM : cuid {
        KEY EBELN: Association to many MASTER.POHEADER;
            EBELP: String(10);
            MATERIAL: String(40);
        SCHEDULE: Composition of many TRANSACTION.POITEM on SCHEDULE.EBELN = $self.EBELN 
        and SCHEDULE.EBELP = $self.EBELP
    }

    entity POSCHEDULE : cuid {
        KEY EBELN : Association to many POITEM;
        KEY EBELP : Association to many POITEM;
        KEY EKET:   String(10);
            QUANTITY: Int16      

    }
}
