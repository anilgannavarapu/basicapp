package tutorial.rest.mvc;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;


import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;


/**
 * Created by Manil on 2/6/2016.
 */
public class TestControllerTest {
//    @InjectMocks
//    private TestController testController;
//
//    private MockMvc mockMvc;
//
//    @Before
//    public void setup() {
//        MockitoAnnotations.initMocks(this);
//        mockMvc = MockMvcBuilders.standaloneSetup(testController).build();
//    }
//
//    @Test
//    public void test() throws Exception{
//        mockMvc.perform(get("/test")).andDo(MockMvcResultHandlers.print());
//    }
//
//    @Test
//    public void test2() throws Exception{
//        mockMvc.perform(get("/test1")).andDo(MockMvcResultHandlers.print());
//    }
//    @Test
//    public void test3() throws Exception{
//        mockMvc.perform(get("/test2")).andDo(MockMvcResultHandlers.print());
//    }
//    @Test
//    public void test4() throws Exception{
//        mockMvc.perform(post("/test3")
//                .content("{\"title\" :\"Test Blog Title\"}")
//                .contentType(MediaType.APPLICATION_JSON)
//
//        ).andDo(MockMvcResultHandlers.print());
//    }
}
