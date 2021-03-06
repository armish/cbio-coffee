// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.model.event;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.mskcc.cbio.fun.model.event.DrinkCoffee;

privileged aspect DrinkCoffee_Roo_Json {
    
    public String DrinkCoffee.toJson() {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(this);
    }
    
    public String DrinkCoffee.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static DrinkCoffee DrinkCoffee.fromJsonToDrinkCoffee(String json) {
        return new JSONDeserializer<DrinkCoffee>()
        .use(null, DrinkCoffee.class).deserialize(json);
    }
    
    public static String DrinkCoffee.toJsonArray(Collection<DrinkCoffee> collection) {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(collection);
    }
    
    public static String DrinkCoffee.toJsonArray(Collection<DrinkCoffee> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<DrinkCoffee> DrinkCoffee.fromJsonArrayToDrinkCoffees(String json) {
        return new JSONDeserializer<List<DrinkCoffee>>()
        .use("values", DrinkCoffee.class).deserialize(json);
    }
    
}
