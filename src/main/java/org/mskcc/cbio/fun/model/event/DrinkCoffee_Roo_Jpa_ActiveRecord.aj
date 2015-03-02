// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.model.event;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.mskcc.cbio.fun.model.event.DrinkCoffee;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DrinkCoffee_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DrinkCoffee.entityManager;
    
    public static final List<String> DrinkCoffee.fieldNames4OrderClauseFilter = java.util.Arrays.asList("eventDate", "coffeeDrinker", "price");
    
    public static final EntityManager DrinkCoffee.entityManager() {
        EntityManager em = new DrinkCoffee().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DrinkCoffee.countDrinkCoffees() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DrinkCoffee o", Long.class).getSingleResult();
    }
    
    public static List<DrinkCoffee> DrinkCoffee.findAllDrinkCoffees() {
        return entityManager().createQuery("SELECT o FROM DrinkCoffee o", DrinkCoffee.class).getResultList();
    }
    
    public static List<DrinkCoffee> DrinkCoffee.findAllDrinkCoffees(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM DrinkCoffee o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, DrinkCoffee.class).getResultList();
    }
    
    public static DrinkCoffee DrinkCoffee.findDrinkCoffee(Long id) {
        if (id == null) return null;
        return entityManager().find(DrinkCoffee.class, id);
    }
    
    public static List<DrinkCoffee> DrinkCoffee.findDrinkCoffeeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DrinkCoffee o", DrinkCoffee.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<DrinkCoffee> DrinkCoffee.findDrinkCoffeeEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM DrinkCoffee o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, DrinkCoffee.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DrinkCoffee.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DrinkCoffee.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DrinkCoffee attached = DrinkCoffee.findDrinkCoffee(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DrinkCoffee.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DrinkCoffee.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DrinkCoffee DrinkCoffee.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DrinkCoffee merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
