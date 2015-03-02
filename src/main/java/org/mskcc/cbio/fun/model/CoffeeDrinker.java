package org.mskcc.cbio.fun.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findCoffeeDrinkersByEmailEquals", "findCoffeeDrinkersByFirstNameLike", "findCoffeeDrinkersByLastNameLike", "findCoffeeDrinkersByEmailLike" })
@RooJson(deepSerialize = true)
public class CoffeeDrinker {

    /**
     */
    @NotNull
    @Size(min = 1, max = 30)
    private String firstName;

    /**
     */
    @NotNull
    @Size(min = 1, max = 30)
    private String lastName;

    /**
     */
    @Size(max = 50)
    private String email;
}
