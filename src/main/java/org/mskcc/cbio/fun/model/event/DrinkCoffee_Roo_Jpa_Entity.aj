// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.model.event;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import org.mskcc.cbio.fun.model.event.DrinkCoffee;

privileged aspect DrinkCoffee_Roo_Jpa_Entity {
    
    declare @type: DrinkCoffee: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DrinkCoffee.id;
    
    @Version
    @Column(name = "version")
    private Integer DrinkCoffee.version;
    
    public Long DrinkCoffee.getId() {
        return this.id;
    }
    
    public void DrinkCoffee.setId(Long id) {
        this.id = id;
    }
    
    public Integer DrinkCoffee.getVersion() {
        return this.version;
    }
    
    public void DrinkCoffee.setVersion(Integer version) {
        this.version = version;
    }
    
}