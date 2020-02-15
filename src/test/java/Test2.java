
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Categorysecond;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MockMvcBuilder;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.context.WebApplicationContext;

import java.util.HashMap;
import java.util.List;


/**
 * @author lyh
 * @date 2020/2/11 -16:22
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:applicationContext.xml","classpath:springmvc.xml"})
public class Test2 {
    @Autowired
    WebApplicationContext context;

    MockMvc mockMvc;

    @Before
    public void initMockMvc(){
        mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
    }
    @Test
    public void testPage() throws Exception {

        MvcResult result = mockMvc.perform(MockMvcRequestBuilders.get("/selectall").param("pn","1")).andReturn();
        System.out.println("result="+result);
            MockHttpServletRequest request = result.getRequest();

            PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
             System.out.println(pageInfo);
            System.out.println("当前页码" + pageInfo.getPageNum());
            System.out.println("总页码" + pageInfo.getPages());
            System.out.println("总记录数" + pageInfo.getTotal());
            System.out.println("在页面上需要连续显示的页码");
            int[] navigatePages = pageInfo.getNavigatepageNums();
            for (int i : navigatePages) {
                System.out.println(" " + i);
            }

            System.out.println("文章数据：");
            List<Categorysecond> list = pageInfo.getList();
            for (Categorysecond art : list) {
                System.out.println(art);
            }
        }

}
