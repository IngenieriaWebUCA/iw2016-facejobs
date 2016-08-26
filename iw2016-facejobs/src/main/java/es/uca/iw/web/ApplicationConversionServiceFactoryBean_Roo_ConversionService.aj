// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.web;

import es.uca.iw.domain.Centro;
import es.uca.iw.domain.Demandante;
import es.uca.iw.domain.Empresa;
import es.uca.iw.domain.Experiencia;
import es.uca.iw.domain.Formacion;
import es.uca.iw.domain.Formaciondemandante;
import es.uca.iw.domain.Inscripcion;
import es.uca.iw.domain.Oferta;
import es.uca.iw.domain.Puesto;
import es.uca.iw.domain.Sede;
import es.uca.iw.domain.Tipoformacion;
import es.uca.iw.domain.Usuario;
import es.uca.iw.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Centro, String> ApplicationConversionServiceFactoryBean.getCentroToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Centro, java.lang.String>() {
            public String convert(Centro centro) {
                return new StringBuilder().append(centro.getNombre()).toString();
            }
        };
    }
    
    public Converter<Long, Centro> ApplicationConversionServiceFactoryBean.getIdToCentroConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Centro>() {
            public es.uca.iw.domain.Centro convert(java.lang.Long id) {
                return Centro.findCentro(id);
            }
        };
    }
    
    public Converter<String, Centro> ApplicationConversionServiceFactoryBean.getStringToCentroConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Centro>() {
            public es.uca.iw.domain.Centro convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Centro.class);
            }
        };
    }
    
    public Converter<Demandante, String> ApplicationConversionServiceFactoryBean.getDemandanteToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Demandante, java.lang.String>() {
            public String convert(Demandante demandante) {
                return new StringBuilder().append(demandante.getNombre()).append(' ').append(demandante.getFecNac()).append(' ').append(demandante.getDireccion()).append(' ').append(demandante.getEmail()).toString();
            }
        };
    }
    
    public Converter<Long, Demandante> ApplicationConversionServiceFactoryBean.getIdToDemandanteConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Demandante>() {
            public es.uca.iw.domain.Demandante convert(java.lang.Long id) {
                return Demandante.findDemandante(id);
            }
        };
    }
    
    public Converter<String, Demandante> ApplicationConversionServiceFactoryBean.getStringToDemandanteConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Demandante>() {
            public es.uca.iw.domain.Demandante convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Demandante.class);
            }
        };
    }
    
    public Converter<Empresa, String> ApplicationConversionServiceFactoryBean.getEmpresaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Empresa, java.lang.String>() {
            public String convert(Empresa empresa) {
                return new StringBuilder().append(empresa.getNombre()).append(' ').append(empresa.getCif()).append(' ').append(empresa.getEmail()).append(' ').append(empresa.getActProf()).toString();
            }
        };
    }
    
    public Converter<Long, Empresa> ApplicationConversionServiceFactoryBean.getIdToEmpresaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Empresa>() {
            public es.uca.iw.domain.Empresa convert(java.lang.Long id) {
                return Empresa.findEmpresa(id);
            }
        };
    }
    
    public Converter<String, Empresa> ApplicationConversionServiceFactoryBean.getStringToEmpresaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Empresa>() {
            public es.uca.iw.domain.Empresa convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Empresa.class);
            }
        };
    }
    
    public Converter<Experiencia, String> ApplicationConversionServiceFactoryBean.getExperienciaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Experiencia, java.lang.String>() {
            public String convert(Experiencia experiencia) {
                return new StringBuilder().append(experiencia.getIdcurriculum()).append(' ').append(experiencia.getFecini()).append(' ').append(experiencia.getFecfin()).append(' ').append(experiencia.getSalario()).toString();
            }
        };
    }
    
    public Converter<Long, Experiencia> ApplicationConversionServiceFactoryBean.getIdToExperienciaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Experiencia>() {
            public es.uca.iw.domain.Experiencia convert(java.lang.Long id) {
                return Experiencia.findExperiencia(id);
            }
        };
    }
    
    public Converter<String, Experiencia> ApplicationConversionServiceFactoryBean.getStringToExperienciaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Experiencia>() {
            public es.uca.iw.domain.Experiencia convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Experiencia.class);
            }
        };
    }
    
    public Converter<Formacion, String> ApplicationConversionServiceFactoryBean.getFormacionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Formacion, java.lang.String>() {
            public String convert(Formacion formacion) {
                return new StringBuilder().append(formacion.getIdTipoFormacion()).append(' ').append(formacion.getTitulacion()).append(' ').append(formacion.getNivel()).toString();
            }
        };
    }
    
    public Converter<Long, Formacion> ApplicationConversionServiceFactoryBean.getIdToFormacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Formacion>() {
            public es.uca.iw.domain.Formacion convert(java.lang.Long id) {
                return Formacion.findFormacion(id);
            }
        };
    }
    
    public Converter<String, Formacion> ApplicationConversionServiceFactoryBean.getStringToFormacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Formacion>() {
            public es.uca.iw.domain.Formacion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Formacion.class);
            }
        };
    }
    
    public Converter<Formaciondemandante, String> ApplicationConversionServiceFactoryBean.getFormaciondemandanteToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Formaciondemandante, java.lang.String>() {
            public String convert(Formaciondemandante formaciondemandante) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Formaciondemandante> ApplicationConversionServiceFactoryBean.getIdToFormaciondemandanteConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Formaciondemandante>() {
            public es.uca.iw.domain.Formaciondemandante convert(java.lang.Long id) {
                return Formaciondemandante.findFormaciondemandante(id);
            }
        };
    }
    
    public Converter<String, Formaciondemandante> ApplicationConversionServiceFactoryBean.getStringToFormaciondemandanteConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Formaciondemandante>() {
            public es.uca.iw.domain.Formaciondemandante convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Formaciondemandante.class);
            }
        };
    }
    
    public Converter<Inscripcion, String> ApplicationConversionServiceFactoryBean.getInscripcionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Inscripcion, java.lang.String>() {
            public String convert(Inscripcion inscripcion) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Inscripcion> ApplicationConversionServiceFactoryBean.getIdToInscripcionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Inscripcion>() {
            public es.uca.iw.domain.Inscripcion convert(java.lang.Long id) {
                return Inscripcion.findInscripcion(id);
            }
        };
    }
    
    public Converter<String, Inscripcion> ApplicationConversionServiceFactoryBean.getStringToInscripcionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Inscripcion>() {
            public es.uca.iw.domain.Inscripcion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Inscripcion.class);
            }
        };
    }
    
    public Converter<Oferta, String> ApplicationConversionServiceFactoryBean.getOfertaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Oferta, java.lang.String>() {
            public String convert(Oferta oferta) {
                return new StringBuilder().append(oferta.getTitulo()).append(' ').append(oferta.getInfoPuesto()).append(' ').append(oferta.getIdFormacion()).append(' ').append(oferta.getIdSede()).toString();
            }
        };
    }
    
    public Converter<Long, Oferta> ApplicationConversionServiceFactoryBean.getIdToOfertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Oferta>() {
            public es.uca.iw.domain.Oferta convert(java.lang.Long id) {
                return Oferta.findOferta(id);
            }
        };
    }
    
    public Converter<String, Oferta> ApplicationConversionServiceFactoryBean.getStringToOfertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Oferta>() {
            public es.uca.iw.domain.Oferta convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Oferta.class);
            }
        };
    }
    
    public Converter<Puesto, String> ApplicationConversionServiceFactoryBean.getPuestoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Puesto, java.lang.String>() {
            public String convert(Puesto puesto) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Puesto> ApplicationConversionServiceFactoryBean.getIdToPuestoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Puesto>() {
            public es.uca.iw.domain.Puesto convert(java.lang.Long id) {
                return Puesto.findPuesto(id);
            }
        };
    }
    
    public Converter<String, Puesto> ApplicationConversionServiceFactoryBean.getStringToPuestoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Puesto>() {
            public es.uca.iw.domain.Puesto convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Puesto.class);
            }
        };
    }
    
    public Converter<Sede, String> ApplicationConversionServiceFactoryBean.getSedeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Sede, java.lang.String>() {
            public String convert(Sede sede) {
                return new StringBuilder().append(sede.getNombre()).append(' ').append(sede.getCiudad()).toString();
            }
        };
    }
    
    public Converter<Long, Sede> ApplicationConversionServiceFactoryBean.getIdToSedeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Sede>() {
            public es.uca.iw.domain.Sede convert(java.lang.Long id) {
                return Sede.findSede(id);
            }
        };
    }
    
    public Converter<String, Sede> ApplicationConversionServiceFactoryBean.getStringToSedeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Sede>() {
            public es.uca.iw.domain.Sede convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Sede.class);
            }
        };
    }
    
    public Converter<Tipoformacion, String> ApplicationConversionServiceFactoryBean.getTipoformacionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Tipoformacion, java.lang.String>() {
            public String convert(Tipoformacion tipoformacion) {
                return new StringBuilder().append(tipoformacion.getNombre()).toString();
            }
        };
    }
    
    public Converter<Long, Tipoformacion> ApplicationConversionServiceFactoryBean.getIdToTipoformacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Tipoformacion>() {
            public es.uca.iw.domain.Tipoformacion convert(java.lang.Long id) {
                return Tipoformacion.findTipoformacion(id);
            }
        };
    }
    
    public Converter<String, Tipoformacion> ApplicationConversionServiceFactoryBean.getStringToTipoformacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Tipoformacion>() {
            public es.uca.iw.domain.Tipoformacion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Tipoformacion.class);
            }
        };
    }
    
    public Converter<Usuario, String> ApplicationConversionServiceFactoryBean.getUsuarioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<es.uca.iw.domain.Usuario, java.lang.String>() {
            public String convert(Usuario usuario) {
                return new StringBuilder().append(usuario.getLogin()).append(' ').append(usuario.getPassword()).toString();
            }
        };
    }
    
    public Converter<Long, Usuario> ApplicationConversionServiceFactoryBean.getIdToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, es.uca.iw.domain.Usuario>() {
            public es.uca.iw.domain.Usuario convert(java.lang.Long id) {
                return Usuario.findUsuario(id);
            }
        };
    }
    
    public Converter<String, Usuario> ApplicationConversionServiceFactoryBean.getStringToUsuarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, es.uca.iw.domain.Usuario>() {
            public es.uca.iw.domain.Usuario convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Usuario.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCentroToStringConverter());
        registry.addConverter(getIdToCentroConverter());
        registry.addConverter(getStringToCentroConverter());
        registry.addConverter(getDemandanteToStringConverter());
        registry.addConverter(getIdToDemandanteConverter());
        registry.addConverter(getStringToDemandanteConverter());
        registry.addConverter(getEmpresaToStringConverter());
        registry.addConverter(getIdToEmpresaConverter());
        registry.addConverter(getStringToEmpresaConverter());
        registry.addConverter(getExperienciaToStringConverter());
        registry.addConverter(getIdToExperienciaConverter());
        registry.addConverter(getStringToExperienciaConverter());
        registry.addConverter(getFormacionToStringConverter());
        registry.addConverter(getIdToFormacionConverter());
        registry.addConverter(getStringToFormacionConverter());
        registry.addConverter(getFormaciondemandanteToStringConverter());
        registry.addConverter(getIdToFormaciondemandanteConverter());
        registry.addConverter(getStringToFormaciondemandanteConverter());
        registry.addConverter(getInscripcionToStringConverter());
        registry.addConverter(getIdToInscripcionConverter());
        registry.addConverter(getStringToInscripcionConverter());
        registry.addConverter(getOfertaToStringConverter());
        registry.addConverter(getIdToOfertaConverter());
        registry.addConverter(getStringToOfertaConverter());
        registry.addConverter(getPuestoToStringConverter());
        registry.addConverter(getIdToPuestoConverter());
        registry.addConverter(getStringToPuestoConverter());
        registry.addConverter(getSedeToStringConverter());
        registry.addConverter(getIdToSedeConverter());
        registry.addConverter(getStringToSedeConverter());
        registry.addConverter(getTipoformacionToStringConverter());
        registry.addConverter(getIdToTipoformacionConverter());
        registry.addConverter(getStringToTipoformacionConverter());
        registry.addConverter(getUsuarioToStringConverter());
        registry.addConverter(getIdToUsuarioConverter());
        registry.addConverter(getStringToUsuarioConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
