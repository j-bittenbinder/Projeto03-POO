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
public class DadosPessoa {
    private String nome;
    private String cpf;
    private String email;
    private String telefone;

    public void setPessoa(String nome, String cpf, String email, String telefone){
        this.setNome(nome);
        this.setCpf(cpf);
        this.setEmail(email);
        this.setTelefone(telefone);
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    private static ArrayList<DadosPessoa> pessoa;
    
    public static ArrayList<DadosPessoa> getPessoas(){
        if(pessoa == null){
            pessoa = new ArrayList<>();
            DadosPessoa dp1 = new DadosPessoa();
            dp1.setPessoa("João", "12365478910", "joao@site.com", "18991110001");
            pessoa.add(dp1);
            DadosPessoa dp2 = new DadosPessoa();
            dp2.setPessoa("Maria", "12365478911", "maria@site.com", "18991110002");
            pessoa.add(dp2);
            DadosPessoa dp3 = new DadosPessoa();
            dp3.setPessoa("José", "12365478911", "jose@site.com", "18991110003");
            pessoa.add(dp3);
        }
        return pessoa;
    }
    
}
