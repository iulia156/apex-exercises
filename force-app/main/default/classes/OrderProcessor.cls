public with sharing class OrderProcessor {
    public String clientName;
    public Decimal totalAmount;
    public Date deliveryDate;
    public List<Id> productIds;
    public Map<Id, Decimal> productPrices;
    public OrderStatus status;
    public enum OrderStatus {NEW_ORDER, PROCESSING, COMPLETED, CANCELLED}

    public OrderProcessor(String clientName, Date deliveryDate) {
        this.clientName = clientName;
        this.deliveryDate = deliveryDate;
        this.totalAmount = 0;
        this.productIds = new List<Id>();
        this.productPrices = new Map<Id, Decimal>();
        this.status = OrderStatus.NEW_ORDER;
    }

    public void addProduct(Id productId, Decimal price) {
        productIds.add(productId);
        productPrices.put(productId, price);
        totalAmount += price;
    }

    public Boolean isEligibleForDiscount() {
        if (totalAmount > 500)
            return true;
        return false;
    }

    public void updateStatus(OrderStatus newStatus) {
        this.status = newStatus;

        switch on newStatus {
            when NEW_ORDER {
                System.debug('Order was created.');
            }
            when PROCESSING {
                System.debug('Order is processed.');
            }
            when COMPLETED {
                System.debug('Order was completed.');
            }
            when CANCELLED {
                System.debug('Order was cancelled.');
            }
            when else {
                System.debug('Order status is not valid.');
            }
        }
    }

    public void printOrderDetails() {
        System.debug('Order details:');
        System.debug('Client name: ' + clientName);
        System.debug('Delivery date: ' + deliveryDate);
        System.debug('Total amount: ' + totalAmount);

        System.debug('Order products:');
        for (Id productId : productIds) {
            Decimal price = productPrices.get(productId);
            System.debug('Product ID: ' + productId + ' , Price: ' + price);
        }

        if (isEligibleForDiscount()) {
            System.debug('Order is eligible for 10% discount.');
        } else {
            System.debug('Order is ineligible for discount.');
        }
    }
}
