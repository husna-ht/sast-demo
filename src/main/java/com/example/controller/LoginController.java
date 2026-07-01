package com.example.controller;

import com.example.model.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {

    private final UserService userService;

    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String root() {
        return "redirect:/dashboard";
    }

    @GetMapping("/login")
    public String loginPage(@RequestParam(value = "error",  required = false) String error,
                            @RequestParam(value = "logout", required = false) String logout,
                            Model model) {
        if (error  != null) model.addAttribute("errorMsg",  "Invalid username or password.");
        if (logout != null) model.addAttribute("logoutMsg", "You have been logged out successfully.");
        return "login";
    }

    @GetMapping("/register")
    public String registerPage(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String registerSubmit(@ModelAttribute("user") User user,
                                 Model model,
                                 RedirectAttributes redirectAttributes) {
        if (user.getUsername() == null || user.getUsername().trim().isEmpty()) {
            model.addAttribute("errorMsg", "Username is required.");
            return "register";
        }
        if (user.getPassword() == null || user.getPassword().length() < 6) {
            model.addAttribute("errorMsg", "Password must be at least 6 characters.");
            return "register";
        }
        if (user.getEmail() == null || !user.getEmail().contains("@")) {
            model.addAttribute("errorMsg", "A valid email is required.");
            return "register";
        }

        try {
            userService.register(user);
            redirectAttributes.addFlashAttribute("successMsg",
                    "Registration successful! Please log in.");
            return "redirect:/login";
        } catch (IllegalArgumentException e) {
            model.addAttribute("errorMsg", e.getMessage());
            return "register";
        }
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model, Authentication auth) {
        if (auth != null) {
            model.addAttribute("username", auth.getName());
        }
        return "dashboard";
    }
}
