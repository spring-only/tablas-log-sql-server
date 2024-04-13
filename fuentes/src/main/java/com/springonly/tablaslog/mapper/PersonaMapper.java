package com.springonly.tablaslog.mapper;

import com.springonly.tablaslog.entity.PersonaEntity;
import com.springonly.tablaslog.model.Persona;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PersonaMapper {

    public PersonaEntity convertSingleFromModelToEntity(Persona persona) {
        PersonaEntity personaEntity = new PersonaEntity();

        personaEntity.setID(persona.getID());

        personaEntity.setNombres(persona.getNombres());
        personaEntity.setApellidos(persona.getApellidos());
        personaEntity.setLugarNacimiento(persona.getLugarNacimiento());
        personaEntity.setEstadoCivil(persona.getEstadoCivil());
        personaEntity.setFechaModificacion(persona.getFechaModificacion());

        return personaEntity;
    }

    public Persona convertSingleFromEntityToModel(PersonaEntity personaEntity) {
        Persona persona = new Persona();

        persona.setID(personaEntity.getID());

        persona.setNombres(personaEntity.getNombres());
        persona.setApellidos(personaEntity.getApellidos());
        persona.setLugarNacimiento(personaEntity.getLugarNacimiento());
        persona.setEstadoCivil(personaEntity.getEstadoCivil());
        persona.setFechaModificacion(personaEntity.getFechaModificacion());

        return persona;
    }

    public List<Persona> convertMultipleFromEntityToModel(List<PersonaEntity> personaEntitieList) {
        List<Persona> personas = new ArrayList<>();

        for  (PersonaEntity personaEntity : personaEntitieList) {
            Persona persona = new Persona();

            persona = convertSingleFromEntityToModel(personaEntity);

            personas.add(persona);
        };

        return personas;
    }
}
