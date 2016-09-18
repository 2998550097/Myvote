package com.yc.darry.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.darry.entity.Good;
import com.yc.darry.entity.Pagination;

public interface GoodsService {
	
	List<Good> getAll();
	
	List<Good> getGoods();
	
	Pagination getGoodByPage(Pagination page);

	int addGoods(Good good);
	
	boolean deleteGoods(Integer goodid);

	int updateGoods(Good good);

<<<<<<< HEAD
	List<Good> search(String gname, String seriesname, String stylename);

=======
	Good getGoodsById(@Param("goodid")int goodid,@Param("pcarat")String pcarat);

>>>>>>> branch 'master' of ssh://git@github.com/2998550097/Myvote.git
}
