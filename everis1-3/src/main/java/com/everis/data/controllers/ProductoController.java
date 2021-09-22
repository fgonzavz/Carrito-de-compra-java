package com.everis.data.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.everis.data.models.Producto;
import com.everis.data.services.ProductoService;



@Controller
@RequestMapping("/producto")
public class ProductoController {
	
	private final ProductoService ps;

	public ProductoController(ProductoService productoService) {
		this.ps = productoService;
	}

	
	
	@RequestMapping("")
	public String index(@ModelAttribute("producto") Producto producto, Model model) {
		
		List<Producto> lista_productos = ps.findAll();
		model.addAttribute("lista_productos", lista_productos);
		return "producto.jsp";
	}

	@RequestMapping(value = "/crear", method = RequestMethod.POST)
	public String crear(@Valid @ModelAttribute("producto") Producto producto, RedirectAttributes redAtt) {
		System.out.println("crear" + producto);
		
		
		

		
		ps.crearProducto(producto);
		
		return "redirect:/producto";
	}

	//METODO ACTUALIZAR	
		@RequestMapping(value="/actualizar/{id}", method = RequestMethod.GET)
		public String actualizar(@PathVariable("id") Long id, Model model) {
			System.out.println("actualizar id: "+ id);
			
			Producto producto = ps.buscarProducto(id);
			
			model.addAttribute("producto", producto);
			return "editar_producto.jsp";
		}
		
		
		//VER LISTA PRODUCTOS
				@RequestMapping(value="/lista_productos/", method = RequestMethod.GET)
					public String listaProducto(@ModelAttribute("producto") Producto producto, Model model) {
						
						List<Producto> lista_productos = ps.findAll();
						model.addAttribute("lista_productos", lista_productos);
						return "lista_productos.jsp";
					}

				

	// METODO DE MODIFICAR
		@RequestMapping(value="/modificar",method= RequestMethod.PUT)
		public String modificar(@Valid @ModelAttribute("producto") Producto producto, RedirectAttributes redAtt) {
			
			System.out.println("el Id a modificar es: "+producto.getId());
			
			
			
			
			
			ps.modificarProducto(producto);
			
			return "redirect:/producto";
		}


	@RequestMapping(value = "/eliminar2/{id}", method = RequestMethod.DELETE)
	public String eliminar2(@PathVariable("id") Long id) {
		System.out.println("eliminar" + id);
		ps.eliminarProducto(id);
		return "redirect:/producto";
	}

	@RequestMapping("/buscar")
	public String buscar() {
		return "producto.jsp";
	}

}
