package Animales;

public class Perro extends AnimalG{
    
    protected String nivelEntrenamiento;

    public Perro(String nivelEntrenamiento, String tipoAnimal, String nombre, String raza, String color, int edad) {
        super(tipoAnimal, nombre, raza, color, edad);
        this.nivelEntrenamiento = nivelEntrenamiento;
    }

    public Perro(){
        
    }

    public String getNivelEntrenamiento() {
        return nivelEntrenamiento;
    }

    public void setNivelEntrenamiento(String nivelEntrenamiento) {
        this.nivelEntrenamiento = nivelEntrenamiento;
    }
    
    //busca los datos para imprimir en una tabla
    public String datos(){
        
        return "<tr><td>" + tipoAnimal + "</td>" +
               "<td>" + nombre + "</td>" +
               "<td>" + raza + "</td>" +
               "<td>" + color + "</td>" +
               "<td>" + edad + "</td>" +
               "<td> No aplica" + "</td>" +
               "<td>" + nivelEntrenamiento + "</td></tr>";
        
    }
}
