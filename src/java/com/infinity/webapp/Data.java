/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.infinity.webapp;

import java.util.ListResourceBundle;

/**
 *
 * @author Shakith
 */
public class Data extends ListResourceBundle {

    static final Object[][] contents = {
        {"user.name", "Shakith"},
        {"user.age", "20"},
        {"admin.name", "ABC"},
        {"admin.age", "22"}
    };

    @Override
    protected Object[][] getContents() {
        return contents;
    }

}
