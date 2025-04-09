package com.entity.model;

import com.entity.ShangpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;


/**
 * 飞机信息
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 * @author
 * @email
 * @date 2021-03-13 12:49:51
 */
public class ShangpinxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;


	/**
	 * 飞机舱位
	 */

	private String shangpinfenlei;

	/**
	 * 图片
	 */

	private String tupian;

	/**
	 * 起点
	 */

	private String pinpai;

	/**
	 * 评分
	 */

	private String guige;

	/**
	 * 飞机详情
	 */

	private String shangpinxiangqing;

	/**
	 * 最近点击时间
	 */

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date clicktime;

	/**
	 * 点击次数
	 */

	private Integer clicknum;

	/**
	 * 价格
	 */

	private Float price;


	/**
	 * 设置：飞机舱位
	 */

	public void setShangpinfenlei(String shangpinfenlei) {
		this.shangpinfenlei = shangpinfenlei;
	}

	/**
	 * 获取：飞机舱位
	 */
	public String getShangpinfenlei() {
		return shangpinfenlei;
	}


	/**
	 * 设置：图片
	 */

	public void setTupian(String tupian) {
		this.tupian = tupian;
	}

	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}


	/**
	 * 设置：起点
	 */

	public void setPinpai(String pinpai) {
		this.pinpai = pinpai;
	}

	/**
	 * 获取：起点
	 */
	public String getPinpai() {
		return pinpai;
	}


	/**
	 * 设置：评分
	 */

	public void setGuige(String guige) {
		this.guige = guige;
	}

	/**
	 * 获取：评分
	 */
	public String getGuige() {
		return guige;
	}


	/**
	 * 设置：飞机详情
	 */

	public void setShangpinxiangqing(String shangpinxiangqing) {
		this.shangpinxiangqing = shangpinxiangqing;
	}

	/**
	 * 获取：飞机详情
	 */
	public String getShangpinxiangqing() {
		return shangpinxiangqing;
	}


	/**
	 * 设置：最近点击时间
	 */

	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}

	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}


	/**
	 * 设置：点击次数
	 */

	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}

	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}


	/**
	 * 设置：价格
	 */

	public void setPrice(Float price) {
		this.price = price;
	}

	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}

}
