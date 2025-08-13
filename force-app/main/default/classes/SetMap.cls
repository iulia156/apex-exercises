public with sharing class SetMap {
    public static void demoSet() {
        Set<Integer> numbers = new Set<Integer>();
        numbers.add(1);
        numbers.add(2);
        numbers.add(2);
        numbers.add(3);
        numbers.add(3);

        System.debug('Unique values: ' + numbers);

        for(Integer n: numbers){
            System.debug('Value:' + n);
        }
    }

    public static void demoMap() {
        Map<Id, String> clients = new Map<Id, String>();
        Id IdClient = '001000000000001AAA';
        clients.put(IdClient, 'Client1');

        for (Id key: clients.keySet()){
            String val = clients.get(key);
            System.debug('Id: ' + key + ' Name: ' + val);
        }

        String clientName = clients.get(IdClient);
        System.debug('The name of the client with ID ' + IdClient + ' is ' + clientName);
    }
}