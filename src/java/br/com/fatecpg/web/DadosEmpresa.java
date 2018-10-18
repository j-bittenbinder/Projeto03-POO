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
public class DadosEmpresa {
    private String nome;
    private String razaoSocial;
    private String cnpj;
    private String telefone;
    private String website;
    
    public void setEmpresa(String nome, String razaoSocial, String cnpj, String telefone, String website){
        this.setNome(nome);
        this.setRazaoSocial(razaoSocial);
        this.setCnpj(cnpj);
        this.setTelefone(telefone);
        this.setWebsite(website);
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
    
    private static ArrayList<DadosEmpresa> empresa;
    
    public static ArrayList<DadosEmpresa> getEmpresas(){
        if(empresa == null){
            empresa = new ArrayList<>();
            DadosEmpresa de1 = new DadosEmpresa();
            de1.setEmpresa("J Doces", "João ME", "16816811681681681", "18991110001", "https://www.jdoces.com.br");
            empresa.add(de1);
            DadosEmpresa de2 = new DadosEmpresa();
            de2.setEmpresa("Madeferro", "Francisco LTDA", "16652987315681681", "18991112201", "https://www.madeferro.com.br");
            empresa.add(de2);
            DadosEmpresa de3 = new DadosEmpresa();
            de3.setEmpresa("B Papelaria", "Tereza MEI", "16816827681685211", "18991110661", "https://www.bpapelaria.com.br");
            empresa.add(de3);
        }
        return empresa;
    }

}
