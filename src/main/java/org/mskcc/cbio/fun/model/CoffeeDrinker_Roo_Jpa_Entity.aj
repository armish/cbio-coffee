// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import org.mskcc.cbio.fun.model.CoffeeDrinker;

privileged aspect CoffeeDrinker_Roo_Jpa_Entity {
    
    declare @type: CoffeeDrinker: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long CoffeeDrinker.id;
    
    @Version
    @Column(name = "version")
    private Integer CoffeeDrinker.version;
    
    public Long CoffeeDrinker.getId() {
        return this.id;
    }
    
    public void CoffeeDrinker.setId(Long id) {
        this.id = id;
    }
    
    public Integer CoffeeDrinker.getVersion() {
        return this.version;
    }
    
    public void CoffeeDrinker.setVersion(Integer version) {
        this.version = version;
    }
    
}