package org.mskcc.cbio.fun.model.event;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.mskcc.cbio.fun.model.CoffeeDrinker;
import javax.validation.constraints.DecimalMin;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findDrinkCoffeesByCoffeeDrinker", "findDrinkCoffeesByEventDateGreaterThan", "findDrinkCoffeesByEventDateLessThanEquals", "findDrinkCoffeesByEventDateEquals", "findDrinkCoffeesByPriceBetween" })
@RooJson(deepSerialize = true)
public class DrinkCoffee {

    /**
     */
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
    @DecimalMin("0.0")
    private Double price;
}
