/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Lenovo
 */
public class ShoppingCart {

    private final ArrayList<Item> cart;

    public ShoppingCart() {
        cart = new ArrayList<>();
    }

    public ArrayList<Item> getCart() {
        return cart;
    }

    public void addItem(Item newItem) {
        if (cart.contains(newItem)) {
            Item oldItem = cart.get(cart.indexOf(newItem));
            oldItem.setQuantity(oldItem.getQuantity() + newItem.getQuantity());
        } else {
            cart.add(newItem);
        }
    }

    public void removeItem(Product product) {
        Item item = new Item(product, 0);
        cart.remove(item);
    }
    
    public void resetQuantity(Item newItem,int quantity){
        cart.get(cart.indexOf(newItem)).setQuantity(quantity);
    }

    public double total() {
        double sum = 0;
        for (Item item : cart) {
            sum += item.getProduct().getPrice() * item.getQuantity();
        }
        return sum;
    }
    
    public int size(){
        return cart.size();
    }

}
