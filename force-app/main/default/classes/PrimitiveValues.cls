public with sharing class PrimitiveValues {
    public static void printPrimitiveValues() {
        String text = 'Hello!';
        Integer nrIntreg = 23;
        Boolean bool = true;
        Decimal nrDecimal = 3.9;
        Date data = Date.today();
        Date myDate = Date.newInstance(2025, 4, 17);
        Datetime now = Datetime.now();
        Id someId = '001000000000001AAA';

        System.debug('String: ' + text);
        System.debug('Integer: ' + nrIntreg);
        System.debug('Boolean: ' + bool);
        System.debug('Decimal: ' + nrDecimal);
        System.debug('Date: ' + data);
        System.debug('Date2: ' + myDate);
        System.debug('Datetime: ' + now);
        System.debug('Id: ' + someId);
    }
}