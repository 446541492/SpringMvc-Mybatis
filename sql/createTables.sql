set names "utf8";

#项目表
drop table if exists Project;
create table Project(
id int unsigned primary key auto_increment,
pubId int default 0 COMMENT '发起人ID',
proName varchar(200) not null COMMENT '项目名称',
proType int default 0 COMMENT '项目类型',
isHot int(3) default 0 COMMENT '是否最热',
top int(3) default 0 COMMENT '推荐',
content text not null COMMENT '项目内容',
intro	varchar(2000) COMMENT '项目简介',
videourl varchar(300) COMMENT '宣传视频链接',
name  varchar(100) COMMENT '联系人真实姓名',
pEmail     varchar(100) COMMENT '联系人邮箱',
pmobile   varchar(100) COMMENT '联系人电话',
pqq      varchar(100) COMMENT '联系人QQ号码 ',
plocationProvince varchar(20) DEFAULT NULL  COMMENT '联系人省份 ',
plocationCity varchar(20) DEFAULT NULL  COMMENT '联系人市 ',
plocationAddr varchar(100) DEFAULT NULL  COMMENT '联系人详细地址',
totalMoney int default 0 COMMENT '总金额',
nowMoney int default 0 COMMENT '目前金额',
supportNum int default 0 COMMENT '支持人数',
createTime datetime not null COMMENT '项目上传时间',
updateTime  datetime COMMENT '项目修改时间',   
checkTime date  COMMENT '审核通过时间，这时正式上线，倒计时第二天开始',
state int default 0 COMMENT '项目状态 0:项目上传 ,2:项目审核通过上线,3:审核不通过,4:项目结束'
)ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='项目表';