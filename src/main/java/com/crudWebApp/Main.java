package com.crudWebApp;

import com.crudWebApp.Clases.Estudiante;
import freemarker.template.Configuration;
import spark.ModelAndView;
import spark.Request;
import spark.template.freemarker.FreeMarkerEngine;

import java.awt.image.AreaAveragingScaleFilter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

/**
 * Created by MT on 30/5/2017.
 */
public class Main {
    public static void main(String[] args) {

         staticFileLocation("/public");
        ArrayList<Estudiante> listadoEstudiantesMain = new ArrayList<Estudiante>();
        listadoEstudiantesMain.add(new Estudiante(20120467,"MANUEL","TOLENTINO","8096085057"));
        listadoEstudiantesMain.add(new Estudiante(20131234 ,"DARLENYS","GOMEZ","8091234567"));
        Estudiante.setListadoEstudiantes(listadoEstudiantesMain);

        Configuration configuration = new Configuration();
        configuration.setClassForTemplateLoading(Main.class, "/templates/");
        FreeMarkerEngine freeMarkerEngine= new FreeMarkerEngine(configuration);

        get("/home", (request,response)-> {
            Map<String, Object> attributes = new HashMap<>();

            attributes.put("estudiantes", Estudiante.getListadoEstudiantes());

            return new ModelAndView(attributes, "/estudiantes.ftl");
        }, freeMarkerEngine );

        get("/agregarEstudiante", (request,response)-> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("estudiantes", Estudiante.getListadoEstudiantes());
            return new ModelAndView(attributes, "/agregarEstudiante.ftl");
        }, freeMarkerEngine );

        post("/agregarEstudiante", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            //System.out.println(request.queryParams("Nom"));
            listadoEstudiantesMain.add(new Estudiante(Integer.parseInt(request.queryParams("Mat")),request.queryParams("Nom"),request.queryParams("Ape"), request.queryParams("Tel")));
            Estudiante.setListadoEstudiantes(listadoEstudiantesMain);
            response.redirect("/home");
            return new ModelAndView(attributes, "agregarEstudiante.ftl");
        }, freeMarkerEngine);

        get("/eliminarEstudiante/:matricula", (request,response)-> {

            Map<String, Object> attributes = new HashMap<>();
            for(int i=0; i<Estudiante.getListadoEstudiantes().size();i++){
                if(Estudiante.getListadoEstudiantes().get(i).getMatricula()==Integer.parseInt(request.params("matricula"))){
                    Estudiante.listadoEstudiantes.remove(Estudiante.listadoEstudiantes.get(i));
                }
            }
            response.redirect("/home");
            return new ModelAndView(null, "/eliminarEstudiante.ftl");
        }, freeMarkerEngine );

        get("/verEstudiante/:matricula",((request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            String mat = request.params("matricula");

            if(Estudiante.getListadoEstudiantes().size() != 0){
                //Student found
                attributes.put("estudiante",buscarEstudiante(Integer.parseInt(mat)));
                //System.out.println(Estudiante.getListadoEstudiantes().get(i).getApellido());
            }
            else{
                attributes.put("estudiante",null);
            }

            return new ModelAndView(attributes,"verEstudiante.ftl");
        }), freeMarkerEngine);

        get("/editarEstudiante/:matricula",((request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            String mat = request.params("matricula");


            if(Estudiante.getListadoEstudiantes().size() != 0){
                //Student found


                attributes.put("estudiante",buscarEstudiante(Integer.parseInt(mat)));
            }
            else{
                attributes.put("estudiante",null);
            }


            return new ModelAndView(attributes,"editarEstudiante.ftl");
        }), freeMarkerEngine);

        post("/editarEstudiante",((request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            int matricula = Integer.parseInt(request.queryParams("Mat"));
            String nombre = request.queryParams("Nom");
            String apellido = request.queryParams("Ape");
            String telefono = request.queryParams("Tel");

            for(int i=0;i<Estudiante.getListadoEstudiantes().size();i++){
                if(matricula==Estudiante.getListadoEstudiantes().get(i).getMatricula()){
                    Estudiante.getListadoEstudiantes().get(i).setMatricula(matricula);
                    Estudiante.getListadoEstudiantes().get(i).setNombre(nombre);
                    Estudiante.getListadoEstudiantes().get(i).setApellido(apellido);
                    Estudiante.getListadoEstudiantes().get(i).setTelefono(telefono);
                }
            }



            if(Estudiante.getListadoEstudiantes().size() != 0){
                //Student found



                attributes.put("estudiante",buscarEstudiante(matricula));
                response.redirect("/home");
            }
            else{
                attributes.put("estudiante",null);
                response.redirect("/home");
            }


            return new ModelAndView(attributes,"editarEstudiante.ftl");
        }), freeMarkerEngine);

    }
    public static Estudiante buscarEstudiante(int mat){
        for(int i=0; i<Estudiante.getListadoEstudiantes().size();i++){
            if(Estudiante.getListadoEstudiantes().get(i).getMatricula()==mat){
                return Estudiante.getListadoEstudiantes().get(i);
            }
        }
        return null;
    }

}


