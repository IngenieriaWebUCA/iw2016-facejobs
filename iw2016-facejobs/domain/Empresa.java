package es.uca.iw.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Empresa {

    /**
     */
    private String nombre;

    /**
     */
    private String cif;

    /**
     */
    private String email;

    /**
     */
    private String actProf;

    /**
     */
    private Integer numEmp;

    /**
     */
    @ManyToOne
    private Usuario idusuarioEmp;
}
