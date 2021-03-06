package egg.finalproject.post;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import egg.finalproject.category.CategoryDTO;
import egg.finalproject.category.CategoryService;
import egg.finalproject.comment.CommentDTO;
import egg.finalproject.comment.CommentService;
import egg.finalproject.image.ImageDTO;
import egg.finalproject.image.ImageService;
import egg.finalproject.member.MemberDTO;
import egg.finalproject.product.ProductDTO;
import egg.finalproject.product.ProductService;

@Controller
@RequestMapping("/onlinePost")
public class onlinePostController {
	@Autowired
	private onlinePostService service;
	
	@Autowired
	private ImageService imageService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired 
	private CommentService commentService;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/toWrite.do")
	public String toWrite(Model model) throws Exception{
		List<String> list = categoryService.getParentCategory(); //대분류 값 받아오기
		model.addAttribute("list", list);
		return "onlinePost/onlinePost_write";
	}
	

	//toWrite.do => 게시글 목록으로 이동 시켜야함~!!!!
	@RequestMapping("/write.do")
	public String insert(PostDTO dto,MultipartFile thumbNail) throws Exception{
		int post_no = service.getPost_no(); //넣어질 시퀀스 번호 받아오기
		String id = ((MemberDTO)session.getAttribute("loginSession")).getUser_id();
		String nickname = ((MemberDTO)session.getAttribute("loginSession")).getUser_nickname();
		dto.setUser_id(id);
		dto.setUser_nickname(nickname);
		System.out.println("post_no : "+post_no);
		dto.setPost_no(post_no);
		service.insertPost(dto);
		//파일 처리
		String realPath = session.getServletContext().getRealPath("onlinePostThumbNail");
		System.out.println(realPath);
		imageService.insertThumbNail(realPath, thumbNail,post_no);
		return "redirect:/admin/toPostManagement";
		//여기에 어드민 게시글 조회 부분링크로 가면 좋을듯
	}
	
	
	
	@RequestMapping("/toDetail.do")
	public String toDetail(int post_no, Model model) throws Exception{
		System.out.println("post_no : " + post_no);
		service.viewcount(post_no);
		System.out.println("pont_no : " + post_no);
//		ImageDTO imageDto = service.getThumbNail(post_no);
		PostDTO dto = service.getPostInfo(post_no);
		System.out.println(dto);
		ImageDTO imageDto = imageService.getThumbNail(post_no);
		ProductDTO productDto = productService.getProduct(dto.getProduct_no());
		List<CommentDTO> commentList = commentService.getAllComments(post_no,1);
		if(commentList.size()!=0) {
	         System.out.println(commentList.get(0).getContent());
	      }
		System.out.println("성공이야!!1"+productDto.getName());
		model.addAttribute("PostDTO", dto);
		model.addAttribute("ImageDTO",imageDto);
		model.addAttribute("ProductDTO",productDto);
		model.addAttribute("CommentList",commentList);
		return "onlinePost/onlinePostDetail";
	}
	
	//해당 comment위치로 이동
	@RequestMapping("/toDetailC.do")
	public String toDetailC(int post_no, Model model) throws Exception{
		System.out.println("pont_no : " + post_no);
//		ImageDTO imageDto = service.getThumbNail(post_no);
		PostDTO dto = service.getPostInfo(post_no);
		System.out.println(dto);
		ImageDTO imageDto = imageService.getThumbNail(post_no);
		ProductDTO productDto = productService.getProduct(dto.getProduct_no());
		List<CommentDTO> commentList = commentService.getAllComments(post_no,1);
		if(commentList.size()!=0) {
	         System.out.println(commentList.get(0).getContent());
	      }
		System.out.println("성공이야!!1"+productDto.getName());
		model.addAttribute("PostDTO", dto);
		model.addAttribute("ImageDTO",imageDto);
		model.addAttribute("ProductDTO",productDto);
		model.addAttribute("CommentList",commentList);
		model.addAttribute("goComment","1");
		return "onlinePost/onlinePostDetail";
	}
	
	@RequestMapping("/deletePost.do")
	public String deletePost(int post_no) throws Exception{
		System.out.println("post_no : "+post_no);
		if(service.deletePost(post_no)) {
			return "redirect:/admin/toPostManagement";
		}else {
			return "error";
		}
	}
	
	
	//수정 페이지로 이동
	@RequestMapping("/toModifyPost.do")
	public String toModifyPost(int post_no, Model model) throws Exception{
		System.out.println(post_no);
		PostDTO postDto = service.getPostInfo(post_no);
		ImageDTO imageDto = imageService.getThumbNail(post_no);
		CategoryDTO categoryDto = categoryService.getCategory(postDto.getCategory_no());
		ProductDTO productDto = productService.getProduct(postDto.getProduct_no());
		List<String> parentCategory = categoryService.getParentCategory();
		List<CategoryDTO> childCategory = categoryService.getChildCategory(categoryDto.getParent_group());
		model.addAttribute("PostDTO",postDto);
		model.addAttribute("CategoryDTO",categoryDto);
		model.addAttribute("ImageDTO",imageDto);
		model.addAttribute("ProductDTO",productDto);
		model.addAttribute("ParentCategory", parentCategory);
		model.addAttribute("ChildCategory",childCategory);
		
//		model.addAttribute("PostDTO",dto);
		return "onlinePost/onlinePostModify";
	}
	 
	//게시글 수정 메서드
	@RequestMapping("/modify.do")
	public String modify(int post_no, PostDTO dto,MultipartFile thumbNail) throws Exception{
		System.out.println("수정될 post_no : "+post_no);
		dto.setPost_no(post_no);
		service.updatePost(dto);
		if(thumbNail!=null) {
			String realPath = session.getServletContext().getRealPath("onlinePostThumbNail");
			System.out.println(realPath);
			imageService.updateThumbNail(realPath, thumbNail,post_no);
		}
//		//파일 처리
//		String realPath = session.getServletContext().getRealPath("onlinePostThumbNail");
//		System.out.println(realPath);
//		imageService.insertThumbNail(realPath, thumbNail,post_no);
		return "redirect:/admin/toPostManagement";
		//여기에 어드민 게시글 조회 부분링크로 가면 좋을듯
	}
}
