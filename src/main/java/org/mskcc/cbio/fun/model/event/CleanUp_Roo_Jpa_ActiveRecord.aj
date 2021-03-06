// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.model.event;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.mskcc.cbio.fun.model.event.CleanUp;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CleanUp_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CleanUp.entityManager;
    
    public static final List<String> CleanUp.fieldNames4OrderClauseFilter = java.util.Arrays.asList("eventDate", "coffeeDrinker", "cleanUpType");
    
    public static final EntityManager CleanUp.entityManager() {
        EntityManager em = new CleanUp().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CleanUp.countCleanUps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CleanUp o", Long.class).getSingleResult();
    }
    
    public static List<CleanUp> CleanUp.findAllCleanUps() {
        return entityManager().createQuery("SELECT o FROM CleanUp o", CleanUp.class).getResultList();
    }
    
    public static List<CleanUp> CleanUp.findAllCleanUps(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CleanUp o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CleanUp.class).getResultList();
    }
    
    public static CleanUp CleanUp.findCleanUp(Long id) {
        if (id == null) return null;
        return entityManager().find(CleanUp.class, id);
    }
    
    public static List<CleanUp> CleanUp.findCleanUpEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CleanUp o", CleanUp.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CleanUp> CleanUp.findCleanUpEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CleanUp o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CleanUp.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CleanUp.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CleanUp.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CleanUp attached = CleanUp.findCleanUp(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CleanUp.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CleanUp.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CleanUp CleanUp.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CleanUp merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
