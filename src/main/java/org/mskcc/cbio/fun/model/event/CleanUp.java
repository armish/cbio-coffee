package org.mskcc.cbio.fun.model.event;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;
import org.mskcc.cbio.fun.model.CoffeeDrinker;
import javax.persistence.Enumerated;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findCleanUpsByCleanUpType", "findCleanUpsByCoffeeDrinker", "findCleanUpsByEventDateBetween", "findCleanUpsByEventDateEquals", "findCleanUpsByEventDateGreaterThanEquals", "findCleanUpsByEventDateLessThanEquals" })
@RooJson(deepSerialize = true)
public class CleanUp {

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date eventDate;

    /**
     */
    @NotNull
    @ManyToOne
    private CoffeeDrinker coffeeDrinker;

    /**
     */
    @NotNull
    @Enumerated
    private CleanUpType cleanUpType;
}
