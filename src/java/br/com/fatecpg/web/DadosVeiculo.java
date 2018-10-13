/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author Julio
 */
public class DadosVeiculo {
    private String placa;
    private String marca;
    private String modelo;
    private String cor;
    
    public void setVeiculo(String placa, String marca, String modelo, String cor){
        this.setPlaca(placa);
        this.setMarca(marca);
        this.setModelo(modelo);
        this.setCor(cor);
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }
    
    private static ArrayList<DadosVeiculo> veiculo;
    
    public static ArrayList<DadosVeiculo> getVeiculos(){
        if(veiculo == null){
            veiculo = new ArrayList<>();
            DadosVeiculo dv1 = new DadosVeiculo();
            dv1.setVeiculo("OFP5853", "Volkswagen", "Fusca", "Pérola");
            veiculo.add(dv1);
            DadosVeiculo dv2 = new DadosVeiculo();
            dv2.setVeiculo("DCE7118", "Ford", "Ranger", "Preta");
            veiculo.add(dv2);
            DadosVeiculo dv3 = new DadosVeiculo();
            dv3.setVeiculo("COQ1606", "Fiat", "Uno", "Vermelha");
            veiculo.add(dv3);
        }
        return veiculo;
    }
}
