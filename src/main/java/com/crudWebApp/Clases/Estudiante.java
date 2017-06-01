package com.crudWebApp.Clases;

import java.util.ArrayList;

/**
 * Created by MT on 30/5/2017.
 */
public class Estudiante {
    private int matricula;
    private String nombre;
    private String apellido;
    private String telefono;

    public int getMatricula() {
        return matricula;

    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Estudiante(){

    }

    public Estudiante(int matricula, String nombre, String apellido, String telefono) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
    }


    //DATOS ESTATICOS

    public static ArrayList<Estudiante> getListadoEstudiantes() {
        return listadoEstudiantes;
    }

    public static void setListadoEstudiantes(ArrayList<Estudiante> listadoEstudiantes) {
        Estudiante.listadoEstudiantes = listadoEstudiantes;
    }

    public static ArrayList<Estudiante> listadoEstudiantes;

    public static boolean deleteEstudiante(int matricula){
        ArrayList<Estudiante> listaNueva = new ArrayList<Estudiante>(getListadoEstudiantes());
        for(int i=0; i<listaNueva.size();i++){
            if(matricula==listaNueva.get(i).getMatricula()){
                listaNueva.remove(i);
                setListadoEstudiantes(listaNueva);
                return true;
            }
        }
        return false;
    }
}
