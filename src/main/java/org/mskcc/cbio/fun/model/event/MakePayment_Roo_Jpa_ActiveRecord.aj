// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.mskcc.cbio.fun.model.event;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.mskcc.cbio.fun.model.event.MakePayment;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MakePayment_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MakePayment.entityManager;
    
    public static final List<String> MakePayment.fieldNames4OrderClauseFilter = java.util.Arrays.asList("price", "coffeeDrinker", "eventDate");
    
    public static final EntityManager MakePayment.entityManager() {
        EntityManager em = new MakePayment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MakePayment.countMakePayments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MakePayment o", Long.class).getSingleResult();
    }
    
    public static List<MakePayment> MakePayment.findAllMakePayments() {
        return entityManager().createQuery("SELECT o FROM MakePayment o", MakePayment.class).getResultList();
    }
    
    public static List<MakePayment> MakePayment.findAllMakePayments(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MakePayment o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MakePayment.class).getResultList();
    }
    
    public static MakePayment MakePayment.findMakePayment(Long id) {
        if (id == null) return null;
        return entityManager().find(MakePayment.class, id);
    }
    
    public static List<MakePayment> MakePayment.findMakePaymentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MakePayment o", MakePayment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<MakePayment> MakePayment.findMakePaymentEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MakePayment o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MakePayment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MakePayment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MakePayment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MakePayment attached = MakePayment.findMakePayment(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MakePayment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MakePayment.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MakePayment MakePayment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MakePayment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}