package com.yc.darry.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.darry.entity.Good;
import com.yc.darry.entity.Pagination;

public interface GoodsMapper {
	List<Good> getAll();//前台取值
	
	List<Good> getGoods();//后端取值
	
	Pagination getGoodByPage(Pagination page);
	
	int addGoods(Good good);
	
	int updateGoods(Good good);

	boolean deleteGoods(Integer goodid);

<<<<<<< HEAD
	List<Good> search(@Param("gname")String gname,@Param("seriesname")String seriesname,@Param("stylename")String stylename);
=======
	Good getGoodsById(@Param("goodid")int goodid,@Param("pcarat")String pcarat);


>>>>>>> branch 'master' of ssh://git@github.com/2998550097/Myvote.git
}
