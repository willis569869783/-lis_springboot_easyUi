package com.entor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author Willis
 * @since 2020-01-07
 */
@Controller
@RequestMapping("/emp")
public class EmpController {

	@RequestMapping("/v")
	public String v() {
		return "index";
	}

	@RequestMapping("/a")
	public String a() {
		return "vip-user";
	}
}
