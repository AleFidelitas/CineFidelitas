package com.cinefide.controller;

import com.cinefide.domain.Usuario;
import com.cinefide.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
    
    @Autowired
    private UsuarioService usuarioService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = usuarioService.getUsuario(false);
        model.addAttribute("usuarios", lista);
        model.addAttribute("totalUsuarios", lista.size());       
        return "/usuario/listado";
    }
            
            
    @GetMapping("/modificar/{idUsuario}")
    public String modifica(Usuario usuario, Model model){
        usuario = usuarioService.getUsuario(usuario);
        model.addAttribute("usuario", usuario);
        return "/usuario/modifica";
    }
    
        @GetMapping("/eliminar/{idUsuario}")
    public String elimina(Usuario usuario){
        usuarioService.delete(usuario);
        return "redirect:/usuario/listado";
    }
    
}
