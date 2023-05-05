package diploma.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class TrainersController {
    @GetMapping("/trainers")
    public String showHomePage() {
        return "trainers";
    }

    @GetMapping("/trainer1")
    public String showInfo1(){
        return "trainer1";
    }

    @GetMapping("/trainer2")
    public String showInfo2(){
        return "trainer2";
    }

    @GetMapping("/trainer3")
    public String showInfo3(){
        return "trainer3";
    }
    @GetMapping("/trainer4")
    public String showInfo4(){
        return "trainer4";
    }
    @GetMapping("/trainer5")
    public String showInfo5(){
        return "trainer5";
    }
    @GetMapping("/trainer6")
    public String showInfo6(){
        return "trainer6";
    }
}

