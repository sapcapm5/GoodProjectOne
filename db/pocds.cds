namespace po.xmen.cds;

using { po.xmen.db.MASTER, po.xmen.db.TRANSACTION } from './po';

context poconsumption {

    define view![poDetail] as 
    select from TRANSACTION.POITEM 
    mixin {
        SCHEDULE: Association[*] to TRANSACTION.POSCHEDULE on 
        ID = $projection.ID and
        EBELN = $projection.poNumber AND 
        EBELP = $projection.itemNumber
           } into
    {
        key ID,
        key EBELN as ![poNumber],
        key EBELP as ![itemNumber],
        MATERIAL as ![material],
        SCHEDULE 
    };
    define view ![poBasic] as 
    select from MASTER.POHEADER 
    mixin {
        ITEM: Association[0..*] to  TRANSACTION.POITEM on 
        ID = $projection.ID and
        EBELN = $projection.poNumber
    }
    into
    {
        key ID,
        key EBELN as ![poNumber],
            VENDOR as ![vendor],
            VENDORNAME as ![vendorName],
            ITEM
    }
}
    
    

  