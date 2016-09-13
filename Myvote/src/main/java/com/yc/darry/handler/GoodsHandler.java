package com.yc.darry.handler;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.darry.entity.Good;
import com.yc.darry.entity.Paramter;
import com.yc.darry.entity.Pagination;
import com.yc.darry.service.GoodsService;
import com.yc.darry.service.ParamterService;
import com.yc.darry.service.SeriesStyleService;


@Controller
@RequestMapping("/goods")
public class GoodsHandler {
	
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private ParamterService paramterService;
	@Autowired
	private SeriesStyleService seriesstyleService;
	
	/**
	 * 查询所有商品
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/findAll")
	public List<Good>  findAll(){
		return goodsService.getAll();
	}
	//后端取值
	@ResponseBody
	@RequestMapping("/getGoods")
	public List<Good>  getGoods(){
		return goodsService.getGoods();
	}
	/**
	 * 分页查询
	 * @param page
	 * @param num
	 * @param totalSize
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/findByPage")
	public Pagination  findByPage(int page,int num,int totalSize,String minPrice,String maxPrice){
		System.out.println(minPrice+"--"+maxPrice);
		int min=0;
		int max=0;
		if(!"".equals(minPrice)){
			min=Integer.parseInt(minPrice);
		}
		if(!"".equals(maxPrice)){
			max=Integer.parseInt(maxPrice);
		}
		Pagination paginations=new Pagination(12, num,min,max);
		paginations.setTotalSize(totalSize);
		if(page==0){
			paginations=goodsService.getGoodByPage(new Pagination(12, page+1,min,max));
		}else if(page==1){
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getnextPageNo(),min,max));
		}else if(page==2){
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getProPageNo(),min,max));
		}
		return paginations;
	}

	/**
	 * 后台的商品添加操作
	 * @param good
	 * @param paramter
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/addGoods")
	public boolean  addGoods(@RequestParam(value = "photo", required = false) MultipartFile file, HttpServletRequest request, Good good,Paramter paramter) throws IllegalStateException, IOException{
		 boolean flag=false;
		 String urlpath="../images/";
		 String path = request.getSession().getServletContext().getRealPath("urlpath");
		 String fileName = file.getOriginalFilename();  
	        System.out.println(path);  
	        File targetFile = new File(path, fileName);
	        if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        }  
	        try {  
	            file.transferTo(targetFile);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }
	        good.setGimage(request.getContextPath()+"/urlpath/"+fileName);
	        good.setGprice(good.getPprice());
	        System.out.println("===>" + good);
	        System.out.println("==>"+paramter);
			goodsService.addGoods(good);
			if(good!=null){
				int  goodid=good.getGoodid();
				System.out.println(goodid+"**");
				String seriesname=good.getSeriesname();
				String stylename=good.getStylename();
				paramter.setGoodid(goodid);
				System.out.println(paramter);
				paramterService.addParamter(paramter);
				flag=seriesstyleService.addSeriesStyle( goodid, seriesname, stylename);
				System.out.println(flag+"*********");
		 }
		return flag;
	}
	/**
	 * 更新后台商品数据操作
	 * @param good
	 * @param paramter
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/updateGoods")
	public boolean  updateGoods(@RequestParam(value = "photo", required = false) MultipartFile file, HttpServletRequest request, Good good,Paramter paramter) throws IllegalStateException, IOException{
		 boolean flag=false;
		 	System.out.println("*****" + good);
	        System.out.println("****"+paramter);
		 	String path = request.getSession().getServletContext().getRealPath("upload");
		 	String fileName = file.getOriginalFilename();  
	        System.out.println(path);  
	        File targetFile = new File(path, fileName);
	        if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        }  
	        try {  
	            file.transferTo(targetFile);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }
	        good.setGimage(request.getContextPath()+"/images/"+fileName);
	        good.setGprice(good.getPprice());
	        System.out.println("===>" + good);
	        System.out.println("==>"+paramter);
		 goodsService.updateGoods(good);
		 Integer  goodid=good.getGoodid();
		 String seriesname=good.getSeriesname();
		 String stylename=good.getStylename();
		 paramter.setGoodid(goodid);
		 System.err.println(goodid+seriesname+stylename+"####");
		 paramterService.updateParamter(paramter);
		 flag=seriesstyleService.updateSeriesStyle(goodid, seriesname, stylename);
		 System.out.println(flag+"$$$$$$$$$$$$$$$");
		 return flag;
	}
	/**
	 * 删除后台商品操作  根据goodid
	 * @param goodid
	 * @param out
	 */
	@ResponseBody
	@RequestMapping("/deleteGoods")
	public boolean  deleteGoods(String goodid,String paramterid){
		boolean flag = false;
		System.out.println(goodid+"***"+paramterid);
		String[] goodids=goodid.split(",");
		String[] paramterids=paramterid.split(",");
		System.out.println(goodids.length+"*"+paramterids.length);
		System.out.println("!!!!!");
		for(int i=0;i<goodids.length;i++){
			paramterService.deleteParamter(Integer.valueOf(goodids[i]),Integer.valueOf(paramterids[i]));
			seriesstyleService.deleteSeriesStyle(Integer.valueOf(goodids[i]));
			flag=goodsService.deleteGoods(Integer.valueOf(goodids[i]));
			System.out.println(flag+"///////////");
		}
		return flag;
	}
}
