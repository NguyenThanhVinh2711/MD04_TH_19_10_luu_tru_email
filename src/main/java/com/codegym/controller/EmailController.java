package com.codegym.controller;


import com.codegym.model.Email;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
public class EmailController {
    @GetMapping("/start")
    public String home(Model model) {
        model.addAttribute("email", new Email());
        return ("/home");
    }

    @ModelAttribute("languageList")
    public Map<String, String > getLanguages() {
        Map<String , String > languages = new HashMap<String , String >();
        languages.put("English", "English");
        languages.put("Chinese", "Chinese");
        languages.put("Singapore", "Singapore");
        languages.put("Japanese", "Japanese");
        languages.put("Vietnamese", "Vietnamese");
        return languages;
    }

    @RequestMapping(value = "/show", method = RequestMethod.POST)
    public String showResult(@ModelAttribute("email") Email email, ModelMap model) {
        model.addAttribute("language", email.getLanguages());
        model.addAttribute("pageSize", email.getPageSize());
        model.addAttribute("signature", email.getSignature());
        model.addAttribute("spamFilter", email.isSpamsFilter());

        return "/result";
    }

}
