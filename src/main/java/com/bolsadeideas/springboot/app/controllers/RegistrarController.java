package com.bolsadeideas.springboot.app.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bolsadeideas.springboot.app.models.dao.IUsuarioDao;
import com.bolsadeideas.springboot.app.models.entity.Role;
import com.bolsadeideas.springboot.app.models.entity.Usuario;

@Controller
@RequestMapping("/registrar")
public class RegistrarController {

    @Autowired
    private IUsuarioDao usuarioDao;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @GetMapping
    public String verRegistroFormulario(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "registrar";
    }

    @PostMapping
    public String registrarUsuario(@Valid @ModelAttribute Usuario usuario, BindingResult result, Model model, RedirectAttributes flash) {
        if (result.hasErrors()) {
            return "registrar";
        }

        // Validar que el username no esté en uso
        if (usuarioDao.findByUsername(usuario.getUsername()) != null) {
            model.addAttribute("error", "El nombre de usuario ya está en uso.");
            return "registrar";
        }

        // Codificar la contraseña
        usuario.setPassword(passwordEncoder.encode(usuario.getPassword()));
        usuario.setEnabled(true);

        // Asignar rol por defecto
        Role role = new Role();
        role.setAuthority("ROLE_USER");
        usuario.setRoles(List.of(role));

        usuarioDao.save(usuario);
        flash.addFlashAttribute("success", "Usuario registrado con éxito.");
        return "redirect:/login";
    }
}
