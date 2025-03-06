package Produto;

public class Caneta {
    String modelo;
    String cor;
    float ponta;
    int carga;
    boolean tampada;
    
    void tampar(){
        tampada = true;
        System.out.println("Caneta Tampada" + tampada);
    }
    
    void destampar(){
       tampada = false;
       System.out.println("Caneta Tampada" + tampada);
    }
    
    void mostrar(){
        modelo = "Bic";
        cor = "Azul";
        ponta = 0.7f;
        carga = 80;
        
        System.err.println("Dados do Produto" + "\n"+
                "Modelo " + modelo + "\n"+
                "Cor " + cor + "\n"+
                "Ponta " + ponta + "\n"+
                "Carga " + carga
        );
    }
    
    
}
