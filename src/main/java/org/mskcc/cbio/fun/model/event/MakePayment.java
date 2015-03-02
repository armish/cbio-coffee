package org.mskcc.cbio.fun.model.event;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import org.mskcc.cbio.fun.model.CoffeeDrinker;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findMakePaymentsByCoffeeDrinker", "findMakePaymentsByEventDateEquals", "findMakePaymentsByEventDateGreaterThanEquals", "findMakePaymentsByEventDateLessThanEquals", "findMakePaymentsByPriceBetween" })
@RooJson(deepSerialize = true)
public class MakePayment {

    /**
     */
    @NotNull
    @Min(0L)
    private Double price;

    /**
     */
    @NotNull
    @ManyToOne
    private CoffeeDrinker coffeeDrinker;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date eventDate;
}
