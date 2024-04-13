package com.springonly.tablaslog.controller;

import com.springonly.tablaslog.entity.PersonaEntity;
import com.springonly.tablaslog.mapper.PersonaMapper;
import com.springonly.tablaslog.model.Persona;
import com.springonly.tablaslog.repository.PersonaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/persons")
public class PersonaController {
    @Autowired
    private PersonaRepository personaRepository;

    @Autowired
    private PersonaMapper personaMapper;

    @GetMapping
    public List<Persona> listPersona() {
        List<Persona> personas = new ArrayList<>();

        personas = personaMapper.convertMultipleFromEntityToModel(personaRepository.findAll());

        return personas;
    }


    @PostMapping
    public Persona savePersona(@RequestBody Persona persona) {
        System.out.println(persona.toString());
        PersonaEntity personaEntity = personaMapper.convertSingleFromModelToEntity(persona);

        Persona savedPersona = personaMapper.convertSingleFromEntityToModel(personaRepository.save(personaEntity));

        return savedPersona;
    }
}
