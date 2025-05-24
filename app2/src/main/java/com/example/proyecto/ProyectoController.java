package com.example.proyecto;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProyectoController {

	@GetMapping("/hello-world")
	public String index() {
		return "Greetings from Spring Boot! Hello, World!";
	}
}
