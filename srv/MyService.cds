using { po.xmen.cds.poconsumption } from '../db/pocds';

service MyService @(path: 'SDMK') {

    entity POHEADER @( odata.draft.enabled: true) as projection on poconsumption.poBasic{
        *, ITEM
    };
    

}
