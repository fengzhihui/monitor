﻿--证件类型表
create table K_CARD_TYPE
(
  card_type_code NVARCHAR2(1) not null,
  card_type_name NVARCHAR2(50) not null
)
;
comment on table K_CARD_TYPE
  is '证件类型表';
comment on column K_CARD_TYPE.card_type_code
  is '代码';
comment on column K_CARD_TYPE.card_type_name
  is '名称';
alter table K_CARD_TYPE
  add constraint PK_CARD_TYPE_CODE primary key (CARD_TYPE_CODE);

--课节表
create table K_CLASSHOUR
(
  classhour_code   NVARCHAR2(2) not null,
  classhour_name   NVARCHAR2(50) not null,
  classhour_remark NVARCHAR2(200)
)
;
comment on table K_CLASSHOUR
  is '课节表';
comment on column K_CLASSHOUR.classhour_code
  is '编码';
comment on column K_CLASSHOUR.classhour_name
  is '名称';
comment on column K_CLASSHOUR.classhour_remark
  is '备注';
alter table K_CLASSHOUR
  add constraint PK_CLASSHOUR_CODE primary key (CLASSHOUR_CODE);

--国家表
create table K_COUNTRY
(
  country_code NVARCHAR2(3) not null,
  country_name NVARCHAR2(50) not null
)
;
comment on table K_COUNTRY
  is '国家表';
comment on column K_COUNTRY.country_code
  is '代码';
comment on column K_COUNTRY.country_name
  is '名称';
alter table K_COUNTRY
  add constraint PK_COUNTRY_CODE primary key (COUNTRY_CODE);

--课程表
create table TB_COURSE_INFO
(
  course_code   NVARCHAR2(4) not null,
  course_name   NVARCHAR2(50) not null,
  course_remark NVARCHAR2(200),
  course_level  NVARCHAR2(1) not null
)
;
comment on table TB_COURSE_INFO
  is '课程表';
comment on column TB_COURSE_INFO.course_code
  is '代码';
comment on column TB_COURSE_INFO.course_name
  is '名称';
comment on column TB_COURSE_INFO.course_remark
  is '说明';
comment on column TB_COURSE_INFO.course_level
  is '等级';
alter table TB_COURSE_INFO
  add constraint PK_COURSE_INFO_CODE primary key (COURSE_CODE);

--课程等级
create table K_COURSE_LEVEL
(
  course_level_code NVARCHAR2(1) not null,
  course_level_name NVARCHAR2(20) not null
)
;
comment on table K_COURSE_LEVEL
  is '课程等级';
comment on column K_COURSE_LEVEL.course_level_code
  is '代码';
comment on column K_COURSE_LEVEL.course_level_name
  is '名称';
alter table K_COURSE_LEVEL
  add constraint PK_COURSE_LEVEL_CODE primary key (COURSE_LEVEL_CODE);

--星期表
create table K_DAY
(
  day_code   NVARCHAR2(2) not null,
  day_name   NVARCHAR2(50) not null,
  day_remark NVARCHAR2(200)
)
;
comment on table K_DAY
  is '星期表';
comment on column K_DAY.day_code
  is '编码';
comment on column K_DAY.day_name
  is '名称';
comment on column K_DAY.day_remark
  is '备注';
alter table K_DAY
  add constraint PK_DAY_CODE primary key (DAY_CODE);

--学位表
create table K_DEGREE
(
  degree_code NVARCHAR2(3) not null,
  degree_name NVARCHAR2(50) not null
)
;
comment on table K_DEGREE
  is '学位表';
comment on column K_DEGREE.degree_code
  is '代码';
comment on column K_DEGREE.degree_name
  is '名称';
alter table K_DEGREE
  add constraint PK_DEGREE_CODE primary key (DEGREE_CODE);

--学历表
create table K_EDUCATION
(
  education_code NVARCHAR2(2) not null,
  education_name NVARCHAR2(50) not null
)
;
comment on table K_EDUCATION
  is '学历表';
comment on column K_EDUCATION.education_code
  is '代码';
comment on column K_EDUCATION.education_name
  is '名称';
alter table K_EDUCATION
  add constraint PK_EDUCATION_CODE primary key (EDUCATION_CODE);

--评价等级表
create table K_EVALUATE_LEVEL
(
  e_lv_id   NVARCHAR2(2) not null,
  e_lv_name NVARCHAR2(50) not null
)
;
comment on table K_EVALUATE_LEVEL
  is '评价等级表';
comment on column K_EVALUATE_LEVEL.e_lv_id
  is '编码';
comment on column K_EVALUATE_LEVEL.e_lv_name
  is '名称';
alter table K_EVALUATE_LEVEL
  add constraint PK_EVALUATE_LEVEL_ID primary key (E_LV_ID);

--评价状态表
create table K_EVALUATE_STATUS
(
  e_status_id   NVARCHAR2(2) not null,
  e_status_name NVARCHAR2(50) not null
)
;
comment on table K_EVALUATE_STATUS
  is '评价状态表';
comment on column K_EVALUATE_STATUS.e_status_id
  is '编码';
comment on column K_EVALUATE_STATUS.e_status_name
  is '名称';
alter table K_EVALUATE_STATUS
  add constraint PK_EVALUATE_STATUS_ID primary key (E_STATUS_ID);

--年级表
create table K_GRADE
(
  grade_code   NVARCHAR2(2) not null,
  grade_name   NVARCHAR2(50) not null,
  grade_remark NVARCHAR2(200)
)
;
comment on table K_GRADE
  is '年级表';
comment on column K_GRADE.grade_code
  is '代码';
comment on column K_GRADE.grade_name
  is '名称';
comment on column K_GRADE.grade_remark
  is '备注';
alter table K_GRADE
  add constraint PK_GRADE_ID primary key (GRADE_CODE);

--户口性质表
create table K_HOUSEHOLD
(
  household_id   NVARCHAR2(2) not null,
  household_name NVARCHAR2(50) not null
)
;
comment on table K_HOUSEHOLD
  is '户口性质表';
comment on column K_HOUSEHOLD.household_id
  is '编码';
comment on column K_HOUSEHOLD.household_name
  is '名称';
alter table K_HOUSEHOLD
  add constraint PK_HOUSEHOLD_ID primary key (HOUSEHOLD_ID);

--出入校标识表
create table K_INOROUT
(
  inorout_id   NVARCHAR2(2) not null,
  inorout_name NVARCHAR2(50) not null
)
;
comment on table K_INOROUT
  is '出入校标识表';
comment on column K_INOROUT.inorout_id
  is '编码';
comment on column K_INOROUT.inorout_name
  is '名称';
alter table K_INOROUT
  add constraint PK_INOROUT_ID primary key (INOROUT_ID);

--学籍状态表
create table K_MAINTENANCE_STATUS
(
  m_status_code   NVARCHAR2(2) not null,
  m_status_name   NVARCHAR2(50) not null,
  m_status_remark NVARCHAR2(200)
)
;
comment on table K_MAINTENANCE_STATUS
  is '学籍状态表';
comment on column K_MAINTENANCE_STATUS.m_status_code
  is '代码';
comment on column K_MAINTENANCE_STATUS.m_status_name
  is '名称';
comment on column K_MAINTENANCE_STATUS.m_status_remark
  is '备注';
alter table K_MAINTENANCE_STATUS
  add constraint PK_MAINTENANCE_STATUS_CODE primary key (M_STATUS_CODE);

--民族表
create table K_NATION
(
  nation_code NVARCHAR2(2) not null,
  nation_name NVARCHAR2(50) not null
)
;
comment on table K_NATION
  is '民族表';
comment on column K_NATION.nation_code
  is '代码';
comment on column K_NATION.nation_name
  is '名称';
alter table K_NATION
  add constraint PK_NATION_CODE primary key (NATION_CODE);

--政治面貌表
create table K_POLITICAL
(
  political_code       NVARCHAR2(2) not null,
  political_name       NVARCHAR2(50) not null,
  political_short_name NVARCHAR2(20) not null
)
;
comment on table K_POLITICAL
  is '政治面貌表';
comment on column K_POLITICAL.political_code
  is '编码';
comment on column K_POLITICAL.political_name
  is '名称';
comment on column K_POLITICAL.political_short_name
  is '简称';
alter table K_POLITICAL
  add constraint PK_POLITICAL_CODE primary key (POLITICAL_CODE);

--职称表
create table K_PROFESSIONAL
(
  professional_code NVARCHAR2(3) not null,
  professional_name NVARCHAR2(50) not null,
  remark            NVARCHAR2(200)
)
;
comment on table K_PROFESSIONAL
  is '职称表';
comment on column K_PROFESSIONAL.professional_code
  is '代码';
comment on column K_PROFESSIONAL.professional_name
  is '名称';
comment on column K_PROFESSIONAL.remark
  is '备注';
alter table K_PROFESSIONAL
  add constraint PK_PROFESSIONAL_CODE primary key (PROFESSIONAL_CODE);

--地区表/省市区县表
create table K_REGION
(
  region_code        NVARCHAR2(6) not null,
  region_name        NVARCHAR2(50) not null,
  parent_region_code NVARCHAR2(6)
)
;
comment on table K_REGION
  is '地区表/省市区县表';
comment on column K_REGION.region_code
  is '编码';
comment on column K_REGION.region_name
  is '名称';
comment on column K_REGION.parent_region_code
  is '父ID';
alter table K_REGION
  add constraint PK_REGION_CODE primary key (REGION_CODE);

--办学性质表
create table K_SCHOOL_NATURE
(
  nature_code   NVARCHAR2(2) not null,
  nature_name   NVARCHAR2(50) not null,
  nature_remark NVARCHAR2(200)
)
;
comment on table K_SCHOOL_NATURE
  is '办学性质表';
comment on column K_SCHOOL_NATURE.nature_code
  is '代码(二层二位数字码，第一位是“1”表示其下的分类普通中小学、职业中学通用，第一位是“2”表示其下的分类仅适用于其他中等职业学校)';
comment on column K_SCHOOL_NATURE.nature_name
  is '名称';
comment on column K_SCHOOL_NATURE.nature_remark
  is '备注';
alter table K_SCHOOL_NATURE
  add constraint PK_SCHOOL_NATURE_CODE primary key (NATURE_CODE);

--学期表
create table K_SEMESTER
(
  se_code   NVARCHAR2(1) not null,
  se_name   NVARCHAR2(50) not null,
  se_remark NVARCHAR2(200)
)
;
comment on table K_SEMESTER
  is '学期表';
comment on column K_SEMESTER.se_code
  is '代码';
comment on column K_SEMESTER.se_name
  is '名称';
comment on column K_SEMESTER.se_remark
  is '备注';
alter table K_SEMESTER
  add constraint PK_SEMESTER_CODE primary key (SE_CODE);

--性别表
create table K_SEX
(
  sex_code NVARCHAR2(1) not null,
  sex_name NVARCHAR2(50) not null
)
;
comment on table K_SEX
  is '性别表';
comment on column K_SEX.sex_code
  is '编码';
comment on column K_SEX.sex_name
  is '名称';
alter table K_SEX
  add constraint PK_SEX_CODE primary key (SEX_CODE);

--阶段表
create table K_STAGE
(
  stage_id     NVARCHAR2(2) not null,
  stage_name   NVARCHAR2(50) not null,
  stage_remark NVARCHAR2(200)
)
;
comment on table K_STAGE
  is '阶段表';
comment on column K_STAGE.stage_id
  is '编码';
comment on column K_STAGE.stage_name
  is '名称';
comment on column K_STAGE.stage_remark
  is '备注';
alter table K_STAGE
  add constraint PK_STAGE_ID primary key (STAGE_ID);

--周次表
create table K_WEEK
(
  week_code   NVARCHAR2(2) not null,
  week_name   NVARCHAR2(50) not null,
  week_remark NVARCHAR2(200)
)
;
comment on table K_WEEK
  is '周次表';
comment on column K_WEEK.week_code
  is '代码';
comment on column K_WEEK.week_name
  is '名称';
comment on column K_WEEK.week_remark
  is '备注';
alter table K_WEEK
  add constraint PK_WEEK_CODE primary key (WEEK_CODE);

--是否标志代码表
create table K_WHETHER
(
  whether_code NVARCHAR2(1) not null,
  whether_name NVARCHAR2(10) not null
)
;
comment on table K_WHETHER
  is '是否标志代码表';
comment on column K_WHETHER.whether_code
  is '代码';
comment on column K_WHETHER.whether_name
  is '名称';
alter table K_WHETHER
  add constraint PK_WHETHER_CODE primary key (WHETHER_CODE);

--年份表
create table K_YEAR
(
  year_code NVARCHAR2(4) not null,
  year_name NVARCHAR2(20) not null
)
;
comment on table K_YEAR
  is '年份表';
comment on column K_YEAR.year_code
  is '代码';
comment on column K_YEAR.year_name
  is '名称';
alter table K_YEAR
  add constraint PK_YEAR_CODE primary key (YEAR_CODE);

--初始化证件类型
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('1', '居民身份证');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('2', '军官证');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('3', '士兵证');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('4', '文职干部证');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('5', '部队离退休证');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('6', '香港特区护照/身份证明');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('7', '澳门特区护照/身份证明');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('8', '台湾居民来往大陆通行证');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('9', '境外永久居住证');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('A', '护照');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('B', '户口薄');
insert into K_CARD_TYPE (card_type_code, card_type_name)
values ('Z', '其他');
commit;

--初始化课节
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('01', '第1节', null);
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('02', '第2节', null);
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('03', '第3节', null);
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('04', '第4节', null);
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('05', '第5节', null);
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('06', '第6节', null);
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('07', '第7节', null);
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('08', '第8节', null);
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('09', '第9节', null);
insert into K_CLASSHOUR (classhour_code, classhour_name, classhour_remark)
values ('10', '第10节', null);
commit;

--初始化国家表
insert into K_COUNTRY (country_code, country_name)
values ('IRL', '爱尔兰');
insert into K_COUNTRY (country_code, country_name)
values ('IRN', '伊朗');
insert into K_COUNTRY (country_code, country_name)
values ('IRQ', '伊拉克');
insert into K_COUNTRY (country_code, country_name)
values ('ISL', '冰岛');
insert into K_COUNTRY (country_code, country_name)
values ('ISR', '以色列');
insert into K_COUNTRY (country_code, country_name)
values ('ITA', '意大利');
insert into K_COUNTRY (country_code, country_name)
values ('JAM', '牙买加');
insert into K_COUNTRY (country_code, country_name)
values ('JEY', '泽西岛');
insert into K_COUNTRY (country_code, country_name)
values ('JOR', '约旦');
insert into K_COUNTRY (country_code, country_name)
values ('JPN', '日本');
insert into K_COUNTRY (country_code, country_name)
values ('KAZ', '哈萨克斯坦');
insert into K_COUNTRY (country_code, country_name)
values ('KEN', '肯尼亚');
insert into K_COUNTRY (country_code, country_name)
values ('KGZ', '吉尔吉斯斯坦');
insert into K_COUNTRY (country_code, country_name)
values ('KHM', '柬埔寨');
insert into K_COUNTRY (country_code, country_name)
values ('KIR', '基里巴斯');
insert into K_COUNTRY (country_code, country_name)
values ('KLK', '福克兰群岛');
insert into K_COUNTRY (country_code, country_name)
values ('KNA', '圣基茨和尼维斯');
insert into K_COUNTRY (country_code, country_name)
values ('KOR', '韩国');
insert into K_COUNTRY (country_code, country_name)
values ('KWT', '科威特');
insert into K_COUNTRY (country_code, country_name)
values ('LAO', '老挝');
insert into K_COUNTRY (country_code, country_name)
values ('LBN', '黎巴嫩');
insert into K_COUNTRY (country_code, country_name)
values ('LBR', '利比里亚');
insert into K_COUNTRY (country_code, country_name)
values ('LBY', '利比亚');
insert into K_COUNTRY (country_code, country_name)
values ('LCA', '圣卢西亚岛');
insert into K_COUNTRY (country_code, country_name)
values ('LIE', '列支敦士登');
insert into K_COUNTRY (country_code, country_name)
values ('LKA', '斯里兰卡');
insert into K_COUNTRY (country_code, country_name)
values ('LSO', '莱索托');
insert into K_COUNTRY (country_code, country_name)
values ('LTU', '立陶宛');
insert into K_COUNTRY (country_code, country_name)
values ('LUX', '卢森堡');
insert into K_COUNTRY (country_code, country_name)
values ('LVA', '拉脱维亚');
insert into K_COUNTRY (country_code, country_name)
values ('MAC', '中国澳门');
insert into K_COUNTRY (country_code, country_name)
values ('MAR', '摩洛哥');
insert into K_COUNTRY (country_code, country_name)
values ('MCO', '摩纳哥');
insert into K_COUNTRY (country_code, country_name)
values ('MDA', '摩尔多瓦');
insert into K_COUNTRY (country_code, country_name)
values ('MDG', '马达加斯加岛');
insert into K_COUNTRY (country_code, country_name)
values ('MDV', '马尔代夫');
insert into K_COUNTRY (country_code, country_name)
values ('MEX', '墨西哥');
insert into K_COUNTRY (country_code, country_name)
values ('MHL', '马绍尔群岛');
insert into K_COUNTRY (country_code, country_name)
values ('MKD', '马其顿');
insert into K_COUNTRY (country_code, country_name)
values ('MLI', '马里');
insert into K_COUNTRY (country_code, country_name)
values ('MLT', '马耳他');
insert into K_COUNTRY (country_code, country_name)
values ('MMR', '缅甸');
insert into K_COUNTRY (country_code, country_name)
values ('MNE', '黑山');
insert into K_COUNTRY (country_code, country_name)
values ('MNG', '蒙古');
insert into K_COUNTRY (country_code, country_name)
values ('MNP', '北马里亚纳群岛自由联邦');
insert into K_COUNTRY (country_code, country_name)
values ('MOZ', '莫桑比克');
insert into K_COUNTRY (country_code, country_name)
values ('MRT', '毛利塔尼亚');
insert into K_COUNTRY (country_code, country_name)
values ('MSR', '蒙特塞拉特岛');
insert into K_COUNTRY (country_code, country_name)
values ('MTQ', '马提尼克岛');
insert into K_COUNTRY (country_code, country_name)
values ('MUS', '毛里求斯');
insert into K_COUNTRY (country_code, country_name)
values ('MWI', '马拉维');
insert into K_COUNTRY (country_code, country_name)
values ('MYS', '马来西亚');
insert into K_COUNTRY (country_code, country_name)
values ('MYT', '马约特岛');
insert into K_COUNTRY (country_code, country_name)
values ('NAM', '纳米比亚');
insert into K_COUNTRY (country_code, country_name)
values ('NCL', '新喀里多尼亚');
insert into K_COUNTRY (country_code, country_name)
values ('NER', '尼日尔');
insert into K_COUNTRY (country_code, country_name)
values ('NFK', '诺福克岛');
insert into K_COUNTRY (country_code, country_name)
values ('NGA', '尼日利亚');
insert into K_COUNTRY (country_code, country_name)
values ('NIC', '尼加拉瓜');
insert into K_COUNTRY (country_code, country_name)
values ('NIU', '纽埃岛');
insert into K_COUNTRY (country_code, country_name)
values ('NLD', '荷兰');
insert into K_COUNTRY (country_code, country_name)
values ('NOR', '挪威');
insert into K_COUNTRY (country_code, country_name)
values ('NPL', '尼泊尔');
insert into K_COUNTRY (country_code, country_name)
values ('NRU', '瑙鲁');
insert into K_COUNTRY (country_code, country_name)
values ('NZL', '新西兰');
insert into K_COUNTRY (country_code, country_name)
values ('OMN', '阿曼');
insert into K_COUNTRY (country_code, country_name)
values ('PAK', '巴基斯坦');
insert into K_COUNTRY (country_code, country_name)
values ('PAN', '巴拿马');
insert into K_COUNTRY (country_code, country_name)
values ('PCN', '皮特克恩岛');
insert into K_COUNTRY (country_code, country_name)
values ('PER', '秘鲁');
insert into K_COUNTRY (country_code, country_name)
values ('PHL', '菲律宾');
insert into K_COUNTRY (country_code, country_name)
values ('PLW', '帕劳岛');
insert into K_COUNTRY (country_code, country_name)
values ('PNG', '巴布亚新几内亚');
insert into K_COUNTRY (country_code, country_name)
values ('POL', '波兰');
insert into K_COUNTRY (country_code, country_name)
values ('PRI', '波多黎各');
insert into K_COUNTRY (country_code, country_name)
values ('PRK', '朝鲜');
insert into K_COUNTRY (country_code, country_name)
values ('PRT', '葡萄牙');
insert into K_COUNTRY (country_code, country_name)
values ('PRY', '巴拉圭');
insert into K_COUNTRY (country_code, country_name)
values ('PSE', '巴勒斯坦');
insert into K_COUNTRY (country_code, country_name)
values ('PYF', '法属波利尼西亚');
insert into K_COUNTRY (country_code, country_name)
values ('QAT', '卡塔尔');
insert into K_COUNTRY (country_code, country_name)
values ('REU', '留尼旺岛');
insert into K_COUNTRY (country_code, country_name)
values ('ROU', '罗马尼亚');
insert into K_COUNTRY (country_code, country_name)
values ('RUS', '俄国');
insert into K_COUNTRY (country_code, country_name)
values ('RWA', '卢旺达');
insert into K_COUNTRY (country_code, country_name)
values ('SAU', '沙特阿拉伯');
insert into K_COUNTRY (country_code, country_name)
values ('SDN', '苏丹');
insert into K_COUNTRY (country_code, country_name)
values ('SEN', '塞内加尔');
insert into K_COUNTRY (country_code, country_name)
values ('SGP', '新加坡');
insert into K_COUNTRY (country_code, country_name)
values ('SGS', '南乔治亚岛和南桑威奇群岛');
insert into K_COUNTRY (country_code, country_name)
values ('SHN', '圣赫勒拿岛');
insert into K_COUNTRY (country_code, country_name)
values ('SJM', '斯瓦尔巴岛和扬马延岛');
insert into K_COUNTRY (country_code, country_name)
values ('SLB', '所罗门群岛');
insert into K_COUNTRY (country_code, country_name)
values ('SLE', '塞拉利昂');
insert into K_COUNTRY (country_code, country_name)
values ('SLV', '萨尔瓦多');
insert into K_COUNTRY (country_code, country_name)
values ('SMR', '圣马力诺');
insert into K_COUNTRY (country_code, country_name)
values ('SOM', '索马里');
insert into K_COUNTRY (country_code, country_name)
values ('SPM', '圣皮埃尔和密克隆岛');
insert into K_COUNTRY (country_code, country_name)
values ('SRB', '塞尔维亚和黑山');
insert into K_COUNTRY (country_code, country_name)
values ('STP', '圣多美和普林西比');
commit;

insert into K_COUNTRY (country_code, country_name)
values ('AGO', '安哥拉');
insert into K_COUNTRY (country_code, country_name)
values ('AIA', '安圭拉');
insert into K_COUNTRY (country_code, country_name)
values ('ALA', '奥兰群岛');
insert into K_COUNTRY (country_code, country_name)
values ('ALB', '阿尔巴尼亚');
insert into K_COUNTRY (country_code, country_name)
values ('AND', '安道尔');
insert into K_COUNTRY (country_code, country_name)
values ('ANT', '荷属安地列');
insert into K_COUNTRY (country_code, country_name)
values ('ARE', '阿拉伯联合');
insert into K_COUNTRY (country_code, country_name)
values ('ARG', '阿根廷');
insert into K_COUNTRY (country_code, country_name)
values ('ARM', '亚美尼亚');
insert into K_COUNTRY (country_code, country_name)
values ('ASM', '美属萨摩亚');
insert into K_COUNTRY (country_code, country_name)
values ('ATA', '南极洲');
insert into K_COUNTRY (country_code, country_name)
values ('ATF', '法属南部领地');
insert into K_COUNTRY (country_code, country_name)
values ('ATG', '安提瓜岛与巴布达岛');
insert into K_COUNTRY (country_code, country_name)
values ('AUS', '澳大利亚');
insert into K_COUNTRY (country_code, country_name)
values ('AUT', '奥地利');
insert into K_COUNTRY (country_code, country_name)
values ('AZE', '阿塞拜疆');
insert into K_COUNTRY (country_code, country_name)
values ('BDI', '布隆迪');
insert into K_COUNTRY (country_code, country_name)
values ('BEL', '比利时');
insert into K_COUNTRY (country_code, country_name)
values ('BEN', '贝宁');
insert into K_COUNTRY (country_code, country_name)
values ('BFA', '布基纳法索');
insert into K_COUNTRY (country_code, country_name)
values ('BGD', '孟加拉国');
insert into K_COUNTRY (country_code, country_name)
values ('BGR', '保加利亚');
insert into K_COUNTRY (country_code, country_name)
values ('BHR', '巴林群岛');
insert into K_COUNTRY (country_code, country_name)
values ('BHS', '巴哈马群岛');
insert into K_COUNTRY (country_code, country_name)
values ('BIH', '波斯尼亚与黑塞哥维那');
insert into K_COUNTRY (country_code, country_name)
values ('BLR', '白俄罗斯');
insert into K_COUNTRY (country_code, country_name)
values ('BLZ', '伯利兹');
insert into K_COUNTRY (country_code, country_name)
values ('BMU', '百慕大群岛');
insert into K_COUNTRY (country_code, country_name)
values ('BOL', '玻利维亚');
insert into K_COUNTRY (country_code, country_name)
values ('BRA', '巴西');
insert into K_COUNTRY (country_code, country_name)
values ('BRB', '巴巴多斯岛');
insert into K_COUNTRY (country_code, country_name)
values ('BRN', '文莱');
insert into K_COUNTRY (country_code, country_name)
values ('BTN', '不丹');
insert into K_COUNTRY (country_code, country_name)
values ('BVT', '博维特岛');
insert into K_COUNTRY (country_code, country_name)
values ('BWA', '博茨瓦纳');
insert into K_COUNTRY (country_code, country_name)
values ('CAF', '中非共和国');
insert into K_COUNTRY (country_code, country_name)
values ('CAN', '加拿大');
insert into K_COUNTRY (country_code, country_name)
values ('CCK', '科科斯群岛');
insert into K_COUNTRY (country_code, country_name)
values ('CHE', '瑞士');
insert into K_COUNTRY (country_code, country_name)
values ('CHL', '智利');
insert into K_COUNTRY (country_code, country_name)
values ('CHN', '中国');
insert into K_COUNTRY (country_code, country_name)
values ('CIV', '科特迪瓦');
insert into K_COUNTRY (country_code, country_name)
values ('CMR', '喀麦隆');
insert into K_COUNTRY (country_code, country_name)
values ('COD', '刚果（金）');
insert into K_COUNTRY (country_code, country_name)
values ('COG', '刚果');
insert into K_COUNTRY (country_code, country_name)
values ('COK', '库克群岛');
insert into K_COUNTRY (country_code, country_name)
values ('COL', '哥伦比亚');
insert into K_COUNTRY (country_code, country_name)
values ('COM', '科摩罗');
insert into K_COUNTRY (country_code, country_name)
values ('CPV', '佛得角');
insert into K_COUNTRY (country_code, country_name)
values ('CRI', '哥斯达黎加');
insert into K_COUNTRY (country_code, country_name)
values ('CUB', '古巴');
insert into K_COUNTRY (country_code, country_name)
values ('CXR', '圣诞岛');
insert into K_COUNTRY (country_code, country_name)
values ('CYM', '开曼群岛');
insert into K_COUNTRY (country_code, country_name)
values ('CYP', '塞浦路斯');
insert into K_COUNTRY (country_code, country_name)
values ('CZE', '捷克共和国');
insert into K_COUNTRY (country_code, country_name)
values ('DEU', '德国');
insert into K_COUNTRY (country_code, country_name)
values ('DJI', '吉布提');
insert into K_COUNTRY (country_code, country_name)
values ('DMA', '多米尼加');
insert into K_COUNTRY (country_code, country_name)
values ('DNK', '丹麦');
insert into K_COUNTRY (country_code, country_name)
values ('DOM', '多米尼加共和国');
insert into K_COUNTRY (country_code, country_name)
values ('DZA', '阿尔及尔');
insert into K_COUNTRY (country_code, country_name)
values ('ECU', '厄瓜多尔');
insert into K_COUNTRY (country_code, country_name)
values ('EGY', '埃及');
insert into K_COUNTRY (country_code, country_name)
values ('ERI', '厄立特里亚');
insert into K_COUNTRY (country_code, country_name)
values ('ESH', '西撒哈拉');
insert into K_COUNTRY (country_code, country_name)
values ('ESP', '西班牙');
insert into K_COUNTRY (country_code, country_name)
values ('EST', '爱沙尼亚');
insert into K_COUNTRY (country_code, country_name)
values ('ETH', '埃塞俄比亚');
insert into K_COUNTRY (country_code, country_name)
values ('FIN', '芬兰');
insert into K_COUNTRY (country_code, country_name)
values ('FJI', '斐济');
insert into K_COUNTRY (country_code, country_name)
values ('FRA', '法国');
insert into K_COUNTRY (country_code, country_name)
values ('FRO', '法罗群岛');
insert into K_COUNTRY (country_code, country_name)
values ('FSM', '密克罗尼西亚');
insert into K_COUNTRY (country_code, country_name)
values ('GAB', '加蓬');
insert into K_COUNTRY (country_code, country_name)
values ('GBR', '英国');
insert into K_COUNTRY (country_code, country_name)
values ('GEO', '乔治亚州');
insert into K_COUNTRY (country_code, country_name)
values ('GGY', '格恩西岛');
insert into K_COUNTRY (country_code, country_name)
values ('GHA', '加纳');
insert into K_COUNTRY (country_code, country_name)
values ('GIB', '直布罗陀');
insert into K_COUNTRY (country_code, country_name)
values ('GIN', '几内亚');
insert into K_COUNTRY (country_code, country_name)
values ('GLP', '瓜德罗普岛');
insert into K_COUNTRY (country_code, country_name)
values ('GMB', '冈比亚');
insert into K_COUNTRY (country_code, country_name)
values ('GNB', '几内亚比绍');
insert into K_COUNTRY (country_code, country_name)
values ('GNQ', '赤道几内亚');
insert into K_COUNTRY (country_code, country_name)
values ('GRC', '希腊');
insert into K_COUNTRY (country_code, country_name)
values ('GRD', '格林纳达');
insert into K_COUNTRY (country_code, country_name)
values ('GRL', '格陵兰');
insert into K_COUNTRY (country_code, country_name)
values ('GTM', '危地马拉');
insert into K_COUNTRY (country_code, country_name)
values ('GUF', '法属圭亚那');
insert into K_COUNTRY (country_code, country_name)
values ('GUM', '关岛');
insert into K_COUNTRY (country_code, country_name)
values ('GUY', '圭亚那');
insert into K_COUNTRY (country_code, country_name)
values ('HKG', '中国香港');
insert into K_COUNTRY (country_code, country_name)
values ('HMD', '赫德和麦克唐纳群岛');
insert into K_COUNTRY (country_code, country_name)
values ('HND', '洪都拉斯');
insert into K_COUNTRY (country_code, country_name)
values ('HRV', '克罗地亚');
insert into K_COUNTRY (country_code, country_name)
values ('HTI', '海地');
insert into K_COUNTRY (country_code, country_name)
values ('HUN', '匈牙利');
insert into K_COUNTRY (country_code, country_name)
values ('IDN', '印度尼西亚');
insert into K_COUNTRY (country_code, country_name)
values ('IMN', '曼恩岛');
insert into K_COUNTRY (country_code, country_name)
values ('IND', '印度');
commit;

insert into K_COUNTRY (country_code, country_name)
values ('IOT', '英属印度洋领地');
insert into K_COUNTRY (country_code, country_name)
values ('SUR', '苏里南');
insert into K_COUNTRY (country_code, country_name)
values ('SVK', '斯洛伐克');
insert into K_COUNTRY (country_code, country_name)
values ('SVN', '斯洛文尼亚');
insert into K_COUNTRY (country_code, country_name)
values ('SWE', '瑞典');
insert into K_COUNTRY (country_code, country_name)
values ('SWZ', '斯威士兰');
insert into K_COUNTRY (country_code, country_name)
values ('SYC', '塞舌尔');
insert into K_COUNTRY (country_code, country_name)
values ('SYR', '叙利亚');
insert into K_COUNTRY (country_code, country_name)
values ('TCA', '特克斯和凯科斯群岛');
insert into K_COUNTRY (country_code, country_name)
values ('TCD', '乍得');
insert into K_COUNTRY (country_code, country_name)
values ('TGO', '多哥');
insert into K_COUNTRY (country_code, country_name)
values ('THA', '泰国');
insert into K_COUNTRY (country_code, country_name)
values ('TJK', '塔吉克斯坦');
insert into K_COUNTRY (country_code, country_name)
values ('TKL', '托克劳群岛');
insert into K_COUNTRY (country_code, country_name)
values ('TKM', '土库曼斯坦');
insert into K_COUNTRY (country_code, country_name)
values ('TLS', '东帝汶');
insert into K_COUNTRY (country_code, country_name)
values ('TON', '汤加');
insert into K_COUNTRY (country_code, country_name)
values ('TTO', '特立尼达和多巴哥');
insert into K_COUNTRY (country_code, country_name)
values ('TUN', '突尼斯');
insert into K_COUNTRY (country_code, country_name)
values ('TUR', '土耳其');
insert into K_COUNTRY (country_code, country_name)
values ('TUV', '图瓦卢');
insert into K_COUNTRY (country_code, country_name)
values ('TWN', '中国台湾');
insert into K_COUNTRY (country_code, country_name)
values ('TZA', '坦桑尼亚');
insert into K_COUNTRY (country_code, country_name)
values ('UGA', '乌干达');
insert into K_COUNTRY (country_code, country_name)
values ('UKR', '乌克兰');
insert into K_COUNTRY (country_code, country_name)
values ('UMI', '美属萨摩亚');
insert into K_COUNTRY (country_code, country_name)
values ('URY', '乌拉圭');
insert into K_COUNTRY (country_code, country_name)
values ('USA', '美国');
insert into K_COUNTRY (country_code, country_name)
values ('UZB', '乌兹别克斯坦');
insert into K_COUNTRY (country_code, country_name)
values ('VAT', '梵蒂冈');
insert into K_COUNTRY (country_code, country_name)
values ('VCT', '圣文森特和格林纳丁斯群岛');
insert into K_COUNTRY (country_code, country_name)
values ('VEN', '委内瑞拉');
insert into K_COUNTRY (country_code, country_name)
values ('VGB', '维尔京群岛（英属）');
insert into K_COUNTRY (country_code, country_name)
values ('VIR', '维尔京群岛（美属）');
insert into K_COUNTRY (country_code, country_name)
values ('VNM', '越南');
insert into K_COUNTRY (country_code, country_name)
values ('VUT', '瓦努阿图');
insert into K_COUNTRY (country_code, country_name)
values ('WLF', '瓦利斯群岛和富图纳群岛');
insert into K_COUNTRY (country_code, country_name)
values ('WSM', '萨摩亚群岛');
insert into K_COUNTRY (country_code, country_name)
values ('YEM', '也门');
insert into K_COUNTRY (country_code, country_name)
values ('ZAF', '南非');
insert into K_COUNTRY (country_code, country_name)
values ('ZMB', '赞比亚');
insert into K_COUNTRY (country_code, country_name)
values ('ZWE', '津巴布韦');
commit;

--初始化课程表
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('11', '品德与生活（社会）', '小学', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('12', '思想品德（政治）', '初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('13', '语文', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('14', '数学', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('15', '科学', '小学、初中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('16', '物理', '初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('17', '化学', '初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('18', '生物', '初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('19', '历史与社会', '初中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('20', '地理', '初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('21', '历史', '初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('22', '体育与健康', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('23', '艺术', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('24', '音乐', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('25', '美术', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('26', '信息技术', '普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('27', '通用技术', '普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('40', '外语', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('41', '英语', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('42', '日语', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('43', '俄语', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('49', '其他外国语', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('60', '综合实践活动', '小学、初中、普通高中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('61', '信息技术', '小学、初中', '1');
insert into TB_COURSE_INFO (course_code, course_name, course_remark, course_level)
values ('62', '劳动与技术', '小学、初中', '1');
commit;

--初始化课程等级
insert into K_COURSE_LEVEL (course_level_code, course_level_name)
values ('1', '国家课程');
insert into K_COURSE_LEVEL (course_level_code, course_level_name)
values ('2', '地方课程');
insert into K_COURSE_LEVEL (course_level_code, course_level_name)
values ('3', '校本课程');
commit;

--初始化星期
insert into K_DAY (day_code, day_name, day_remark)
values ('0', '星期日', null);
insert into K_DAY (day_code, day_name, day_remark)
values ('1', '星期一', null);
insert into K_DAY (day_code, day_name, day_remark)
values ('2', '星期二', null);
insert into K_DAY (day_code, day_name, day_remark)
values ('3', '星期三', null);
insert into K_DAY (day_code, day_name, day_remark)
values ('4', '星期四', null);
insert into K_DAY (day_code, day_name, day_remark)
values ('5', '星期五', null);
insert into K_DAY (day_code, day_name, day_remark)
values ('6', '星期六', null);
commit;

--初始化学位
insert into K_DEGREE (degree_code, degree_name)
values ('201', '哲学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('202', '经济学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('203', '法学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('204', '教育学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('205', '文学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('206', '历史学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('207', '理学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('208', '工学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('209', '农学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('210', '医学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('211', '军事学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('245', '临床医学博士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('248', '兽医博士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('250', '口腔医学博士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('212', '管理学博士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('3', '硕士');
insert into K_DEGREE (degree_code, degree_name)
values ('1', '名誉博士');
insert into K_DEGREE (degree_code, degree_name)
values ('2', '博士');
insert into K_DEGREE (degree_code, degree_name)
values ('401', '哲学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('402', '经济学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('403', '法学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('404', '教育学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('405', '文学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('406', '历史学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('407', '理学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('408', '工学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('409', '农学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('410', '医学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('411', '军事学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('412', '管理学学士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('444', '建筑学学士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('301', '哲学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('302', '经济学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('303', '法学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('304', '教育学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('305', '文学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('306', '历史学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('307', '理学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('308', '工学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('309', '农学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('310', '医学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('311', '军事学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('312', '管理学硕士学位');
insert into K_DEGREE (degree_code, degree_name)
values ('341', '法律硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('342', '教育硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('343', '工程硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('344', '建筑学硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('345', '临床学硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('346', '工商管理硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('347', '农业推广硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('348', '兽医硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('349', '公共管理硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('350', '口腔医学硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('351', '公共卫生硕士专业学位');
insert into K_DEGREE (degree_code, degree_name)
values ('352', ' 军事硕士专业学位');
commit;

--初始化学历
insert into K_EDUCATION (education_code, education_name)
values ('10', '研究生教育');
insert into K_EDUCATION (education_code, education_name)
values ('11', '博士研究生毕业');
insert into K_EDUCATION (education_code, education_name)
values ('12', '博士研究生结业');
insert into K_EDUCATION (education_code, education_name)
values ('13', '博士研究生肄业');
insert into K_EDUCATION (education_code, education_name)
values ('14', '硕士研究生毕业');
insert into K_EDUCATION (education_code, education_name)
values ('15', '硕士研究生结业');
insert into K_EDUCATION (education_code, education_name)
values ('16', '硕士研究生肄业');
insert into K_EDUCATION (education_code, education_name)
values ('17', '研究生班毕业');
insert into K_EDUCATION (education_code, education_name)
values ('18', '研究生班结业');
insert into K_EDUCATION (education_code, education_name)
values ('19', '研究生班肄业');
insert into K_EDUCATION (education_code, education_name)
values ('20', '大学本科教育');
insert into K_EDUCATION (education_code, education_name)
values ('21', '大学本科毕业');
insert into K_EDUCATION (education_code, education_name)
values ('22', '大学本科结业');
insert into K_EDUCATION (education_code, education_name)
values ('23', '大学本科肄业');
insert into K_EDUCATION (education_code, education_name)
values ('28', '大学普通班毕业');
insert into K_EDUCATION (education_code, education_name)
values ('30', '大学专科教育');
insert into K_EDUCATION (education_code, education_name)
values ('31', '大学专科毕业');
insert into K_EDUCATION (education_code, education_name)
values ('32', '大学专科结业');
insert into K_EDUCATION (education_code, education_name)
values ('33', '大学专科肄业');
insert into K_EDUCATION (education_code, education_name)
values ('40', '中等职业教育');
insert into K_EDUCATION (education_code, education_name)
values ('41', '中等专科毕业');
insert into K_EDUCATION (education_code, education_name)
values ('42', '中等专科结业');
insert into K_EDUCATION (education_code, education_name)
values ('43', '中等专科肄业');
insert into K_EDUCATION (education_code, education_name)
values ('44', '职业高中毕业');
insert into K_EDUCATION (education_code, education_name)
values ('45', '职业高中结业');
insert into K_EDUCATION (education_code, education_name)
values ('46', '职业高中肄业');
insert into K_EDUCATION (education_code, education_name)
values ('47', '技工学校毕业');
insert into K_EDUCATION (education_code, education_name)
values ('48', '技工学校结业');
insert into K_EDUCATION (education_code, education_name)
values ('49', '技工学校肄业');
insert into K_EDUCATION (education_code, education_name)
values ('60', '普通高级中学教育');
insert into K_EDUCATION (education_code, education_name)
values ('61', '普通高中毕业');
insert into K_EDUCATION (education_code, education_name)
values ('62', '普通高中结业');
insert into K_EDUCATION (education_code, education_name)
values ('63', '普通高中肄业');
insert into K_EDUCATION (education_code, education_name)
values ('70', '初级中学教育');
insert into K_EDUCATION (education_code, education_name)
values ('71', '初中毕业');
insert into K_EDUCATION (education_code, education_name)
values ('73', '初中肄业');
insert into K_EDUCATION (education_code, education_name)
values ('80', '小学教育');
insert into K_EDUCATION (education_code, education_name)
values ('81', '小学毕业');
insert into K_EDUCATION (education_code, education_name)
values ('83', '小学肄业');
insert into K_EDUCATION (education_code, education_name)
values ('90', '其他');
commit;

--初始化评价等级
insert into K_EVALUATE_LEVEL (e_lv_id, e_lv_name)
values ('1', '优');
insert into K_EVALUATE_LEVEL (e_lv_id, e_lv_name)
values ('2', '良');
insert into K_EVALUATE_LEVEL (e_lv_id, e_lv_name)
values ('3', '中');
insert into K_EVALUATE_LEVEL (e_lv_id, e_lv_name)
values ('4', '一般');
insert into K_EVALUATE_LEVEL (e_lv_id, e_lv_name)
values ('5', '差');
commit;

--初始化评价状态
insert into K_EVALUATE_STATUS (e_status_id, e_status_name)
values ('0', '未评价');
insert into K_EVALUATE_STATUS (e_status_id, e_status_name)
values ('1', '老师已评价');
insert into K_EVALUATE_STATUS (e_status_id, e_status_name)
values ('2', '已评价');
commit;

--初始化年级
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('1', '一年级', '小学、初中、高中、中职、普通高等教育、成人高等教育、研究生、特殊教育');
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('2', '二年级', '小学、初中、高中、中职、普通高等教育、成人高等教育、研究生、特殊教育');
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('3', '三年级', '小学、初中、高中、中职、普通高等教育、成人高等教育、特殊教育');
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('4', '三年级及以上', '研究生、特殊教育');
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('5', '四年级', '小学、初中、普通高等教育、成人高等教育、特殊教育');
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('6', '四年级及以上', '中职');
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('7', '五年级', '小学、成人高等教育、特殊教育');
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('8', '五年级及以上', '普通高等教育');
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('09', '九年级', null);
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('9', '六年级', '小学、特殊教育');
insert into K_GRADE (grade_code, grade_name, grade_remark)
values ('10', '六年级及以上', '小学、成人高等教育');
commit;

--初始化户口性质
insert into K_HOUSEHOLD (household_id, household_name)
values ('01', '城市');
insert into K_HOUSEHOLD (household_id, household_name)
values ('02', '县镇');
insert into K_HOUSEHOLD (household_id, household_name)
values ('03', '农村');
insert into K_HOUSEHOLD (household_id, household_name)
values ('04', '未有户籍登记');
insert into K_HOUSEHOLD (household_id, household_name)
values ('05', '台港澳人员');
insert into K_HOUSEHOLD (household_id, household_name)
values ('06', '外籍人员');
insert into K_HOUSEHOLD (household_id, household_name)
values ('07', '非农业');
insert into K_HOUSEHOLD (household_id, household_name)
values ('08', '居民');
commit;

--初始化进出校状态
insert into K_INOROUT (inorout_id, inorout_name)
values ('0', '出校');
insert into K_INOROUT (inorout_id, inorout_name)
values ('1', '入校');
commit;

--初始化学籍状态
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('01', '在读', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('02', '休学', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('03', '退学', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('04', '停学', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('05', '复学', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('06', '流失', '学生未办理正常手续就离开学校，流向社会');
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('07', '毕业', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('08', '结业', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('09', '肄业', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('10', '转学（转出）', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('11', '死亡', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('12', '保留入学资格', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('13', '公派出国', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('14', '开除', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('15', '下落不明', null);
insert into K_MAINTENANCE_STATUS (m_status_code, m_status_name, m_status_remark)
values ('99', '其他', null);
commit;

--初始化民族
insert into K_NATION (nation_code, nation_name)
values ('01', '汉族');
insert into K_NATION (nation_code, nation_name)
values ('10', '朝鲜族');
insert into K_NATION (nation_code, nation_name)
values ('11', '满族');
insert into K_NATION (nation_code, nation_name)
values ('12', '侗族');
insert into K_NATION (nation_code, nation_name)
values ('13', '瑶族');
insert into K_NATION (nation_code, nation_name)
values ('14', '白族');
insert into K_NATION (nation_code, nation_name)
values ('15', '土家族');
insert into K_NATION (nation_code, nation_name)
values ('16', '哈尼族');
insert into K_NATION (nation_code, nation_name)
values ('17', '哈萨克族');
insert into K_NATION (nation_code, nation_name)
values ('18', '傣族');
insert into K_NATION (nation_code, nation_name)
values ('19', '黎族');
insert into K_NATION (nation_code, nation_name)
values ('02', '蒙古族');
insert into K_NATION (nation_code, nation_name)
values ('20', '傈傈族');
insert into K_NATION (nation_code, nation_name)
values ('21', '佤族');
insert into K_NATION (nation_code, nation_name)
values ('22', '畲族');
insert into K_NATION (nation_code, nation_name)
values ('23', '高山族');
insert into K_NATION (nation_code, nation_name)
values ('24', '拉祜族');
insert into K_NATION (nation_code, nation_name)
values ('25', '水族');
insert into K_NATION (nation_code, nation_name)
values ('26', '东乡族');
insert into K_NATION (nation_code, nation_name)
values ('27', '纳西族');
insert into K_NATION (nation_code, nation_name)
values ('28', '景颇族');
insert into K_NATION (nation_code, nation_name)
values ('29', '柯尔克孜族');
insert into K_NATION (nation_code, nation_name)
values ('03', '回族');
insert into K_NATION (nation_code, nation_name)
values ('30', '土族');
insert into K_NATION (nation_code, nation_name)
values ('31', '达翰尔族');
insert into K_NATION (nation_code, nation_name)
values ('32', '仫佬族');
insert into K_NATION (nation_code, nation_name)
values ('33', '羌族');
insert into K_NATION (nation_code, nation_name)
values ('34', '布朗族');
insert into K_NATION (nation_code, nation_name)
values ('35', '撒拉族');
insert into K_NATION (nation_code, nation_name)
values ('36', '毛南族');
insert into K_NATION (nation_code, nation_name)
values ('37', '仡佬族');
insert into K_NATION (nation_code, nation_name)
values ('38', '锡伯族');
insert into K_NATION (nation_code, nation_name)
values ('39', '阿昌族');
insert into K_NATION (nation_code, nation_name)
values ('04', '藏族');
insert into K_NATION (nation_code, nation_name)
values ('40', '普米族');
insert into K_NATION (nation_code, nation_name)
values ('41', '塔吉克族');
insert into K_NATION (nation_code, nation_name)
values ('42', '怒族');
insert into K_NATION (nation_code, nation_name)
values ('43', '乌孜别克族');
insert into K_NATION (nation_code, nation_name)
values ('44', '俄罗斯族');
insert into K_NATION (nation_code, nation_name)
values ('45', '鄂温克族');
insert into K_NATION (nation_code, nation_name)
values ('46', '德昂族');
insert into K_NATION (nation_code, nation_name)
values ('47', '保安族');
insert into K_NATION (nation_code, nation_name)
values ('48', '裕固族');
insert into K_NATION (nation_code, nation_name)
values ('49', '京族');
insert into K_NATION (nation_code, nation_name)
values ('05', '维吾尔族');
insert into K_NATION (nation_code, nation_name)
values ('50', '塔塔尔族');
insert into K_NATION (nation_code, nation_name)
values ('51', '独龙族');
insert into K_NATION (nation_code, nation_name)
values ('52', '鄂伦春族');
insert into K_NATION (nation_code, nation_name)
values ('53', '赫哲族');
insert into K_NATION (nation_code, nation_name)
values ('54', '门巴族');
insert into K_NATION (nation_code, nation_name)
values ('55', '珞巴族');
insert into K_NATION (nation_code, nation_name)
values ('56', '基诺族');
insert into K_NATION (nation_code, nation_name)
values ('06', '苗族');
insert into K_NATION (nation_code, nation_name)
values ('07', '彝族');
insert into K_NATION (nation_code, nation_name)
values ('08', '壮族');
insert into K_NATION (nation_code, nation_name)
values ('09', '布依族');
insert into K_NATION (nation_code, nation_name)
values ('81', '穿青人族');
insert into K_NATION (nation_code, nation_name)
values ('97', '其他');
insert into K_NATION (nation_code, nation_name)
values ('98', '外国系统中国籍人士');
commit;

--初始化政治面貌
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('1', '中国共产党党员', '中共党员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('2', '中国共产党预备党员', '中共预备党员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('3', '中国共产主义青年团团员', '共青团员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('4', '中国国民党革命委员会会员', '民革会员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('5', '中国民主同盟盟员', '民盟盟员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('6', '中国民主建国会会员', '民建会员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('7', '中国民主促进会会员', '民进会员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('8', '中国农工民主党党员', '农工党党员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('9', '中国致公党党员', '致公党党员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('10', '九三学社社员', '九三学社社员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('11', '台湾民主自治同盟盟员', '台盟盟员');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('12', '无党派民主人士', '无党派民主人');
insert into K_POLITICAL (political_code, political_name, political_short_name)
values ('13', '群众', '群众');
commit;

--初始化职称
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('010', '高等学校教师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('011', '教授', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('012', '副教授', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('013', '讲师（高校）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('014', '助教（高校）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('020', '中等专业学校教师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('022', '高级讲师（中专）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('023', '讲师（中专）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('024', '助理讲师（中专）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('025', '教员（中专）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('030', '技工学校教师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('032', '高级讲师（技校）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('033', '讲师（技校）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('034', '助理讲师（技校）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('035', '教员（技校）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('040', '技工学校教师（实习指导）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('042', '高级实习指导教师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('043', '一级实习指导教师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('044', '二级实习指导教师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('045', '三级实习指导教师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('050', '中学教师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('052', '高级教师（中学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('053', '一级教师（中学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('054', '二级教师（中学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('055', '三级教师（中学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('070', '实验技术人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('072', '高级实验师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('073', '实验师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('074', '助理实验师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('075', '实验员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('080', '工程技术人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('082', '高级工程师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('083', '工程师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('084', '助理工程师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('085', '技术员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('090', '农业技术人员（农艺）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('091', '农业技术推广研究员(农艺)', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('092', '高级农艺师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('093', '农艺师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('094', '助理农艺师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('095', '农业技术员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('100', '农业技术人员（兽医）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('101', '农业技术推广研究员(兽医)', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('102', '高级兽医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('103', '兽医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('104', '助理兽医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('105', '兽医技术员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('110', '农业技术人员（畜牧）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('111', '农业技术推广研究员(畜牧)', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('112', '高级畜牧师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('113', '畜牧师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('114', '助理畜牧师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('115', '畜牧技术员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('120', '经济专业人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('122', '高级经济师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('123', '经济师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('124', '助理经济师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('125', '经济员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('130', '会计专业人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('132', '高级会计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('133', '会计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('134', '助理会计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('135', '会计员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('140', '统计专业人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('142', '高级统计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('143', '统计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('144', '助理统计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('145', '统计员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('150', '出版专业人员（编审）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('151', '编审', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('152', '副编审', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('153', '编辑', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('154', '助理编辑', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('160', '出版专业人员（技术编辑）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('163', '技术编辑', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('164', '助理技术编辑', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('165', '技术设计员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('170', '出版专业人员（校对）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('173', '一级校对', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('174', '二级校对', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('175', '三级校对', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('180', '翻译人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('181', '译审', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('182', '副译审', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('183', '翻译', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('184', '助理翻译', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('190', '新闻专业人员（记者）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('191', '高级记者', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('192', '主任记者', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('193', '记者', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('194', '助理记者', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('200', '新闻专业人员（编辑）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('201', '高级编辑', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('202', '主任编辑', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('203', '编辑', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('204', '助理编辑', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('220', '播音员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('221', '播音指导', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('222', '主任播音员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('223', '一级播音员', null);
commit;

insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('224', '二级播音员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('225', '三级播音员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('230', '卫生技术人员（医师）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('231', '主任医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('232', '副主任医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('233', '主治医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('234', '医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('235', '医士', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('240', '卫生技术人员（药剂）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('241', '主任药师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('242', '副主任药师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('243', '主管药师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('244', '药师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('245', '药士', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('250', '卫生技术人员（护理）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('251', '主任护师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('252', '副主任护师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('253', '主管护师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('254', '护师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('255', '护士', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('260', '卫生技术人员（技师）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('261', '主任技师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('262', '副主任技师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('263', '主管技师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('264', '技师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('265', '技士', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('270', '工艺美术人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('272', '高级工艺美术师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('273', '工艺美术师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('274', '助理工艺美术师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('275', '工艺美术员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('280', '艺术人员（演员）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('281', '一级演员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('282', '二级演员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('283', '三级演员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('284', '四级演员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('290', '艺术人员（演奏员）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('291', '一级演奏员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('292', '二级演奏员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('293', '三级演奏员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('294', '四级演奏员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('300', '艺术人员（编剧）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('301', '一级编剧', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('302', '二级编剧', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('303', '三级编剧', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('304', '四级编剧', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('310', '艺术人员（导演）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('311', '一级导演', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('312', '二级导演', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('313', '三级导演', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('314', '四级导演', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('320', '艺术人员（指挥）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('321', '一级指挥', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('322', '二级指挥', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('323', '三级指挥', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('324', '四级指挥', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('330', '艺术人员（作曲）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('331', '一级作曲', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('332', '二级作曲', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('333', '三级作曲', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('334', '四级作曲', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('340', '艺术人员（美术）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('341', '一级美术师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('342', '二级美术师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('343', '三级美术师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('344', '美术员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('350', '艺术人员（舞美设计）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('351', '一级舞美设计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('352', '二级舞美设计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('353', '三级舞美设计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('354', '舞美设计员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('360', '艺术人员（舞台技术）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('362', '主任舞台技师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('363', '舞台技师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('364', '舞台技术员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('370', '体育锻炼', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('371', '国家级教练', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('372', '高级教练', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('373', '一级教练', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('374', '二级教练', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('375', '三级教练', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('390', '律师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('391', '一级律师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('392', '二级律师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('393', '三级律师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('394', '四级律师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('395', '律师助理', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('400', '公证员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('401', '一级公证员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('402', '二级公证员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('403', '三级公证员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('404', '四级公证员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('405', '公证助理员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('410', '小学教师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('413', '高级教师（小学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('414', '一级教师（小学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('415', '二级教师（小学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('416', '三级教师（小学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('420', '船舶技术人员（驾驶）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('422', '高级船长', null);
commit;

insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('423', '船长（大副）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('424', '二副', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('425', '三副', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('430', '船舶技术人员（轮机）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('432', '高级轮机长', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('433', '轮机长（大管轮）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('434', '二管轮', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('435', '三管轮', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('440', '船舶技术人员（电机）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('442', '高级电机员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('443', '通用电机员（一等电机员)', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('444', '二等电机员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('450', '船舶技术人员（报务）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('452', '高级报务员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('453', '通用报务员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('454', '二等报务员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('455', '限用报务员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('460', '飞行技术人员（驾驶）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('462', '一级飞行员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('463', '二级飞行员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('464', '三级飞行员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('465', '四级飞行员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('470', '飞行技术人员（领航）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('472', '一级领航员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('473', '二级领航员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('474', '三级领航员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('475', '四级领航员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('480', '飞行技术人员（通信）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('482', '一级飞行通信员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('483', '二级飞行通信员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('484', '三级飞行通信员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('485', '四级飞行通信员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('490', '飞行技术人员（机械）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('492', '一级飞行机械员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('493', '二级飞行机械员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('494', '三级飞行机械员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('495', '四级飞行机械员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('500', '船舶技术人员（引航）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('502', '高级引航员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('503', '一、二级引航员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('504', '三、四级引航员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('610', '自然科学研究人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('611', '研究员（自然科学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('612', '副研究员（自然科学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('613', '助理研究员（自然科学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('614', '研究实习员（自然科学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('620', '社会科学研究人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('621', '研究员（社会科学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('622', '副研究员（社会科学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('623', '助理研究员（社会科学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('624', '研究实习员（社会科学）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('640', '图书、资料专业人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('641', '研究馆员（图书）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('642', '副研究馆员（图书）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('643', '馆员（图书）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('644', '助理馆员（图书）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('645', '管理员（图书）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('650', '文博专业人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('651', '研究馆员（文博）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('652', '副研究馆员（文博）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('653', '馆员（文博）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('654', '助理馆员（文博）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('655', '管理员（文博）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('660', '档案专业人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('661', '研究馆员（档案）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('662', '副研究馆员（档案）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('663', '馆员（档案）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('664', '助理馆员（档案）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('665', '管理员（档案）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('670', '群众文化专业人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('671', '研究馆员（群众文化）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('672', '副研究馆员（群众文化）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('673', '馆员（群众文化）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('674', '助理馆员（群众文化）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('675', '管理员（群众文化）', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('680', '审计专业人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('682', '高级审计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('683', '审计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('684', '助理审计师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('685', '审计员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('690', '法医专业人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('691', '主任法医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('692', '副主任法医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('693', '主检法医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('694', '法医师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('695', '法医士', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('980', '思想政治工作人员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('982', '高级政工师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('983', '政工师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('984', '助理政工师', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('985', '政工员', null);
insert into K_PROFESSIONAL (professional_code, professional_name, remark)
values ('999', '无', null);
commit;

--初始化行政区域表
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110000', '北京市', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110100', '市辖区', '110000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110101', '东城区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110102', '西城区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110103', '崇文区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110104', '宣武区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110105', '朝阳区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110106', '丰台区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110107', '石景山区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110108', '海淀区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110109', '门头沟区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110111', '房山区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110112', '通州区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110113', '顺义区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110114', '昌平区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110115', '大兴区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110116', '怀柔区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110117', '平谷区', '110100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110200', '市辖县', '110000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110228', '密云县', '110200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('110229', '延庆县', '110200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120000', '天津市', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120100', '市辖区', '120000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120101', '和平区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120102', '河东区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120103', '河西区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120104', '南开区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120105', '河北区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120106', '红桥区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120107', '塘沽区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120108', '汉沽区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120109', '大港区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120110', '东丽区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120111', '西青区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120112', '津南区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120113', '北辰区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120114', '武清区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120115', '宝坻区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120116', '滨海新区', '120100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120200', '市辖县', '120000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120221', '宁河县', '120200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120223', '静海县', '120200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('120225', '蓟县', '120200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130000', '河北省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130100', '石家庄市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130101', '市辖区', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130102', '长安区', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130103', '桥东区', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130104', '桥西区', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130105', '新华区', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130106', '郊区', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130107', '井陉矿区', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130108', '裕华区', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130121', '井陉县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130123', '正定县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130124', '栾城县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130125', '行唐县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130126', '灵寿县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130127', '高邑县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130128', '深泽县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130129', '赞皇县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130130', '无极县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130131', '平山县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130132', '元氏县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130133', '赵县', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130181', '辛集市', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130182', '藁城市', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130183', '晋州市', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130184', '新乐市', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130185', '鹿泉市', '130100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130200', '唐山市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130201', '市辖区', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130202', '路南区', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130203', '路北区', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130204', '古冶区', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130205', '开平区', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130206', '新区', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130207', '丰南区', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130208', '丰润区', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130209', '曹妃甸区', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130221', '丰润县', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130223', '滦县', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130224', '滦南县', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130225', '乐亭县', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130227', '迁西县', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130229', '玉田县', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130230', '唐海县', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130281', '遵化市', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130282', '丰南市', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130283', '迁安市', '130200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130300', '秦皇岛市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130301', '市辖区', '130300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130302', '海港区', '130300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130303', '山海关区', '130300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130304', '北戴河区', '130300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130321', '青龙满族自治县', '130300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130322', '昌黎县', '130300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130323', '抚宁县', '130300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130324', '卢龙县', '130300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130400', '邯郸市', '130000');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('130401', '市辖区', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130402', '邯山区', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130403', '丛台区', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130404', '复兴区', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130406', '峰峰矿区', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130421', '邯郸县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130423', '临漳县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130424', '成安县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130425', '大名县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130426', '涉县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130427', '磁县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130428', '肥乡县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130429', '永年县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130430', '邱县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130431', '鸡泽县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130432', '广平县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130433', '馆陶县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130434', '魏县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130435', '曲周县', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130481', '武安市', '130400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130500', '邢台市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130501', '市辖区', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130502', '桥东区', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130503', '桥西区', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130521', '邢台县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130522', '临城县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130523', '内丘县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130524', '柏乡县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130525', '隆尧县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130526', '任县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130527', '南和县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130528', '宁晋县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130529', '巨鹿县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130530', '新河县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130531', '广宗县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130532', '平乡县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130533', '威县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130534', '清河县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130535', '临西县', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130581', '南宫市', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130582', '沙河市', '130500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130600', '保定市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130601', '市辖区', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130602', '新市区', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130603', '北市区', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130604', '南市区', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130621', '满城县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130622', '清苑县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130623', '涞水县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130624', '阜平县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130625', '徐水县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130626', '定兴县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130627', '唐县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130628', '高阳县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130629', '容城县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130630', '涞源县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130631', '望都县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130632', '安新县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130633', '易县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130634', '曲阳县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130635', '蠡县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130636', '顺平县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130637', '博野县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130638', '雄县', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130681', '涿州市', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130682', '定州市', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130683', '安国市', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130684', '高碑店市', '130600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130700', '张家口市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130701', '市辖区', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130702', '桥东区', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130703', '桥西区', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130705', '宣化区', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130706', '下花园区', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130721', '宣化县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130722', '张北县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130723', '康保县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130724', '沽源县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130725', '尚义县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130726', '蔚县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130727', '阳原县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130728', '怀安县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130729', '万全县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130730', '怀来县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130731', '涿鹿县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130732', '赤城县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130733', '崇礼县', '130700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130800', '承德市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130801', '市辖区', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130802', '双桥区', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130803', '双滦区', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130804', '鹰手营子矿区', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141181', '孝义市', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141182', '汾阳市', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150000', '内蒙古自治区', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150100', '呼和浩特市', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150101', '市辖区', '150100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150102', '新城区', '150100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150103', '回民区', '150100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150104', '玉泉区', '150100');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('150105', '郊区', '150100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150121', '土默特左旗', '150100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150122', '托克托县', '150100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150123', '和林格尔县', '150100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150124', '清水河县', '150100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150125', '武川县', '150100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150200', '包头市', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150201', '市辖区', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150202', '东河区', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150203', '昆都仑区', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150204', '青山区', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150205', '石拐矿区', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150206', '白云矿区', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150207', '郊区', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150221', '土默特右旗', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150222', '固阳县', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150223', '达尔罕茂明安联合旗', '150200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150300', '乌海市', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150301', '市辖区', '150300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150302', '海勃湾区', '150300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150303', '海南区', '150300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150304', '乌达区', '150300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150400', '赤峰市', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150401', '市辖区', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150402', '红山区', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150403', '元宝山区', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150404', '松山区', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150421', '阿鲁科尔沁旗', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150422', '巴林左旗', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150423', '巴林右旗', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150424', '林西县', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150425', '克什克腾旗', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150426', '翁牛特旗', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150428', '喀喇沁旗', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150429', '宁城县', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150430', '敖汉旗', '150400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150500', '通辽市', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150501', '市辖区', '150500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150502', '科尔沁区', '150500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150521', '科尔沁左翼中旗', '150500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150522', '科尔沁左翼后旗', '150500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150523', '开鲁县', '150500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150524', '库伦旗', '150500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150525', '奈曼旗', '150500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150526', '扎鲁特旗', '150500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150581', '霍林郭勒市', '150500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150600', '鄂尔多斯市', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150601', '市辖区', '150600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150602', '东胜区', '150600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150621', '达拉特旗', '150600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150622', '准格尔旗', '150600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150623', '鄂托克前旗', '150600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150624', '鄂托克旗', '150600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150625', '杭锦旗', '150600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150626', '乌审旗', '150600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150627', '伊金霍洛旗', '150600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150700', '呼伦贝尔市', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150701', '市辖区', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150702', '海拉尔区', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150703', '扎赉诺尔区', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150721', '阿荣旗', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150722', '莫力达瓦达斡尔族自治旗', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150723', '鄂伦春自治旗', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150724', '鄂温克族自治旗', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150725', '陈巴尔虎旗', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150726', '新巴尔虎左旗', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150727', '新巴尔虎右旗', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150781', '满洲里市', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150782', '牙克石市', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150783', '扎兰屯市', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150784', '额尔古纳市', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150785', '根河市', '150700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150800', '巴彦淖尔市', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150801', '市辖区', '150800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150802', '临河区', '150800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150821', '五原县', '150800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150822', '磴口县', '150800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150823', '乌拉特前旗', '150800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150824', '乌拉特中旗', '150800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150825', '乌拉特后旗', '150800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150826', '杭锦后旗', '150800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150900', '乌兰察布市', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150901', '市辖区', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150902', '集宁区', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150921', '卓资县', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150922', '化德县', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150923', '商都县', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150924', '兴和县', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150925', '凉城县', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150926', '察哈尔右翼前旗', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150927', '察哈尔右翼中旗', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150928', '察哈尔右翼后旗', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150929', '四子王旗', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('150981', '丰镇市', '150900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152200', '兴安盟', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152201', '乌兰浩特市', '152200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152202', '阿尔山市', '152200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152221', '科尔沁右翼前旗', '152200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152222', '科尔沁右翼中旗', '152200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152223', '扎赉特旗', '152200');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('152224', '突泉县', '152200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152500', '锡林郭勒盟', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152501', '二连浩特市', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152502', '锡林浩特市', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152522', '阿巴嘎旗', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152523', '苏尼特左旗', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152524', '苏尼特右旗', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152525', '东乌珠穆沁旗', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152526', '西乌珠穆沁旗', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152527', '太仆寺旗', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152528', '镶黄旗', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152529', '正镶白旗', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152530', '正蓝旗', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152531', '多伦县', '152500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152900', '阿拉善盟', '150000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152921', '阿拉善左旗', '152900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152922', '阿拉善右旗', '152900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('152923', '额济纳旗', '152900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210000', '辽宁省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210100', '沈阳市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210101', '市辖区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210102', '和平区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210103', '沈河区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210104', '大东区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210105', '皇姑区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210106', '铁西区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210111', '苏家屯区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210112', '东陵区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210113', '新城子区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210114', '于洪区', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210122', '辽中县', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210123', '康平县', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210124', '法库县', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210181', '新民市', '210100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210200', '大连市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210201', '市辖区', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210202', '中山区', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210203', '西岗区', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210204', '沙河口区', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210211', '甘井子区', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210212', '旅顺口区', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210213', '金州区', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210224', '长海县', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210281', '瓦房店市', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210282', '普兰店市', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210283', '庄河市', '210200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210300', '鞍山市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210301', '市辖区', '210300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210302', '铁东区', '210300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210303', '铁西区', '210300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210304', '立山区', '210300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210311', '千山区', '210300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210321', '台安县', '210300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210323', '岫岩满族自治县', '210300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210381', '海城市', '210300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210400', '抚顺市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210401', '市辖区', '210400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210402', '新抚区', '210400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210403', '露天区', '210400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210404', '望花区', '210400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210411', '顺城区', '210400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210421', '抚顺县', '210400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210422', '新宾满族自治县', '210400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210423', '清原满族自治县', '210400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210500', '本溪市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210501', '市辖区', '210500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210502', '平山区', '210500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210503', '溪湖区', '210500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210504', '明山区', '210500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210505', '南芬区', '210500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210521', '本溪满族自治县', '210500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210522', '桓仁满族自治县', '210500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210600', '丹东市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210601', '市辖区', '210600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230221', '龙江县', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230223', '依安县', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230224', '泰来县', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230225', '甘南县', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230227', '富裕县', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230229', '克山县', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230230', '克东县', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230231', '拜泉县', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230281', '讷河市', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230300', '鸡西市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230301', '市辖区', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230302', '鸡冠区', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230303', '恒山区', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230304', '滴道区', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230305', '梨树区', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230306', '城子河区', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230307', '麻山区', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230321', '鸡东县', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230381', '虎林市', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230382', '密山市', '230300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230400', '鹤岗市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230401', '市辖区', '230400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230402', '向阳区', '230400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230403', '工农区', '230400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230404', '南山区', '230400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230405', '兴安区', '230400');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('230406', '东山区', '230400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230407', '兴山区', '230400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230421', '萝北县', '230400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230422', '绥滨县', '230400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230500', '双鸭山市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230501', '市辖区', '230500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230502', '尖山区', '230500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230503', '岭东区', '230500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230505', '四方台区', '230500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230506', '宝山区', '230500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230521', '集贤县', '230500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230522', '友谊县', '230500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230523', '宝清县', '230500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230524', '饶河县', '230500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230600', '大庆市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230601', '市辖区', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230602', '萨尔图区', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230603', '龙凤区', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230604', '让胡路区', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230605', '红岗区', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230606', '大同区', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230621', '肇州县', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230622', '肇源县', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230623', '林甸县', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230624', '杜尔伯特蒙古族自治县', '230600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230700', '伊春市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230701', '市辖区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230702', '伊春区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230703', '南岔区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230704', '友好区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230705', '西林区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230706', '翠峦区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230707', '新青区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230708', '美溪区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230709', '金山屯区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230710', '五营区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230711', '乌马河区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230712', '汤旺河区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230713', '带岭区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230714', '乌伊岭区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230715', '红星区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230716', '上甘岭区', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230722', '嘉荫县', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230781', '铁力市', '230700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230800', '佳木斯市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230801', '市辖区', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230802', '永红区', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230803', '向阳区', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230804', '前进区', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230805', '东风区', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230811', '郊区', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230822', '桦南县', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230826', '桦川县', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230828', '汤原县', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230833', '抚远县', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230881', '同江市', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230882', '富锦市', '230800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230900', '七台河市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230901', '市辖区', '230900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230902', '新兴区', '230900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230903', '桃山区', '230900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230904', '茄子河区', '230900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230921', '勃利县', '230900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231000', '牡丹江市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231001', '市辖区', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231002', '东安区', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231003', '阳明区', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231004', '爱民区', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231005', '西安区', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231024', '东宁县', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231025', '林口县', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231081', '绥芬河市', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231083', '海林市', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231084', '宁安市', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231085', '穆棱市', '231000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231100', '黑河市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231101', '市辖区', '231100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231102', '爱辉区', '231100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231121', '嫩江县', '231100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231123', '逊克县', '231100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231124', '孙吴县', '231100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231181', '北安市', '231100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231182', '五大连池市', '231100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231200', '绥化市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231201', '市辖区', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231202', '北林区', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231221', '望奎县', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231222', '兰西县', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231223', '青冈县', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231224', '庆安县', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231225', '明水县', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231226', '绥棱县', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231281', '安达市', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231282', '肇东市', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231283', '海伦市', '231200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231300', '森林工业总局', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('231400', '农垦总局', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('232700', '大兴安岭地区', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('232721', '呼玛县', '232700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('232722', '塔河县', '232700');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('232723', '漠河县', '232700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310000', '上海市', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310100', '市辖区', '310000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310101', '黄浦区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310102', '南市区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310103', '卢湾区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310104', '徐汇区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310105', '长宁区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310106', '静安区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310107', '普陀区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310108', '闸北区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310109', '虹口区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310110', '杨浦区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310112', '闵行区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310113', '宝山区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310114', '嘉定区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310115', '浦东新区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310116', '金山区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310117', '松江区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310118', '青浦区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310119', '南汇区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310120', '奉贤区', '310100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310200', '市辖县', '310000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('310230', '崇明县', '310200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320000', '江苏省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320100', '南京市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320101', '市辖区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320102', '玄武区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320103', '白下区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320104', '秦淮区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320105', '建邺区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320106', '鼓楼区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320107', '下关区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320111', '浦口区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320112', '大厂区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320113', '栖霞区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320114', '雨花台区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320115', '江宁区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320116', '六合区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320117', '溧水区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320118', '高淳区', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320121', '江宁县', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320122', '江浦县', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320123', '六合县', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320124', '溧水县', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320125', '高淳县', '320100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320200', '无锡市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320201', '市辖区', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320202', '崇安区', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320203', '南长区', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320204', '北塘区', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320205', '锡山区', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320206', '惠山区', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320211', '郊区', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320212', '马山区', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320281', '江阴市', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320282', '宜兴市', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320283', '锡山市', '320200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320300', '徐州市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320301', '市辖区', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320302', '鼓楼区', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320303', '云龙区', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320304', '九里区', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210602', '元宝区', '210600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210603', '振兴区', '210600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210604', '振安区', '210600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210624', '宽甸满族自治县', '210600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210681', '东港市', '210600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210682', '凤城市', '210600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210700', '锦州市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210701', '市辖区', '210700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210702', '古塔区', '210700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210703', '凌河区', '210700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210711', '太和区', '210700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210726', '黑山县', '210700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210727', '义县', '210700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210781', '凌海市', '210700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210782', '北宁市', '210700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210800', '营口市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210801', '市辖区', '210800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210802', '站前区', '210800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210803', '西市区', '210800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210804', '鲅鱼圈区', '210800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210811', '老边区', '210800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210881', '盖州市', '210800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210882', '大石桥市', '210800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210900', '阜新市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210901', '市辖区', '210900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210902', '海州区', '210900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210903', '新邱区', '210900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210904', '太平区', '210900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210905', '清河门区', '210900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210911', '细河区', '210900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210921', '阜新蒙古族自治县', '210900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('210922', '彰武县', '210900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211000', '辽阳市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211001', '市辖区', '211000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211002', '白塔区', '211000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211003', '文圣区', '211000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211004', '宏伟区', '211000');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('211005', '弓长岭区', '211000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211011', '太子河区', '211000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211021', '辽阳县', '211000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211081', '灯塔市', '211000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211100', '盘锦市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211101', '市辖区', '211100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211102', '双台子区', '211100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211103', '兴隆台区', '211100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211121', '大洼县', '211100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211122', '盘山县', '211100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211200', '铁岭市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211201', '市辖区', '211200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211202', '银州区', '211200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211204', '清河区', '211200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211221', '铁岭县', '211200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211223', '西丰县', '211200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211224', '昌图县', '211200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211281', '铁法市', '211200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211282', '开原市', '211200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211300', '朝阳市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211301', '市辖区', '211300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211302', '双塔区', '211300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211303', '龙城区', '211300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211321', '朝阳县', '211300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211322', '建平县', '211300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211324', '喀喇沁左翼蒙古族自治县', '211300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211381', '北票市', '211300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211382', '凌源市', '211300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211400', '葫芦岛市', '210000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211401', '市辖区', '211400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211402', '连山区', '211400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211403', '龙港区', '211400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211404', '南票区', '211400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211421', '绥中县', '211400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211422', '建昌县', '211400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('211481', '兴城市', '211400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220000', '吉林省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220100', '长春市', '220000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220101', '市辖区', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220102', '南关区', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220103', '宽城区', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220104', '朝阳区', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220105', '二道区', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220106', '绿园区', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220112', '双阳区', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220122', '农安县', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220181', '九台市', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220182', '榆树市', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220183', '德惠市', '220100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220200', '吉林市', '220000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220201', '市辖区', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220202', '昌邑区', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220203', '龙潭区', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220204', '船营区', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220211', '丰满区', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220221', '永吉县', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220281', '蛟河市', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220282', '桦甸市', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220283', '舒兰市', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220284', '磐石市', '220200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220300', '四平市', '220000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220301', '市辖区', '220300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220302', '铁西区', '220300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220303', '铁东区', '220300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220322', '梨树县', '220300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220323', '伊通满族自治县', '220300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220381', '公主岭市', '220300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220382', '双辽市', '220300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220400', '辽源市', '220000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220401', '市辖区', '220400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220402', '龙山区', '220400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220403', '西安区', '220400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220421', '东丰县', '220400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220422', '东辽县', '220400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220500', '通化市', '220000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220501', '市辖区', '220500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220502', '东昌区', '220500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220503', '二道江区', '220500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220521', '通化县', '220500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220523', '辉南县', '220500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220524', '柳河县', '220500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220581', '梅河口市', '220500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220582', '集安市', '220500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220600', '白山市', '220000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220601', '市辖区', '220600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220602', '八道江区', '220600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220605', '江源区', '220600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220621', '抚松县', '220600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220622', '靖宇县', '220600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220623', '长白朝鲜族自治县', '220600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220625', '江源县', '220600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220681', '临江市', '220600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220700', '松原市', '220000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220701', '市辖区', '220700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220702', '宁江区', '220700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220721', '前郭尔罗斯蒙古族自治县', '220700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220722', '长岭县', '220700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220723', '乾安县', '220700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220724', '扶余县', '220700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220781', '扶余市', '220700');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('220800', '白城市', '220000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220801', '市辖区', '220800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220802', '洮北区', '220800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220821', '镇赉县', '220800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220822', '通榆县', '220800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220881', '洮南市', '220800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('220882', '大安市', '220800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('222400', '延边朝鲜族自治州', '220000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('222401', '延吉市', '222400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('222402', '图们市', '222400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('222403', '敦化市', '222400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('222404', '珲春市', '222400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('222405', '龙井市', '222400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('222406', '和龙市', '222400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('222424', '汪清县', '222400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('222426', '安图县', '222400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230000', '黑龙江省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230100', '哈尔滨市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230101', '市辖区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230102', '道里区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230103', '南岗区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230104', '道外区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230105', '太平区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230106', '香坊区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230107', '动力区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230108', '平房区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230109', '松北区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230110', '香坊区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230111', '呼兰区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230112', '阿城区', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230121', '呼兰县', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230123', '依兰县', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230124', '方正县', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230125', '宾县', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230126', '巴彦县', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230127', '木兰县', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230128', '通河县', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230129', '延寿县', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230181', '阿城市', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230182', '双城市', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230183', '尚志市', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230184', '五常市', '230100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230200', '齐齐哈尔市', '230000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230201', '市辖区', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230202', '龙沙区', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230203', '建华区', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230204', '铁锋区', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230205', '昂昂溪区', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230206', '富拉尔基区', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230207', '碾子山区', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('230208', '梅里斯达斡尔族区', '230200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130821', '承德县', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130822', '兴隆县', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130823', '平泉县', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130824', '滦平县', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130825', '隆化县', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130826', '丰宁满族自治县', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130827', '宽城满族自治县', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130828', '围场满族蒙古族自治县', '130800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130900', '沧州市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130901', '市辖区', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130902', '新华区', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130903', '运河区', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130921', '沧县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130922', '青县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130923', '东光县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130924', '海兴县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130925', '盐山县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130926', '肃宁县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130927', '南皮县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130928', '吴桥县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130929', '献县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130930', '孟村回族自治县', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130981', '泊头市', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130982', '任丘市', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130983', '黄骅市', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('130984', '河间市', '130900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131000', '廊坊市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131001', '市辖区', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131002', '安次区', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131003', '广阳区', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131022', '固安县', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131023', '永清县', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131024', '香河县', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131025', '大城县', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131026', '文安县', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131028', '大厂回族自治县', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131081', '霸州市', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131082', '三河市', '131000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131100', '衡水市', '130000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131101', '市辖区', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131102', '桃城区', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131121', '枣强县', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131122', '武邑县', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131123', '武强县', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131124', '饶阳县', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131125', '安平县', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131126', '故城县', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131127', '景县', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131128', '阜城县', '131100');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('131181', '冀州市', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('131182', '深州市', '131100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140000', '山西省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140100', '太原市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140101', '市辖区', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140105', '小店区', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140106', '迎泽区', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140107', '杏花岭区', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140108', '尖草坪区', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140109', '万柏林区', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140110', '晋源区', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140121', '清徐县', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140122', '阳曲县', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140123', '娄烦县', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140181', '古交市', '140100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140200', '大同市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140201', '市辖区', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140202', '城区', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140203', '矿区', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140211', '南郊区', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140212', '新荣区', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140221', '阳高县', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140222', '天镇县', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140223', '广灵县', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140224', '灵丘县', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140225', '浑源县', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140226', '左云县', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140227', '大同县', '140200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140300', '阳泉市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140301', '市辖区', '140300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140302', '城区', '140300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140303', '矿区', '140300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140311', '郊区', '140300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140321', '平定县', '140300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140322', '盂县', '140300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140400', '长治市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140401', '市辖区', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140402', '城区', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140411', '郊区', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140421', '长治县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140423', '襄垣县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140424', '屯留县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140425', '平顺县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140426', '黎城县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140427', '壶关县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140428', '长子县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140429', '武乡县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140430', '沁县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140431', '沁源县', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140481', '潞城市', '140400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140500', '晋城市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140501', '市辖区', '140500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140502', '城区', '140500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140521', '沁水县', '140500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140522', '阳城县', '140500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140524', '陵川县', '140500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140525', '泽州县', '140500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140581', '高平市', '140500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140600', '朔州市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140601', '市辖区', '140600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140602', '朔城区', '140600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140603', '平鲁区', '140600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140621', '山阴县', '140600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140622', '应县', '140600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140623', '右玉县', '140600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140624', '怀仁县', '140600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140700', '晋中市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140701', '市辖区', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140702', '榆次区', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140721', '榆社县', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140722', '左权县', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140723', '和顺县', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140724', '昔阳县', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140725', '寿阳县', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140726', '太谷县', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140727', '祁县', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140728', '平遥县', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140729', '灵石县', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140781', '介休市', '140700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140800', '运城市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140801', '市辖区', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140802', '盐湖区', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140821', '临猗县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140822', '万荣县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140823', '闻喜县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140824', '稷山县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140825', '新绛县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140826', '绛县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140827', '垣曲县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140828', '夏县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140829', '平陆县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140830', '芮城县', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140881', '永济市', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140882', '河津市', '140800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140900', '忻州市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140901', '市辖区', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140902', '忻府区', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140921', '定襄县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140922', '五台县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140923', '代县', '140900');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('140924', '繁峙县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140925', '宁武县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140926', '静乐县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140927', '神池县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140928', '五寨县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140929', '岢岚县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140930', '河曲县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140931', '保德县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140932', '偏关县', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('140981', '原平市', '140900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141000', '临汾市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141001', '市辖区', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141002', '尧都区', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141021', '曲沃县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141022', '翼城县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141023', '襄汾县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141024', '洪洞县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141025', '古县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141026', '安泽县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141027', '浮山县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141028', '吉县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141029', '乡宁县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141030', '大宁县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141031', '隰县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141032', '永和县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141033', '蒲县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141034', '汾西县', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141081', '侯马市', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141082', '霍州市', '141000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141100', '吕梁市', '140000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141101', '市辖区', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141102', '离石区', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141121', '文水县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141122', '交城县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141123', '兴县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141124', '临县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141125', '柳林县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141126', '石楼县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141127', '岚县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141128', '方山县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141129', '中阳县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('141130', '交口县', '141100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330824', '开化县', '330800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330825', '龙游县', '330800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330881', '江山市', '330800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330900', '舟山市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330901', '市辖区', '330900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330902', '定海区', '330900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330903', '普陀区', '330900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330921', '岱山县', '330900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330922', '嵊泗县', '330900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331000', '台州市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331001', '市辖区', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331002', '椒江区', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331003', '黄岩区', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331004', '路桥区', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331021', '玉环县', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331022', '三门县', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331023', '天台县', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331024', '仙居县', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331081', '温岭市', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331082', '临海市', '331000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331100', '丽水市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331101', '市辖区', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331102', '莲都区', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331121', '青田县', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331122', '缙云县', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331123', '遂昌县', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331124', '松阳县', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331125', '云和县', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331126', '庆元县', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331127', '景宁畲族自治县', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('331181', '龙泉市', '331100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340000', '安徽省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340100', '合肥市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340101', '市辖区', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340102', '东市区', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340103', '中市区', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340104', '西市区', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340111', '郊区', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340121', '长丰县', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340122', '肥东县', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340123', '肥西县', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340124', '庐江县', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340181', '巢湖市', '340100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340200', '芜湖市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340201', '市辖区', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340202', '镜湖区', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340203', '马塘区', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340204', '新芜区', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340207', '鸠江区', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340208', '三山区', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340221', '芜湖县', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340222', '繁昌县', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340223', '南陵县', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340225', '无为县', '340200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340300', '蚌埠市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340301', '市辖区', '340300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340302', '东市区', '340300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340303', '中市区', '340300');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('340304', '西市区', '340300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340311', '郊区', '340300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340321', '怀远县', '340300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340322', '五河县', '340300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340323', '固镇县', '340300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340400', '淮南市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340401', '市辖区', '340400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340402', '大通区', '340400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340403', '田家庵区', '340400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340404', '谢家集区', '340400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340405', '八公山区', '340400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340406', '潘集区', '340400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340421', '凤台县', '340400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340500', '马鞍山市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340501', '市辖区', '340500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340502', '金家庄区', '340500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340503', '花山区', '340500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340504', '雨山区', '340500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340505', '向山区', '340500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340506', '博望区', '340500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340521', '当涂县', '340500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340522', '含山县', '340500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340523', '和县', '340500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340600', '淮北市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340601', '市辖区', '340600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340602', '杜集区', '340600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340603', '相山区', '340600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340604', '烈山区', '340600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340621', '濉溪县', '340600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340700', '铜陵市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340701', '市辖区', '340700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340702', '铜官山区', '340700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340703', '狮子山区', '340700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340711', '郊区', '340700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340721', '铜陵县', '340700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340800', '安庆市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340801', '市辖区', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340802', '迎江区', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340803', '大观区', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340811', '郊区', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340822', '怀宁县', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340823', '枞阳县', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340824', '潜山县', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340825', '太湖县', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340826', '宿松县', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340827', '望江县', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340828', '岳西县', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('340881', '桐城市', '340800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341000', '黄山市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341001', '市辖区', '341000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341002', '屯溪区', '341000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341003', '黄山区', '341000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341004', '徽州区', '341000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341021', '歙县', '341000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341022', '休宁县', '341000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341023', '黟县', '341000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341024', '祁门县', '341000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341100', '滁州市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341101', '市辖区', '341100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341102', '琅琊区', '341100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341103', '南谯区', '341100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341122', '来安县', '341100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341124', '全椒县', '341100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341125', '定远县', '341100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341126', '凤阳县', '341100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341181', '天长市', '341100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341182', '明光市', '341100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341200', '阜阳市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341201', '市辖区', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341202', '颍州区', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341203', '颍东区', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341204', '颍泉区', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341221', '临泉县', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341222', '太和县', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341223', '涡阳县', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341224', '蒙城县', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341225', '阜南县', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341226', '颍上县', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341227', '利辛县', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341281', '亳州市', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341282', '界首市', '341200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341300', '宿州市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341301', '市辖区', '341300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341302', '墉桥区', '341300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341321', '砀山县', '341300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341322', '萧县', '341300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341323', '灵璧县', '341300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341324', '泗县', '341300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341500', '六安市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341501', '市辖区', '341500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341502', '金安区', '341500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341503', '裕安区', '341500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341521', '寿县', '341500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341522', '霍邱县', '341500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341523', '舒城县', '341500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341524', '金寨县', '341500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341525', '霍山县', '341500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341600', '亳州市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341601', '市辖区', '341600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341602', '谯城区', '341600');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('341621', '涡阳县', '341600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341622', '蒙城县', '341600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341623', '利辛县', '341600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341700', '池州市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341701', '市辖区', '341700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341702', '贵池区', '341700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341721', '东至县', '341700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341722', '石台县', '341700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341723', '青阳县', '341700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341800', '宣城市', '340000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341801', '市辖区', '341800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341802', '宣州区', '341800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341821', '郎溪县', '341800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341822', '广德县', '341800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341823', '泾县', '341800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341824', '绩溪县', '341800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341825', '旌德县', '341800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('341881', '宁国市', '341800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350000', '福建省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350100', '福州市', '350000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350101', '市辖区', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350102', '鼓楼区', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350103', '台江区', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350104', '仓山区', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350105', '马尾区', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350111', '晋安区', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350121', '闽侯县', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350122', '连江县', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350123', '罗源县', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350124', '闽清县', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350125', '永泰县', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350128', '平潭县', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350181', '福清市', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350182', '长乐市', '350100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350200', '厦门市', '350000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350201', '市辖区', '350200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350203', '思明区', '350200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350204', '开元区', '350200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350205', '杏林区', '350200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350206', '湖里区', '350200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350211', '集美区', '350200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350212', '同安区', '350200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350213', '翔安区', '350200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350300', '莆田市', '350000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350301', '市辖区', '350300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350302', '城厢区', '350300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350303', '涵江区', '350300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350304', '荔城区', '350300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350305', '秀屿区', '350300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350322', '仙游县', '350300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350400', '三明市', '350000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350401', '市辖区', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350402', '梅列区', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350403', '三元区', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350421', '明溪县', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350423', '清流县', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350424', '宁化县', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350425', '大田县', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350426', '尤溪县', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350427', '沙县', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350428', '将乐县', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350429', '泰宁县', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350430', '建宁县', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350481', '永安市', '350400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350500', '泉州市', '350000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350501', '市辖区', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350502', '鲤城区', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350503', '丰泽区', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350504', '洛江区', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350505', '泉港区', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350521', '惠安县', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350524', '安溪县', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350525', '永春县', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350526', '德化县', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350527', '金门县', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350581', '石狮市', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350582', '晋江市', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350583', '南安市', '350500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350600', '漳州市', '350000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350601', '市辖区', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350602', '芗城区', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350603', '龙文区', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350622', '云霄县', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350623', '漳浦县', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350624', '诏安县', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350625', '长泰县', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350626', '东山县', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350627', '南靖县', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350628', '平和县', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350629', '华安县', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350681', '龙海市', '350600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350700', '南平市', '350000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350701', '市辖区', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350702', '延平区', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350721', '顺昌县', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350722', '浦城县', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350723', '光泽县', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350724', '松溪县', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350725', '政和县', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350781', '邵武市', '350700');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('350782', '武夷山市', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350783', '建瓯市', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350784', '建阳市', '350700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350800', '龙岩市', '350000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350801', '市辖区', '350800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350802', '新罗区', '350800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350821', '长汀县', '350800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350822', '永定县', '350800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350823', '上杭县', '350800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350824', '武平县', '350800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350825', '连城县', '350800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350881', '漳平市', '350800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350900', '宁德市', '350000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350901', '市辖区', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350902', '蕉城区', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350921', '霞浦县', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350922', '古田县', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350923', '屏南县', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350924', '寿宁县', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350925', '周宁县', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350926', '柘荣县', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350981', '福安市', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('350982', '福鼎市', '350900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360000', '江西省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360100', '南昌市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360101', '市辖区', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360102', '东湖区', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360103', '西湖区', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360104', '青云谱区', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360105', '湾里区', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360111', '郊区', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360121', '南昌县', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360122', '新建县', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360123', '安义县', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360124', '进贤县', '360100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360200', '景德镇市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360201', '市辖区', '360200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360202', '昌江区', '360200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360203', '珠山区', '360200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360222', '浮梁县', '360200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360281', '乐平市', '360200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360300', '萍乡市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360301', '市辖区', '360300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360302', '安源区', '360300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360313', '湘东区', '360300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360321', '莲花县', '360300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360322', '上栗县', '360300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360323', '芦溪县', '360300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360400', '九江市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360401', '市辖区', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360402', '庐山区', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360403', '浔阳区', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360421', '九江县', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360423', '武宁县', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360424', '修水县', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360425', '永修县', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360426', '德安县', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360427', '星子县', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360428', '都昌县', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360429', '湖口县', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360430', '彭泽县', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360481', '瑞昌市', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360482', '共青城市', '360400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360500', '新余市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360501', '市辖区', '360500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360502', '渝水区', '360500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360521', '分宜县', '360500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360600', '鹰潭市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360601', '市辖区', '360600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360602', '月湖区', '360600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360622', '余江县', '360600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360681', '贵溪市', '360600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360700', '赣州市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360701', '市辖区', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360702', '章贡区', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360721', '赣县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360722', '信丰县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360723', '大余县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360724', '上犹县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360725', '崇义县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360726', '安远县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360727', '龙南县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360728', '定南县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360729', '全南县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360730', '宁都县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360731', '于都县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360732', '兴国县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360733', '会昌县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360734', '寻乌县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360735', '石城县', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360781', '瑞金市', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360782', '南康市', '360700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360800', '吉安市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360801', '市辖区', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360802', '吉州区', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360803', '青原区', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360821', '吉安县', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360822', '吉水县', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360823', '峡江县', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360824', '新干县', '360800');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('360825', '永丰县', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360826', '泰和县', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360827', '遂川县', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360828', '万安县', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360829', '安福县', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360830', '永新县', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360881', '井冈山市', '360800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360900', '宜春市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360901', '市辖区', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360902', '袁州区', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360921', '奉新县', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360922', '万载县', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360923', '上高县', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360924', '宜丰县', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360925', '靖安县', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360926', '铜鼓县', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360981', '丰城市', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360982', '樟树市', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('360983', '高安市', '360900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361000', '抚州市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361001', '市辖区', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361002', '临川区', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361021', '南城县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361022', '黎川县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361023', '南丰县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440606', '顺德区', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440607', '三水区', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440608', '高明区', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440681', '顺德市', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440682', '南海市', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440683', '三水市', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440684', '高明市', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440700', '江门市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440701', '市辖区', '440700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440703', '蓬江区', '440700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440704', '江海区', '440700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440705', '新会区', '440700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440781', '台山市', '440700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440782', '新会市', '440700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440783', '开平市', '440700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440784', '鹤山市', '440700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440785', '恩平市', '440700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440800', '湛江市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440801', '市辖区', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440802', '赤坎区', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440803', '霞山区', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440804', '坡头区', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440811', '麻章区', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440823', '遂溪县', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440825', '徐闻县', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440881', '廉江市', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440882', '雷州市', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440883', '吴川市', '440800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440900', '茂名市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440901', '市辖区', '440900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440902', '茂南区', '440900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440903', '茂港区', '440900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440923', '电白县', '440900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440981', '高州市', '440900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440982', '化州市', '440900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440983', '信宜市', '440900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441200', '肇庆市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441201', '市辖区', '441200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441202', '端州区', '441200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441203', '鼎湖区', '441200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441223', '广宁县', '441200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441224', '怀集县', '441200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441225', '封开县', '441200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441226', '德庆县', '441200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441283', '高要市', '441200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441284', '四会市', '441200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441300', '惠州市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441301', '市辖区', '441300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441302', '惠城区', '441300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441303', '惠阳区', '441300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441322', '博罗县', '441300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441323', '惠东县', '441300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441324', '龙门县', '441300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441381', '惠阳市', '441300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441400', '梅州市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441401', '市辖区', '441400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441402', '梅江区', '441400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441421', '梅县', '441400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441422', '大埔县', '441400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441423', '丰顺县', '441400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441424', '五华县', '441400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441426', '平远县', '441400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441427', '蕉岭县', '441400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441481', '兴宁市', '441400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441500', '汕尾市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441501', '市辖区', '441500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441502', '城区', '441500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441521', '海丰县', '441500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441523', '陆河县', '441500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441581', '陆丰市', '441500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441600', '河源市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441601', '市辖区', '441600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441602', '源城区', '441600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441621', '紫金县', '441600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441622', '龙川县', '441600');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('441623', '连平县', '441600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441624', '和平县', '441600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441625', '东源县', '441600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441700', '阳江市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441701', '市辖区', '441700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441702', '江城区', '441700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441721', '阳西县', '441700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441723', '阳东县', '441700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441781', '阳春市', '441700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441800', '清远市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441801', '市辖区', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441802', '清城区', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441803', '清新区', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441821', '佛冈县', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441823', '阳山县', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441825', '连山壮族瑶族自治县', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441826', '连南瑶族自治县', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441827', '清新县', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441881', '英德市', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441882', '连州市', '441800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441900', '东莞市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('441901', '市辖区', '441900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('442000', '中山市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('442001', '市辖区', '442000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445100', '潮州市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445101', '市辖区', '445100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445102', '湘桥区', '445100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445103', '潮安区', '445100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445121', '潮安县', '445100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445122', '饶平县', '445100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445200', '揭阳市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445201', '市辖区', '445200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445202', '榕城区', '445200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445203', '揭东区', '445200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445221', '揭东县', '445200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445222', '揭西县', '445200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445224', '惠来县', '445200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445281', '普宁市', '445200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445300', '云浮市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445301', '市辖区', '445300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445302', '云城区', '445300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445321', '新兴县', '445300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445322', '郁南县', '445300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445323', '云安县', '445300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('445381', '罗定市', '445300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450000', '广西壮族自治区', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450100', '南宁市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450101', '市辖区', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450102', '兴宁区', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450103', '新城区', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450104', '城北区', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450105', '江南区', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450106', '永新区', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450107', '西乡塘区', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450108', '良庆区', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450109', '邕宁区', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450121', '邕宁县', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450122', '武鸣县', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450123', '隆安县', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450124', '马山县', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450125', '上林县', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450126', '宾阳县', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450127', '横县', '450100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450200', '柳州市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450201', '市辖区', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450202', '城中区', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450203', '鱼峰区', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450204', '柳南区', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450205', '柳北区', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450211', '市郊区', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450221', '柳江县', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450222', '柳城县', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450223', '鹿寨县', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450224', '融安县', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450225', '融水苗族自治县', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450226', '三江侗族自治县', '450200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450300', '桂林市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450301', '市辖区', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450302', '秀峰区', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450303', '叠彩区', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450304', '象山区', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450305', '七星区', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450311', '雁山区', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450312', '临桂区', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450321', '阳朔县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450322', '临桂县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450323', '灵川县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450324', '全州县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450325', '兴安县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450326', '永福县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450327', '灌阳县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450328', '龙胜各族自治县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450329', '资源县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450330', '平乐县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450331', '荔蒲县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450332', '恭城瑶族自治县', '450300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450400', '梧州市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450401', '市辖区', '450400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450403', '万秀区', '450400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450404', '蝶山区', '450400');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('450405', '长洲区', '450400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450406', '龙圩区', '450400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450411', '市郊区', '450400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450421', '苍梧县', '450400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450422', '藤县', '450400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450423', '蒙山县', '450400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450481', '岑溪市', '450400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450500', '北海市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450501', '市辖区', '450500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450502', '海城区', '450500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450503', '银海区', '450500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450512', '铁山港区', '450500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450521', '合浦县', '450500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361024', '崇仁县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361025', '乐安县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361026', '宜黄县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361027', '金溪县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361028', '资溪县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361029', '东乡县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361030', '广昌县', '361000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361100', '上饶市', '360000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361101', '市辖区', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361102', '信州区', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361121', '上饶县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361122', '广丰县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361123', '玉山县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361124', '铅山县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361125', '横峰县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361126', '弋阳县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361127', '余干县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361128', '鄱阳县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361129', '万年县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361130', '婺源县', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('361181', '德兴市', '361100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370000', '山东省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370100', '济南市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370101', '市辖区', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370102', '历下区', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370103', '市中区', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370104', '槐荫区', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370105', '天桥区', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370112', '历城区', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370113', '长清区', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370123', '长清县', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370124', '平阴县', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370125', '济阳县', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370126', '商河县', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370181', '章丘市', '370100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370200', '青岛市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370201', '市辖区', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370202', '市南区', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370203', '市北区', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370205', '四方区', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370211', '黄岛区', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370212', '崂山区', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370213', '李沧区', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370214', '城阳区', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370281', '胶州市', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370282', '即墨市', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370283', '平度市', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370284', '胶南市', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370285', '莱西市', '370200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370300', '淄博市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370301', '市辖区', '370300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370302', '淄川区', '370300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370303', '张店区', '370300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370304', '博山区', '370300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370305', '临淄区', '370300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370306', '周村区', '370300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370321', '桓台县', '370300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370322', '高青县', '370300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370323', '沂源县', '370300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370400', '枣庄市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370401', '市辖区', '370400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370402', '市中区', '370400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370403', '薛城区', '370400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370404', '峄城区', '370400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370405', '台儿庄区', '370400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370406', '山亭区', '370400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370481', '滕州市', '370400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370500', '东营市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370501', '市辖区', '370500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370502', '东营区', '370500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370503', '河口区', '370500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370521', '垦利县', '370500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370522', '利津县', '370500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370523', '广饶县', '370500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370600', '烟台市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370601', '市辖区', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370602', '芝罘区', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370611', '福山区', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370612', '牟平区', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370613', '莱山区', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370634', '长岛县', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370681', '龙口市', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370682', '莱阳市', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370683', '莱州市', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370684', '蓬莱市', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370685', '招远市', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370686', '栖霞市', '370600');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('370687', '海阳市', '370600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370700', '潍坊市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370701', '市辖区', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370702', '潍城区', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370703', '寒亭区', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370704', '坊子区', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370705', '奎文区', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370724', '临朐县', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370725', '昌乐县', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370781', '青州市', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370782', '诸城市', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370783', '寿光市', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370784', '安丘市', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370785', '高密市', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370786', '昌邑市', '370700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370800', '济宁市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370801', '市辖区', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370802', '市中区', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370811', '任城区', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370826', '微山县', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370827', '鱼台县', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370828', '金乡县', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370829', '嘉祥县', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370830', '汶上县', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370831', '泗水县', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370832', '梁山县', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370881', '曲阜市', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370882', '兖州市', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370883', '邹城市', '370800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370900', '泰安市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370901', '市辖区', '370900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370902', '泰山区', '370900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370903', '岱岳区', '370900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370911', '郊区', '370900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370921', '宁阳县', '370900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370923', '东平县', '370900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370982', '新泰市', '370900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('370983', '肥城市', '370900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371000', '威海市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371001', '市辖区', '371000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371002', '环翠区', '371000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371081', '文登市', '371000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371082', '荣成市', '371000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371083', '乳山市', '371000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371100', '日照市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371101', '市辖区', '371100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371102', '东港区', '371100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371103', '岚山区', '371100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371121', '五莲县', '371100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371122', '莒县', '371100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371200', '莱芜市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371201', '市辖区', '371200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371202', '莱城区', '371200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371203', '钢城区', '371200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371300', '临沂市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371301', '市辖区', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371302', '兰山区', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371311', '罗庄区', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371312', '河东区', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371321', '沂南县', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371322', '郯城县', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371323', '沂水县', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371324', '苍山县', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371325', '费县', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371326', '平邑县', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371327', '莒南县', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371328', '蒙阴县', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371329', '临沭县', '371300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371400', '德州市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371401', '市辖区', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371402', '德城区', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371421', '陵县', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371422', '宁津县', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371423', '庆云县', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371424', '临邑县', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371425', '齐河县', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371426', '平原县', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371427', '夏津县', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371428', '武城县', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371481', '乐陵市', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371482', '禹城市', '371400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371500', '聊城市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371501', '市辖区', '371500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371502', '东昌府区', '371500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371521', '阳谷县', '371500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371522', '莘县', '371500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371523', '茌平县', '371500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371524', '东阿县', '371500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371525', '冠县', '371500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371526', '高唐县', '371500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371581', '临清市', '371500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371600', '滨州市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371601', '市辖区', '371600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371602', '滨城区', '371600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371621', '惠民县', '371600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371622', '阳信县', '371600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371623', '无棣县', '371600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371624', '沾化县', '371600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371625', '博兴县', '371600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371626', '邹平县', '371600');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('371700', '荷泽市', '370000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371701', '市辖区', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371702', '牡丹区', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371721', '曹县', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371722', '单县', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371723', '成武县', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371724', '巨野县', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371725', '郓城县', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371726', '鄄城县', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371727', '定陶县', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('371728', '东明县', '371700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410000', '河南省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410100', '郑州市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410101', '市辖区', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410102', '中原区', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410103', '二七区', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410104', '管城回族区', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410105', '金水区', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410106', '上街区', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410108', '邙山区', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410122', '中牟县', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410181', '巩义市', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410182', '荥阳市', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410183', '新密市', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410184', '新郑市', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410185', '登封市', '410100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410200', '开封市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410201', '市辖区', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410202', '龙亭区', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410203', '顺河回族区', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410204', '鼓楼区', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410205', '南关区', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410211', '郊区', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410221', '杞县', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410222', '通许县', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410223', '尉氏县', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410224', '开封县', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410225', '兰考县', '410200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410300', '洛阳市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410301', '市辖区', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410302', '老城区', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410303', '西工区', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410304', '廛河回族区', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410305', '涧西区', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410306', '吉利区', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410307', '洛龙区', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410311', '郊区', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410322', '孟津县', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410323', '新安县', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410324', '栾川县', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410325', '嵩县', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410326', '汝阳县', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410327', '宜阳县', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410328', '洛宁县', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410329', '伊川县', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410381', '偃师市', '410300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410400', '平顶山市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410401', '市辖区', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410402', '新华区', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410403', '卫东区', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410404', '石龙区', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410411', '湛河区', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410421', '宝丰县', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410422', '叶县', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410423', '鲁山县', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410425', '郏县', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410481', '舞钢市', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410482', '汝州市', '410400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410500', '安阳市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410501', '市辖区', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410502', '文峰区', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410503', '北关区', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410504', '铁西区', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410505', '殷都区', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410506', '龙安区', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410511', '郊区', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410522', '安阳县', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410523', '汤阴县', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410526', '滑县', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410527', '内黄县', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410581', '林州市', '410500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410600', '鹤壁市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410601', '市辖区', '410600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410602', '鹤山区', '410600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410603', '山城区', '410600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410611', '郊区', '410600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410621', '浚县', '410600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410622', '淇县', '410600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410700', '新乡市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410701', '市辖区', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410702', '红旗区', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410703', '新华区', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410704', '北站区', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410711', '郊区', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410721', '新乡县', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410724', '获嘉县', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410725', '原阳县', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410726', '延津县', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410727', '封丘县', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410728', '长垣县', '410700');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('410781', '卫辉市', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410782', '辉县市', '410700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410800', '焦作市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410801', '市辖区', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410802', '解放区', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410803', '中站区', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410804', '马村区', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410811', '山阳区', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410821', '修武县', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410822', '博爱县', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410823', '武陟县', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410825', '温县', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410881', '济源市', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410882', '沁阳市', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410883', '孟州市', '410800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410900', '濮阳市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410901', '市辖区', '410900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410902', '市区', '410900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410922', '清丰县', '410900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410923', '南乐县', '410900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410926', '范县', '410900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410927', '台前县', '410900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('410928', '濮阳县', '410900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411000', '许昌市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411001', '市辖区', '411000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411002', '魏都区', '411000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411023', '许昌县', '411000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411024', '鄢陵县', '411000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411025', '襄城县', '411000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411081', '禹州市', '411000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411082', '长葛市', '411000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411100', '漯河市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411101', '市辖区', '411100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411102', '源汇区', '411100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411103', '郾城区', '411100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411104', '召陵区', '411100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411121', '舞阳县', '411100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411122', '临颍县', '411100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411123', '郾城县', '411100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411200', '三门峡市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411201', '市辖区', '411200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411202', '湖滨区', '411200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411221', '渑池县', '411200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411222', '陕县', '411200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411224', '卢氏县', '411200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411281', '义马市', '411200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411282', '灵宝市', '411200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411300', '南阳市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411301', '市辖区', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411302', '宛城区', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411303', '卧龙区', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411321', '南召县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411322', '方城县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411323', '西峡县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411324', '镇平县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411325', '内乡县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411326', '淅川县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411327', '社旗县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411328', '唐河县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411329', '新野县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411330', '桐柏县', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411381', '邓州市', '411300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411400', '商丘市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411401', '市辖区', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411402', '梁园区', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411403', '睢阳区', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411421', '民权县', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411422', '睢县', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411423', '宁陵县', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411424', '柘城县', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411425', '虞城县', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411426', '夏邑县', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411481', '永城市', '411400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411500', '信阳市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411501', '市辖区', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411502', '师河区', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411503', '平桥区', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411521', '罗山县', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411522', '光山县', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411523', '新县', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411524', '商城县', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411525', '固始县', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411526', '潢川县', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411527', '淮滨县', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411528', '息县', '411500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411600', '周口市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411601', '市辖区', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411602', '川汇区', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411621', '扶沟县', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411622', '西华县', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411623', '商水县', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411624', '沈丘县', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411625', '郸城县', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411626', '淮阳县', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411627', '太康县', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411628', '鹿邑县', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411681', '项城市', '411600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411700', '驻马店市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411701', '市辖区', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411702', '驿城区', '411700');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('411721', '西平县', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411722', '上蔡县', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411723', '平舆县', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411724', '正阳县', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411725', '确山县', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411726', '泌阳县', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411727', '汝南县', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411728', '遂平县', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411729', '新蔡县', '411700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('411800', '济源市', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('419000', '省直辖县级行政区划', '410000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('419001', '济源市', '419000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420000', '湖北省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420100', '武汉市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420101', '市辖区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420102', '江岸区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420103', '江汉区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420104', '乔口区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420105', '汉阳区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420106', '武昌区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420107', '青山区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420111', '洪山区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420112', '东西湖区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420113', '汉南区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420114', '蔡甸区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420115', '江夏区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420116', '黄陂区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420117', '新洲区', '420100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420200', '黄石市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420201', '市辖区', '420200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420202', '黄石港区', '420200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420203', '石灰窑区', '420200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420204', '下陆区', '420200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420205', '铁山区', '420200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420222', '阳新县', '420200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420281', '大冶市', '420200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420300', '十堰市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420301', '市辖区', '420300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420302', '茅箭区', '420300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420303', '张湾区', '420300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420321', '郧县', '420300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420322', '郧西县', '420300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420323', '竹山县', '420300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420324', '竹溪县', '420300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420325', '房县', '420300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420381', '丹江口市', '420300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420500', '宜昌市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420501', '市辖区', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420502', '西陵区', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420503', '伍家岗区', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420504', '点军区', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420505', '虎亭区', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420506', '夷陵区', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420521', '宜昌县', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420525', '远安县', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420526', '兴山县', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420527', '秭归县', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420528', '长阳土家族自治县', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420529', '五峰土家族自治县', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420581', '宜都市', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420582', '当阳市', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420583', '枝江市', '420500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420600', '襄樊市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420601', '市辖区', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420602', '襄城区', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420606', '樊城区', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420607', '襄阳区', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420621', '襄阳县', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420624', '南漳县', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420625', '谷城县', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420626', '保康县', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420682', '老河口市', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420683', '枣阳市', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420684', '宜城市', '420600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420700', '鄂州市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420701', '市辖区', '420700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420702', '梁子湖区', '420700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420703', '华容区', '420700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420704', '鄂城区', '420700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420800', '荆门市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420801', '市辖区', '420800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420802', '东宝区', '420800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420804', '掇刀区', '420800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420821', '京山县', '420800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420822', '沙洋县', '420800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420881', '钟祥市', '420800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420900', '孝感市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420901', '市辖区', '420900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420902', '孝南区', '420900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420921', '孝昌县', '420900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420922', '大悟县', '420900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420923', '云梦县', '420900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420981', '应城市', '420900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420982', '安陆市', '420900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420983', '广水市', '420900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('420984', '汉川市', '420900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421000', '荆州市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421001', '市辖区', '421000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421002', '沙市区', '421000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421003', '荆州区', '421000');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('421022', '公安县', '421000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421023', '监利县', '421000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421024', '江陵县', '421000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421081', '石首市', '421000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421083', '洪湖市', '421000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421087', '松滋市', '421000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421100', '黄冈市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421101', '市辖区', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421102', '黄州区', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421121', '团风县', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421122', '红安县', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421123', '罗田县', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421124', '英山县', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421125', '浠水县', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421126', '蕲春县', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421127', '黄梅县', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421181', '麻城市', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421182', '武穴市', '421100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421200', '咸宁市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421201', '市辖区', '421200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421202', '咸安区', '421200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421221', '嘉鱼县', '421200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421222', '通城县', '421200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421223', '崇阳县', '421200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421224', '通山县', '421200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421281', '赤壁市', '421200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421300', '随州市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421301', '市辖区', '421300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421302', '曾都区', '421300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421303', '曾都区', '421300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421321', '随县', '421300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('421381', '广水市', '421300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('422800', '恩施土家族苗族自治州', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('422801', '恩施市', '422800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('422802', '利川市', '422800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('422822', '建始县', '422800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('422823', '巴东县', '422800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('422825', '宣恩县', '422800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('422826', '咸丰县', '422800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('422827', '来凤县', '422800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('422828', '鹤峰县', '422800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429000', '省直辖行政单位', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429001', '随州市', '429000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429004', '仙桃市', '429000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429005', '潜江市', '429000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429006', '天门市', '429000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429021', '神农架林区', '429000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429100', '潜江市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429200', '天门市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429300', '仙桃市', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('429400', '神农架林区', '420000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430000', '湖南省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430100', '长沙市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430101', '市辖区', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430102', '芙蓉区', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430103', '天心区', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430104', '岳麓区', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430105', '开福区', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430111', '雨花区', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430112', '望城区', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430121', '长沙县', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430122', '望城县', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430124', '宁乡县', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430181', '浏阳市', '430100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430200', '株洲市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430201', '市辖区', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430202', '荷塘区', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430203', '芦淞区', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430204', '石峰区', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430211', '天元区', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430221', '株洲县', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430223', '攸县', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430224', '茶陵县', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430225', '炎陵县', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430281', '醴陵市', '430200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430300', '湘潭市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430301', '市辖区', '430300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430302', '雨湖区', '430300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430304', '岳塘区', '430300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430321', '湘潭县', '430300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430381', '湘乡市', '430300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430382', '韶山市', '430300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430400', '衡阳市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430401', '市辖区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430402', '江东区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430403', '城南区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430404', '城北区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430405', '珠晖区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430406', '雁峰区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430407', '石鼓区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430408', '蒸湘区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430411', '郊区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430412', '南岳区', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430421', '衡阳县', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430422', '衡南县', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430423', '衡山县', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430424', '衡东县', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430426', '祁东县', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430481', '耒阳市', '430400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430482', '常宁市', '430400');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('430500', '邵阳市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430501', '市辖区', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430502', '双清区', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430503', '大祥区', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430511', '北塔区', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430521', '邵东县', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430522', '新邵县', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430523', '邵阳县', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430524', '隆回县', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430525', '洞口县', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430527', '绥宁县', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430528', '新宁县', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430529', '城步苗族自治县', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430581', '武冈市', '430500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430600', '岳阳市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430601', '市辖区', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430602', '岳阳楼区', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430603', '云溪区', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430611', '君山区', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430621', '岳阳县', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430623', '华容县', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430624', '湘阴县', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430626', '平江县', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430681', '汨罗市', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430682', '临湘市', '430600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430700', '常德市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430701', '市辖区', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430702', '武陵区', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430703', '鼎城区', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430721', '安乡县', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430722', '汉寿县', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430723', '澧县', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430724', '临澧县', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430725', '桃源县', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430726', '石门县', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430781', '津市市', '430700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430800', '张家界市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430801', '市辖区', '430800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430802', '永定区', '430800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430811', '武陵源区', '430800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430821', '慈利县', '430800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430822', '桑植县', '430800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430900', '益阳市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430901', '市辖区', '430900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430902', '资阳区', '430900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430903', '赫山区', '430900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430921', '南县', '430900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430922', '桃江县', '430900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430923', '安化县', '430900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('430981', '沅江市', '430900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431000', '郴州市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431001', '市辖区', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431002', '北湖区', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431003', '苏仙区', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431021', '桂阳县', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431022', '宜章县', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431023', '永兴县', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431024', '嘉禾县', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431025', '临武县', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431026', '汝城县', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431027', '桂东县', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431028', '安仁县', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431081', '资兴市', '431000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431100', '永州市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431101', '市辖区', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431102', '芝山区', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431103', '冷水滩区', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431121', '祁阳县', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431122', '东安县', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431123', '双牌县', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431124', '道县', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431125', '江永县', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431126', '宁远县', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431127', '蓝山县', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431128', '新田县', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431129', '江华瑶族自治县', '431100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431200', '怀化市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431201', '市辖区', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431202', '鹤城区', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431221', '中方县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431222', '沅陵县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431223', '辰溪县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431224', '溆浦县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431225', '会同县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431226', '麻阳苗族自治县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431227', '新晃侗族自治县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431228', '芷江侗族自治县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431229', '靖州苗族侗族自治县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431230', '通道侗族自治县', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431281', '洪江市', '431200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431300', '娄底市', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431301', '市辖区', '431300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431302', '娄星区', '431300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431321', '双峰县', '431300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431322', '新化县', '431300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431381', '冷水江市', '431300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('431382', '涟源市', '431300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('433100', '湘西土家族苗族自治州', '430000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('433101', '吉首市', '433100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('433122', '泸溪县', '433100');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('433123', '凤凰县', '433100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('433124', '花垣县', '433100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('433125', '保靖县', '433100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('433126', '古丈县', '433100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('433127', '永顺县', '433100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('433130', '龙山县', '433100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440000', '广东省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440100', '广州市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440101', '市辖区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440102', '东山区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440103', '荔湾区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440104', '越秀区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440105', '海珠区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440106', '天河区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440107', '芳村区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440111', '白云区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440112', '黄埔区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440113', '番禺区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440114', '花都区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440115', '南沙区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440116', '萝岗区', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440181', '番禺市', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440182', '花都市', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440183', '增城市', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440184', '从化市', '440100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440200', '韶关市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440201', '市辖区', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440202', '北江区', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440203', '武江区', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440204', '浈江区', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440205', '曲江区', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440221', '曲江县', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440222', '始兴县', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440224', '仁化县', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440229', '翁源县', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440232', '乳源瑶族自治县', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440233', '新丰县', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440281', '乐昌市', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440282', '南雄市', '440200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440300', '深圳市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440301', '市辖区', '440300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440303', '罗湖区', '440300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440304', '福田区', '440300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440305', '南山区', '440300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440306', '宝安区', '440300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440307', '龙岗区', '440300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440308', '盐田区', '440300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440400', '珠海市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440401', '市辖区', '440400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440402', '香洲区', '440400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440403', '斗门区', '440400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440404', '金湾区', '440400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440421', '斗门县', '440400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440500', '汕头市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440501', '市辖区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440506', '达濠区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440507', '龙湖区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440508', '金园区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440509', '升平区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440510', '河浦区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440511', '金平区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440512', '濠江区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440513', '潮阳区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440514', '潮南区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440515', '澄海区', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440523', '南澳县', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440582', '潮阳市', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440583', '澄海市', '440500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440600', '佛山市', '440000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440601', '市辖区', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440602', '城区', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440603', '石湾区', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440604', '禅城区', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('440605', '南海区', '440600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320305', '贾汪区', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320311', '泉山区', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320312', '铜山区', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320321', '丰县', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320322', '沛县', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320323', '铜山县', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320324', '睢宁县', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320381', '新沂市', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320382', '邳州市', '320300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320400', '常州市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320401', '市辖区', '320400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320402', '天宁区', '320400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320404', '钟楼区', '320400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320405', '戚墅堰区', '320400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320411', '新北区', '320400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320412', '武进区', '320400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320481', '溧阳市', '320400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320482', '金坛市', '320400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320500', '苏州市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320501', '市辖区', '320500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320505', '虎丘区', '320500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320506', '吴中区', '320500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320507', '相城区', '320500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320508', '姑苏区', '320500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320509', '吴江区', '320500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320581', '常熟市', '320500');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('320582', '张家港市', '320500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320583', '昆山市', '320500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320585', '太仓市', '320500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320600', '南通市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320601', '市辖区', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320602', '崇川区', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320611', '港闸区', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320612', '通州区', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320621', '海安县', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320623', '如东县', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320681', '启东市', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320682', '如皋市', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320683', '通州市', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320684', '海门市', '320600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320700', '连云港市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320701', '市辖区', '320700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320703', '连云区', '320700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320704', '云台区', '320700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320705', '新浦区', '320700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320706', '海州区', '320700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320721', '赣榆县', '320700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320722', '东海县', '320700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320723', '灌云县', '320700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320724', '灌南县', '320700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320800', '淮安市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320801', '市辖区', '320800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320802', '清河区', '320800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320803', '淮安区', '320800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320804', '淮阴区', '320800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320811', '清浦区', '320800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320826', '涟水县', '320800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320829', '洪泽县', '320800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320830', '盱眙县', '320800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320831', '金湖县', '320800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320900', '盐城市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320901', '市辖区', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320902', '城区', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320903', '盐都区', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320921', '响水县', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320922', '滨海县', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320923', '阜宁县', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320924', '射阳县', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320925', '建湖县', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320928', '盐都县', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320981', '东台市', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('320982', '大丰市', '320900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321000', '扬州市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321001', '市辖区', '321000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321002', '广陵区', '321000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321003', '邗江区', '321000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321012', '江都区', '321000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321023', '宝应县', '321000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321081', '仪征市', '321000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321084', '高邮市', '321000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321100', '镇江市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321101', '市辖区', '321100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321102', '京口区', '321100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321111', '润州区', '321100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321112', '丹徒区', '321100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321181', '丹阳市', '321100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321182', '扬中市', '321100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321183', '句容市', '321100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321200', '泰州市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321201', '市辖区', '321200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321202', '海陵区', '321200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321203', '高港区', '321200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321204', '姜堰区', '321200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321281', '兴化市', '321200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321282', '靖江市', '321200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321283', '泰兴市', '321200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321284', '姜堰市', '321200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321300', '宿迁市', '320000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321301', '市辖区', '321300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321302', '宿城区', '321300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321311', '宿豫区', '321300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321321', '宿豫县', '321300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321322', '沭阳县', '321300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321323', '泗阳县', '321300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('321324', '泗洪县', '321300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330000', '浙江省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330100', '杭州市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330101', '市辖区', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330102', '上城区', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330103', '下城区', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330104', '江干区', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330105', '拱墅区', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330106', '西湖区', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330108', '滨江区', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330109', '萧山区', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330110', '余杭区', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330122', '桐庐县', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330127', '淳安县', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330181', '萧山市', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330182', '建德市', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330183', '富阳市', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330184', '余杭市', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330185', '临安市', '330100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330200', '宁波市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330201', '市辖区', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330203', '海曙区', '330200');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('330204', '江东区', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330205', '江北区', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330206', '北仑区', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330211', '镇海区', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330212', '鄞州区', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330225', '象山县', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330226', '宁海县', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330227', '鄞县', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330281', '余姚市', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330282', '慈溪市', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330283', '奉化市', '330200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330300', '温州市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330301', '市辖区', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330302', '鹿城区', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330303', '龙湾区', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330304', '瓯海区', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330322', '洞头县', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330324', '永嘉县', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330326', '平阳县', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330327', '苍南县', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330328', '文成县', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330329', '泰顺县', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330381', '瑞安市', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330382', '乐清市', '330300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330400', '嘉兴市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330401', '市辖区', '330400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330402', '秀城区', '330400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330411', '秀洲区', '330400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330421', '嘉善县', '330400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330424', '海盐县', '330400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330481', '海宁市', '330400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330482', '平湖市', '330400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330483', '桐乡市', '330400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330500', '湖州市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330501', '市辖区', '330500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330502', '吴兴区', '330500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330503', '南浔区', '330500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330521', '德清县', '330500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330522', '长兴县', '330500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330523', '安吉县', '330500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330600', '绍兴市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330601', '市辖区', '330600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330602', '越城区', '330600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330621', '绍兴县', '330600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330624', '新昌县', '330600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330681', '诸暨市', '330600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330682', '上虞市', '330600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330683', '嵊州市', '330600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330700', '金华市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330701', '市辖区', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330702', '婺城区', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330703', '金东区', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330721', '金华县', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330723', '武义县', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330726', '浦江县', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330727', '磐安县', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330781', '兰溪市', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330782', '义乌市', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330783', '东阳市', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330784', '永康市', '330700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330800', '衢州市', '330000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330801', '市辖区', '330800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330802', '柯城区', '330800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330803', '衢江区', '330800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('330822', '常山县', '330800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510115', '温江区', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510121', '金堂县', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510122', '双流县', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510123', '温江县', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510124', '郫县', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510125', '新都县', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510129', '大邑县', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510131', '蒲江县', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510132', '新津县', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510181', '都江堰市', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510182', '彭州市', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510183', '邛崃市', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510184', '崇州市', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510300', '自贡市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510301', '市辖区', '510300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510302', '自流井区', '510300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510303', '贡井区', '510300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510304', '大安区', '510300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510311', '沿滩区', '510300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510321', '荣县', '510300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510322', '富顺县', '510300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510400', '攀枝花市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510401', '市辖区', '510400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510402', '东区', '510400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510403', '西区', '510400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510411', '仁和区', '510400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510421', '米易县', '510400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510422', '盐边县', '510400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510500', '泸州市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510501', '市辖区', '510500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510502', '江阳区', '510500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510503', '纳溪区', '510500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510504', '龙马潭区', '510500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510521', '泸县', '510500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510522', '合江县', '510500');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('510524', '叙永县', '510500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510525', '古蔺县', '510500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510600', '德阳市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510601', '市辖区', '510600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510603', '旌阳区', '510600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510623', '中江县', '510600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510626', '罗江县', '510600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510681', '广汉市', '510600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510682', '什邡市', '510600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510683', '绵竹市', '510600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510700', '绵阳市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510701', '市辖区', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510703', '涪城区', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510704', '游仙区', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510722', '三台县', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510723', '盐亭县', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510724', '安县', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510725', '梓潼县', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510726', '北川县', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510727', '平武县', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510781', '江油市', '510700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510800', '广元市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510801', '市辖区', '510800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510802', '市中区', '510800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510811', '元坝区', '510800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510812', '朝天区', '510800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510821', '旺苍县', '510800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510822', '青川县', '510800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510823', '剑阁县', '510800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510824', '苍溪县', '510800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510900', '遂宁市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510901', '市辖区', '510900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510902', '市中区', '510900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510903', '船山区', '510900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510904', '安居区', '510900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510921', '蓬溪县', '510900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510922', '射洪县', '510900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510923', '大英县', '510900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511000', '内江市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511001', '市辖区', '511000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511002', '市中区', '511000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511011', '东兴区', '511000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511024', '威远县', '511000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511025', '资中县', '511000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511028', '隆昌县', '511000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511100', '乐山市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511101', '市辖区', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511102', '市中区', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511111', '沙湾区', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511112', '五通桥区', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511113', '金口河区', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511123', '犍为县', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511124', '井研县', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511126', '夹江县', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511129', '沐川县', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511132', '峨边彝族自治县', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511133', '马边彝族自治县', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511181', '峨眉山市', '511100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511300', '南充市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511301', '市辖区', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511302', '顺庆区', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511303', '高坪区', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511304', '嘉陵区', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511321', '南部县', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511322', '营山县', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511323', '蓬安县', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511324', '仪陇县', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511325', '西充县', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511381', '阆中市', '511300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511400', '眉山市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511401', '市辖区', '511400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511402', '东坡区', '511400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511421', '仁寿县', '511400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511422', '彭山县', '511400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511423', '洪雅县', '511400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511424', '丹棱县', '511400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511425', '青神县', '511400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511500', '宜宾市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511501', '市辖区', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511502', '翠屏区', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511503', '南溪区', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511521', '宜宾县', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511522', '南溪县', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511523', '江安县', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511524', '长宁县', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511525', '高县', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511526', '珙县', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511527', '筠连县', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511528', '兴文县', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511529', '屏山县', '511500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511600', '广安市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511601', '市辖区', '511600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511602', '广安区', '511600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511603', '前锋区', '511600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511621', '岳池县', '511600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511622', '武胜县', '511600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511623', '邻水县', '511600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511681', '华莹市', '511600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511700', '达州市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511701', '市辖区', '511700');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('511702', '通川区', '511700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511703', '达川区', '511700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511721', '达县', '511700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511722', '宣汉县', '511700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511723', '开江县', '511700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511724', '大竹县', '511700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511725', '渠县', '511700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511781', '万源市', '511700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511800', '雅安市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511801', '市辖区', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511802', '雨城区', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511803', '名山区', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511821', '名山县', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511822', '荥经县', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511823', '汉源县', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511824', '石棉县', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511825', '天全县', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511826', '芦山县', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511827', '宝兴县', '511800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511900', '巴中市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511901', '市辖区', '511900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511902', '巴州区', '511900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511903', '恩阳区', '511900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511921', '通江县', '511900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511922', '南江县', '511900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('511923', '平昌县', '511900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('512000', '资阳市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('512001', '市辖区', '512000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('512002', '雁江区', '512000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('512021', '安岳县', '512000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('512022', '乐至县', '512000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('512081', '简阳市', '512000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513200', '阿坝藏族羌族自治州', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513221', '汶川县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513222', '理县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513223', '茂县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513224', '松潘县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513225', '九寨沟县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513226', '金川县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513227', '小金县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513228', '黑水县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513229', '马尔康县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513230', '壤塘县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513231', '阿坝县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513232', '若尔盖县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513233', '红原县', '513200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513300', '甘孜藏族自治州', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513321', '康定县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513322', '泸定县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513323', '丹巴县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513324', '九龙县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513325', '雅江县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513326', '道孚县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513327', '炉霍县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513328', '甘孜县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513329', '新龙县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652201', '哈密市', '652200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652222', '巴里坤哈萨克自治县', '652200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652223', '伊吾县', '652200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652300', '昌吉回族自治州', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652301', '昌吉市', '652300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652302', '阜康市', '652300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652303', '米泉市', '652300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652323', '呼图壁县', '652300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652324', '玛纳斯县', '652300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652325', '奇台县', '652300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652327', '吉木萨尔县', '652300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652328', '木垒哈萨克自治县', '652300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652700', '博尔塔拉蒙古自治州', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652701', '博乐市', '652700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652702', '阿拉山口市', '652700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652722', '精河县', '652700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652723', '温泉县', '652700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652800', '巴音郭楞蒙古自治州', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652801', '库尔勒市', '652800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652822', '轮台县', '652800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652823', '尉犁县', '652800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652824', '若羌县', '652800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652825', '且末县', '652800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652826', '焉耆回族自治县', '652800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652827', '和静县', '652800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652828', '和硕县', '652800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652829', '博湖县', '652800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652900', '阿克苏地区', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652901', '阿克苏市', '652900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652922', '温宿县', '652900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652923', '库车县', '652900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652924', '沙雅县', '652900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652925', '新和县', '652900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652926', '拜城县', '652900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652927', '乌什县', '652900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652928', '阿瓦提县', '652900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652929', '柯坪县', '652900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653000', '克孜勒苏柯尔克孜自治州', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653001', '阿图什市', '653000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653022', '阿克陶县', '653000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653023', '阿合奇县', '653000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653024', '乌恰县', '653000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653100', '喀什地区', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653101', '喀什市', '653100');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('653121', '疏附县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653122', '疏勒县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653123', '英吉沙县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653124', '泽普县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653125', '莎车县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653126', '叶城县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653127', '麦盖提县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653128', '岳普湖县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653129', '伽师县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653130', '巴楚县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653131', '塔什库尔干塔吉克自治县', '653100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653200', '和田地区', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653201', '和田市', '653200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653221', '和田县', '653200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653222', '墨玉县', '653200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653223', '皮山县', '653200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653224', '洛浦县', '653200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653225', '策勒县', '653200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653226', '于田县', '653200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('653227', '民丰县', '653200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654000', '伊犁哈萨克自治州', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654002', '伊宁市', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654003', '奎屯市', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654021', '伊宁县', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654022', '察布查尔锡伯自治县', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654023', '霍城县', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654024', '巩留县', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654025', '新源县', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654026', '昭苏县', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654027', '特克斯县', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654028', '尼勒克县', '654000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654200', '塔城地区', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654201', '塔城市', '654200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654202', '乌苏市', '654200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654221', '额敏县', '654200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654223', '沙湾县', '654200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654224', '托里县', '654200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654225', '裕民县', '654200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654226', '和布克赛尔蒙古自治县', '654200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654300', '阿勒泰地区', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654301', '阿勒泰市', '654300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654321', '布尔津县', '654300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654322', '富蕴县', '654300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654323', '福海县', '654300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654324', '哈巴河县', '654300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654325', '青河县', '654300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('654326', '吉木乃县', '654300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('659000', '省直辖行政单位', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('659001', '石河子市', '659000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('659002', '阿拉尔市', '659000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('659003', '图木舒克市', '659000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('659004', '五家渠市', '659000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('660100', '新疆生产建设兵团兵团直属', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('660200', '农一师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('660300', '农二师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('660400', '农三师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('660500', '农四师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('660600', '农五师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('660700', '农六师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('660800', '农七师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('660900', '农八师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('661000', '农九师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('661100', '农十师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('661200', '农十一师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('661300', '农十二师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('661400', '农十三师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('661500', '农十四师', '660000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('710000', '台湾省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('810000', '香港特别行政区', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('820000', '澳门特别行政区', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('999999', '其他', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513330', '德格县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513331', '白玉县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513332', '石渠县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513333', '色达县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513334', '理塘县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513335', '巴塘县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513336', '乡城县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513337', '稻城县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513338', '得荣县', '513300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513400', '凉山彝族自治州', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513401', '西昌市', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513422', '木里藏族自治县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513423', '盐源县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513424', '德昌县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513425', '会理县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513426', '会东县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513427', '宁南县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513428', '普格县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513429', '布拖县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513430', '金阳县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513431', '昭觉县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513432', '喜德县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513433', '冕宁县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513434', '越西县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513435', '甘洛县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513436', '美姑县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('513437', '雷波县', '513400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520000', '贵州省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520100', '贵阳市', '520000');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('520101', '市辖区', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520102', '南明区', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520103', '云岩区', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520111', '花溪区', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520112', '乌当区', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520113', '白云区', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520114', '小河区', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520115', '观山湖区', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520121', '开阳县', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520122', '息烽县', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520123', '修文县', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520181', '清镇市', '520100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520200', '六盘水市', '520000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520201', '钟山区', '520200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520202', '盘县特区', '520200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520203', '六枝特区', '520200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520221', '水城县', '520200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520222', '盘县', '520200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520300', '遵义市', '520000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520301', '市辖区', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520302', '红花岗区', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520303', '汇川区', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520321', '遵义县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520322', '桐梓县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520323', '绥阳县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520324', '正安县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520325', '道真仡佬族苗族自治县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520326', '务川仡佬族苗族自治县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520327', '凤冈县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520328', '湄潭县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520329', '余庆县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520330', '习水县', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520381', '赤水市', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520382', '仁怀市', '520300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520400', '安顺市', '520000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520401', '市辖区', '520400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520402', '西秀区', '520400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520421', '平坝县', '520400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520422', '普定县', '520400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520423', '镇宁布依族苗族自治县', '520400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520424', '关岭布依族苗族自治县', '520400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520425', '紫云苗族布依族自治县', '520400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520500', '毕节市', '520000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520501', '市辖区', '520500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520502', '七星关区', '520500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520521', '大方县', '520500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520522', '黔西县', '520500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520523', '金沙县', '520500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520524', '织金县', '520500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520525', '纳雍县', '520500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520526', '威宁彝族回族苗族自治县', '520500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520527', '赫章县', '520500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520600', '铜仁市', '520000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520601', '市辖区', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520602', '碧江区', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520603', '万山区', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520621', '江口县', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520622', '玉屏侗族自治县', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520623', '石阡县', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520624', '思南县', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520625', '印江土家族苗族自治县', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520626', '德江县', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520627', '沿河土家族自治县', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('520628', '松桃苗族自治县', '520600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522300', '黔西南布依族苗族自治州', '520000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522301', '兴义市', '522300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522322', '兴仁县', '522300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522323', '普安县', '522300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522324', '晴隆县', '522300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522325', '贞丰县', '522300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522326', '望谟县', '522300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522327', '册亨县', '522300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522328', '安龙县', '522300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522600', '黔东南苗族侗族自治州', '520000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522601', '凯里市', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522622', '黄平县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522623', '施秉县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522624', '三穗县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522625', '镇远县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522626', '岑巩县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522627', '天柱县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522628', '锦屏县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522629', '剑河县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522630', '台江县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522631', '黎平县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522632', '榕江县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522633', '从江县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522634', '雷山县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522635', '麻江县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522636', '丹寨县', '522600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522700', '黔南布依族苗族自治州', '520000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522701', '都匀市', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522702', '福泉市', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522722', '荔波县', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522723', '贵定县', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522725', '瓮安县', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522726', '独山县', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522727', '平塘县', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522728', '罗甸县', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522729', '长顺县', '522700');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('522730', '龙里县', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522731', '惠水县', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('522732', '三都水族自治县', '522700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530000', '云南省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530100', '昆明市', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530101', '市辖区', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530102', '五华区', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530103', '盘龙区', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530111', '官渡区', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530112', '西山区', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530113', '东川区', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530114', '呈贡区', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530121', '呈贡县', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530122', '晋宁县', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530124', '富民县', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530125', '宜良县', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530126', '石林彝族自治县', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530127', '嵩明县', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530128', '禄劝彝族苗族自治县', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530129', '寻甸回族彝族自治县', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530181', '安宁市', '530100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530300', '曲靖市', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530301', '市辖区', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530302', '麒麟区', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530321', '马龙县', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530322', '陆良县', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530323', '师宗县', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530324', '罗平县', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530325', '富源县', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530326', '会泽县', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530328', '沾益县', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530381', '宣威市', '530300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530400', '玉溪市', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530401', '市辖区', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530402', '红塔区', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530421', '江川县', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530422', '澄江县', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530423', '通海县', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530424', '华宁县', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530425', '易门县', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530426', '峨山彝族自治县', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530427', '新平彝族傣族自治县', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530428', '元江哈尼族彝族傣族自治县', '530400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530500', '保山市', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530501', '市辖区', '530500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530502', '隆阳区', '530500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530521', '施甸县', '530500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530522', '腾冲县', '530500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530523', '龙陵县', '530500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530524', '昌宁县', '530500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530600', '昭通市', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530601', '市辖区', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530602', '昭阳区', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530621', '鲁甸县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530622', '巧家县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530623', '盐津县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530624', '大关县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530625', '永善县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530626', '绥江县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530627', '镇雄县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530628', '彝良县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530629', '威信县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530630', '水富县', '530600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530700', '丽江市', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530701', '市辖区', '530700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530702', '古城区', '530700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530721', '玉龙纳西族自治县', '530700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530722', '永胜县', '530700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530723', '华坪县', '530700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530724', '宁蒗彝族自治县', '530700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530800', '思茅市', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530801', '市辖区', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530802', '翠云区', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530821', '普洱哈尼族彝族自治县', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530822', '墨江哈尼族自治县', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530823', '景东彝族自治县', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530824', '景谷傣族彝族自治县', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530826', '江城哈尼族彝族自治县', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530827', '孟连傣族拉祜族佤族自治县', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530828', '澜沧拉祜族自治县', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530829', '西盟佤族自治县', '530800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530900', '临沧市', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530901', '市辖区', '530900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530902', '临翔区', '530900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530921', '凤庆县', '530900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530922', '云县', '530900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530923', '永德县', '530900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530924', '镇康县', '530900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530926', '耿马傣族佤族自治县', '530900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('530927', '沧源佤族自治县', '530900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532300', '楚雄彝族自治州', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532301', '楚雄市', '532300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532322', '双柏县', '532300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532323', '牟定县', '532300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532324', '南华县', '532300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532325', '姚安县', '532300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532326', '大姚县', '532300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532327', '永仁县', '532300');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('532328', '元谋县', '532300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532329', '武定县', '532300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532331', '禄丰县', '532300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532500', '红河哈尼族彝族自治州', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532501', '个旧市', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532502', '开远市', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532503', '蒙自市', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532504', '弥勒市', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532522', '蒙自县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532523', '屏边苗族自治县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532524', '建水县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532525', '石屏县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532526', '弥勒县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532527', '泸西县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532528', '元阳县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532529', '红河县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532530', '金平苗族瑶族傣族自治县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532531', '绿春县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532532', '河口瑶族自治县', '532500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532600', '文山壮族苗族自治州', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532601', '文山市', '532600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532621', '文山县', '532600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532622', '砚山县', '532600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532623', '西畴县', '532600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532624', '麻栗坡县', '532600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532625', '马关县', '532600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532626', '丘北县', '532600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532627', '广南县', '532600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532628', '富宁县', '532600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532800', '西双版纳傣族自治州', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532801', '景洪市', '532800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532822', '勐海县', '532800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532823', '勐腊县', '532800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532900', '大理白族自治州', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532901', '大理市', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532922', '漾濞彝族自治县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532923', '祥云县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532924', '宾川县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532925', '弥渡县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532926', '南涧彝族自治县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532927', '巍山彝族回族自治县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532928', '永平县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532929', '云龙县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532930', '洱源县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532931', '剑川县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('532932', '鹤庆县', '532900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533100', '德宏傣族景颇族自治州', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533101', '畹町市', '533100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533102', '瑞丽市', '533100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533103', '潞西市', '533100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533122', '梁河县', '533100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533123', '盈江县', '533100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533124', '陇川县', '533100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533300', '怒江傈僳族自治州', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533321', '泸水县', '533300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533323', '福贡县', '533300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533324', '贡山独龙族怒族自治县', '533300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533325', '兰坪白族普米族自治县', '533300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533400', '迪庆藏族自治州', '530000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533421', '中甸县', '533400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533422', '德钦县', '533400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('533423', '维西傈僳族自治县', '533400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540000', '西藏自治区', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540100', '拉萨市', '540000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540101', '市辖区', '540100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540102', '城关区', '540100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540121', '林周县', '540100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540122', '当雄县', '540100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540123', '尼木县', '540100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540124', '曲水县', '540100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540125', '堆龙德庆县', '540100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540126', '达孜县', '540100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('540127', '墨竹工卡县', '540100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542100', '昌都地区', '540000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542121', '昌都县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542122', '江达县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542123', '贡觉县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542124', '类乌齐县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542125', '丁青县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542126', '察雅县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542127', '八宿县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542128', '左贡县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542129', '芒康县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542132', '洛隆县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542133', '边坝县', '542100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542200', '山南地区', '540000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542221', '乃东县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542222', '扎囊县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542223', '贡嘎县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542224', '桑日县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542225', '琼结县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542226', '曲松县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542227', '措美县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542228', '洛扎县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542229', '加查县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542231', '隆子县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542232', '错那县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542233', '浪卡子县', '542200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542300', '日喀则地区', '540000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542301', '日喀则市', '542300');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('542322', '南木林县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542323', '江孜县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542324', '定日县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542325', '萨迦县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542326', '拉孜县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542327', '昂仁县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542328', '谢通门县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542329', '白朗县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542330', '仁布县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542331', '康马县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542332', '定结县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542333', '仲巴县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542334', '亚东县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542335', '吉隆县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542336', '聂拉木县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542337', '萨嘎县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542338', '岗巴县', '542300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542400', '那曲地区', '540000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542421', '那曲县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542422', '嘉黎县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542423', '比如县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542424', '聂荣县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542425', '安多县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542426', '申扎县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542427', '索县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542428', '班戈县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542429', '巴青县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542430', '尼玛县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542431', '双湖县', '542400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542500', '阿里地区', '540000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542521', '普兰县', '542500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542522', '札达县', '542500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542523', '噶尔县', '542500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542524', '日土县', '542500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542525', '革吉县', '542500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542526', '改则县', '542500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542527', '措勤县', '542500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542600', '林芝地区', '540000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542621', '林芝县', '542600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542622', '工布江达县', '542600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542623', '米林县', '542600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542624', '墨脱县', '542600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542625', '波密县', '542600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542626', '察隅县', '542600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('542627', '朗县', '542600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610000', '陕西省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610100', '西安市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610101', '市辖区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610102', '新城区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610103', '碑林区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610104', '莲湖区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610111', '灞桥区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610112', '未央区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610113', '雁塔区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610114', '阎良区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610115', '临潼区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610116', '长安区', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610121', '长安县', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610122', '蓝田县', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610124', '周至县', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610125', '户县', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610126', '高陵县', '610100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610200', '铜川市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610201', '市辖区', '610200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610202', '城区', '610200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610203', '郊区', '610200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610204', '耀州区', '610200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610221', '耀县', '610200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610222', '宜君县', '610200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610300', '宝鸡市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610301', '市辖区', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610302', '渭滨区', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610303', '金台区', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610304', '陈仓区', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610321', '宝鸡县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610322', '凤翔县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610323', '岐山县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610324', '扶风县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610326', '眉县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610327', '陇县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610328', '千阳县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610329', '麟游县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610330', '凤县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610331', '太白县', '610300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610400', '咸阳市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610401', '市辖区', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610402', '秦都区', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610403', '杨陵区', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610404', '渭城区', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610422', '三原县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610423', '泾阳县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610424', '乾县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610425', '礼泉县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610426', '永寿县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610427', '彬县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610428', '长武县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610429', '旬邑县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610430', '淳化县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610431', '武功县', '610400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610481', '兴平市', '610400');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('610500', '渭南市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610501', '市辖区', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610502', '临渭区', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610521', '华县', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610522', '潼关县', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610523', '大荔县', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610524', '合阳县', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610525', '澄城县', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610526', '蒲城县', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610527', '白水县', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610528', '富平县', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610581', '韩城市', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610582', '华阴市', '610500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610600', '延安市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610601', '市辖区', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610602', '宝塔区', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610621', '延长县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610622', '延川县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610623', '子长县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610624', '安塞县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610625', '志丹县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610626', '吴旗县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610627', '甘泉县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610628', '富县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610629', '洛川县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610630', '宜川县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610631', '黄龙县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610632', '黄陵县', '610600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610700', '汉中市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610701', '市辖区', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610702', '汉台区', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610721', '南郑县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610722', '城固县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610723', '洋县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610724', '西乡县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610725', '勉县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610726', '宁强县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610727', '略阳县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610728', '镇巴县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610729', '留坝县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610730', '佛坪县', '610700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610800', '榆林市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610801', '市辖区', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610802', '榆阳区', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610821', '神木县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610822', '府谷县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610823', '横山县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610824', '靖边县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610825', '定边县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610826', '绥德县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610827', '米脂县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610828', '佳县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610829', '吴堡县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610830', '清涧县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610831', '子洲县', '610800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610900', '安康市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610901', '市辖区', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610902', '汉滨区', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610921', '汉阴县', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610922', '石泉县', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610923', '宁陕县', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610924', '紫阳县', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610925', '岚皋县', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610926', '平利县', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610927', '镇坪县', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610928', '旬阳县', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('610929', '白河县', '610900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611000', '商洛市', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611001', '市辖区', '611000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611002', '商州区', '611000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611021', '洛南县', '611000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611022', '丹凤县', '611000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611023', '商南县', '611000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611024', '山阳县', '611000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611025', '镇安县', '611000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611026', '柞水县', '611000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('611400', '杨凌区', '610000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620000', '甘肃省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620100', '兰州市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620101', '市辖区', '620100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620102', '城关区', '620100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620103', '七里河区', '620100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620104', '西固区', '620100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620105', '安宁区', '620100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620111', '红古区', '620100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620121', '永登县', '620100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620122', '皋兰县', '620100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620123', '榆中县', '620100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620200', '嘉峪关市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620201', '市辖区', '620200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620300', '金昌市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620301', '市辖区', '620300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620302', '金川区', '620300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620321', '永昌县', '620300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620400', '白银市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620401', '市辖区', '620400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620402', '白银区', '620400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620403', '平川区', '620400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620421', '靖远县', '620400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620422', '会宁县', '620400');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('620423', '景泰县', '620400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620500', '天水市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620501', '市辖区', '620500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620502', '秦城区', '620500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620503', '北道区', '620500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620521', '清水县', '620500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620522', '秦安县', '620500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620523', '甘谷县', '620500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620524', '武山县', '620500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620525', '张家川回族自治县', '620500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620600', '武威市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620601', '市辖区', '620600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620602', '凉州区', '620600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620621', '民勤县', '620600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620622', '古浪县', '620600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620623', '天祝藏族自治县', '620600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620700', '张掖市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620701', '市辖区', '620700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620702', '甘州区', '620700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620721', '肃南裕固族自治县', '620700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620722', '民乐县', '620700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620723', '临泽县', '620700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620724', '高台县', '620700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620725', '山丹县', '620700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620800', '平凉市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620801', '市辖区', '620800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620802', '崆峒区', '620800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620821', '泾川县', '620800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620822', '灵台县', '620800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620823', '崇信县', '620800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620824', '华亭县', '620800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620825', '庄浪县', '620800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620826', '静宁县', '620800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620900', '酒泉市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620901', '市辖区', '620900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620902', '肃州区', '620900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620921', '金塔县', '620900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620922', '安西县', '620900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620923', '肃北蒙古族自治县', '620900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620924', '阿克塞哈萨克族自治县', '620900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620981', '玉门市', '620900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('620982', '敦煌市', '620900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621000', '庆阳市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621001', '市辖区', '621000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621002', '西峰区', '621000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621021', '庆阳县', '621000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621022', '环县', '621000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621023', '华池县', '621000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621024', '合水县', '621000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621025', '正宁县', '621000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621026', '宁县', '621000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621027', '镇原县', '621000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621100', '定西市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621101', '市辖区', '621100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621102', '安定区', '621100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621121', '通渭县', '621100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621122', '陇西县', '621100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621123', '渭源县', '621100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621124', '临洮县', '621100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621125', '漳县', '621100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621126', '岷县', '621100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621200', '陇南市', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621201', '市辖区', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621202', '武都区', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621221', '成县', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621222', '文县', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621223', '宕昌县', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621224', '康县', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621225', '西和县', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621226', '礼县', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621227', '徽县', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('621228', '两当县', '621200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('622900', '临夏回族自治州', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('622901', '临夏市', '622900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('622921', '临夏县', '622900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('622922', '康乐县', '622900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('622923', '永靖县', '622900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('622924', '广河县', '622900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('622925', '和政县', '622900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('622926', '东乡族自治县', '622900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('623000', '甘南藏族自治州', '620000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('623001', '合作市', '623000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('623021', '临潭县', '623000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('623022', '卓尼县', '623000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('623023', '舟曲县', '623000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('623024', '迭部县', '623000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('623025', '玛曲县', '623000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('623026', '碌曲县', '623000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('623027', '夏河县', '623000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630000', '青海省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630100', '西宁市', '630000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630101', '市辖区', '630100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630102', '城东区', '630100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630103', '城中区', '630100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630104', '城西区', '630100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630105', '城北区', '630100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630121', '大通回族土族自治县', '630100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630122', '湟中县', '630100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630123', '湟源县', '630100');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('630200', '海东市', '630000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630202', '乐都区', '630200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630221', '平安县', '630200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630222', '民和回族土族自治县', '630200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630223', '互助土族自治县', '630200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630224', '化隆回族自治县', '630200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('630225', '循化撒拉族自治县', '630200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632200', '海北藏族自治州', '630000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632221', '门源回族自治县', '632200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632222', '祁连县', '632200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632223', '海晏县', '632200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632224', '刚察县', '632200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632300', '黄南藏族自治州', '630000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632321', '同仁县', '632300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632322', '尖扎县', '632300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632323', '泽库县', '632300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632324', '河南蒙古族自治县', '632300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632500', '海南藏族自治州', '630000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632521', '共和县', '632500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632522', '同德县', '632500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632523', '贵德县', '632500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632524', '兴海县', '632500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632525', '贵南县', '632500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632600', '果洛藏族自治州', '630000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632621', '玛沁县', '632600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632622', '班玛县', '632600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632623', '甘德县', '632600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632624', '达日县', '632600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632625', '久治县', '632600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632626', '玛多县', '632600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632700', '玉树藏族自治州', '630000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632701', '玉树市', '632700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632721', '玉树县', '632700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632722', '杂多县', '632700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632723', '称多县', '632700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632724', '治多县', '632700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632725', '囊谦县', '632700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632726', '曲麻莱县', '632700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632800', '海西蒙古族藏族自治州', '630000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632801', '格尔木市', '632800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632802', '德令哈市', '632800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632821', '乌兰县', '632800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632822', '都兰县', '632800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('632823', '天峻县', '632800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640000', '宁夏回族自治区', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640100', '银川市', '640000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640101', '市辖区', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640102', '城区', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640103', '新城区', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640104', '兴庆区', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640105', '西夏区', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640106', '金凤区', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640111', '郊区', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640121', '永宁县', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640122', '贺兰县', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640181', '灵武市', '640100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640200', '石嘴山市', '640000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640201', '市辖区', '640200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640202', '大武口区', '640200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640203', '石嘴山区', '640200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640204', '石炭井区', '640200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640205', '惠农区', '640200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640221', '平罗县', '640200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640222', '陶乐县', '640200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640223', '惠农县', '640200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640300', '吴忠市', '640000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640301', '市辖区', '640300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640302', '利通区', '640300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640303', '红寺堡区', '640300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640321', '中卫县', '640300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640322', '中宁县', '640300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640323', '盐池县', '640300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640324', '同心县', '640300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640381', '青铜峡市', '640300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640382', '灵武市', '640300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640400', '固原市', '640000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640401', '市辖区', '640400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640402', '原州区', '640400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640421', '海原县', '640400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640422', '西吉县', '640400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640423', '隆德县', '640400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640424', '泾源县', '640400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640425', '彭阳县', '640400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640500', '中卫市', '640000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640501', '市辖区', '640500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640502', '沙坡头区', '640500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640521', '中宁县', '640500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('640522', '海原县', '640500');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650000', '新疆维吾尔自治区', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650100', '乌鲁木齐市', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650101', '市辖区', '650100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650102', '天山区', '650100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650103', '沙依巴克区', '650100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650104', '新市区', '650100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650105', '水磨沟区', '650100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650106', '头屯河区', '650100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650107', '南山矿区', '650100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650108', '东山区', '650100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650109', '米东区', '650100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650121', '乌鲁木齐县', '650100');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('650200', '克拉玛依市', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650201', '市辖区', '650200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650202', '独山子区', '650200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650203', '克拉玛依区', '650200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650204', '白碱滩区', '650200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650205', '乌尔禾区', '650200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('650700', '石河子市', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652100', '吐鲁番地区', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652101', '吐鲁番市', '652100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652122', '鄯善县', '652100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652123', '托克逊县', '652100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('652200', '哈密地区', '650000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450600', '防城港市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450601', '市辖区', '450600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450602', '港口区', '450600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450603', '防城区', '450600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450621', '上思县', '450600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450681', '东兴市', '450600');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450700', '钦州市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450701', '市辖区', '450700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450702', '钦南区', '450700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450703', '钦北区', '450700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450721', '灵山县', '450700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450722', '浦北县', '450700');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450800', '贵港市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450801', '市辖区', '450800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450802', '港北区', '450800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450803', '港南区', '450800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450804', '覃塘区', '450800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450821', '平南县', '450800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450881', '桂平市', '450800');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450900', '玉林市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450901', '市辖区', '450900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450902', '玉州区', '450900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450903', '福绵区', '450900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450921', '容县', '450900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450922', '陆川县', '450900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450923', '博白县', '450900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450924', '兴业县', '450900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('450981', '北流市', '450900');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451000', '百色市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451001', '市辖区', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451002', '右江区', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451021', '田阳县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451022', '田东县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451023', '平果县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451024', '德保县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451025', '靖西县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451026', '那坡县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451027', '凌云县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451028', '乐业县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451029', '田林县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451030', '西林县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451031', '隆林各族自治县', '451000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451100', '贺州市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451101', '市辖区', '451100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451102', '八步区', '451100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451121', '昭平县', '451100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451122', '钟山县', '451100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451123', '富川瑶族自治县', '451100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451200', '河池市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451201', '市辖区', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451202', '金城江区', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451221', '南丹县', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451222', '天峨县', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451223', '凤山县', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451224', '东兰县', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451225', '罗城仫佬族自治县', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451226', '环江毛南族自治县', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451227', '巴马瑶族自治县', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451228', '都安瑶族自治县', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451229', '大化瑶族自治县', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451281', '宜州市', '451200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451300', '来宾市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451301', '市辖区', '451300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451302', '兴宾区', '451300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451321', '忻城县', '451300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451322', '象州县', '451300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451323', '武宣县', '451300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451324', '金秀瑶族自治县', '451300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451381', '合山市', '451300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451400', '崇左市', '450000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451401', '市辖区', '451400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451402', '江洲区', '451400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451421', '扶绥县', '451400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451422', '宁明县', '451400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451423', '龙州县', '451400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451424', '大新县', '451400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451425', '天等县', '451400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('451481', '凭祥市', '451400');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460000', '海南省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460100', '海口市', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460101', '市辖区', '460100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460102', '振东区', '460100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460103', '新华区', '460100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460105', '秀英区', '460100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460106', '龙华区', '460100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460107', '琼山区', '460100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460108', '美兰区', '460100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460200', '三亚市', '460000');
commit;

insert into K_REGION (region_code, region_name, parent_region_code)
values ('460201', '市辖区', '460200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460300', '五指山市', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460321', '西沙群岛', '460300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460322', '南沙群岛', '460300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460323', '中沙群岛的岛礁及其海域', '460300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460400', '琼海市', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460500', '文昌市', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460600', '万宁市', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460700', '东方市', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('460800', '儋州市', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('462500', '定安县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('462600', '屯昌县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('462700', '澄迈县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('462800', '临高县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('463000', '白沙县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('463100', '昌江县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('463300', '乐东县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('463400', '陵水县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('463500', '保亭县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('463600', '琼中县', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469000', '省直辖县级行政单位', '460000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469001', '五指山市', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469002', '琼海市', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469003', '儋州市', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469005', '文昌市', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469006', '万宁市', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469007', '东方市', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469021', '定安县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469022', '屯昌县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469023', '澄迈县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469024', '临高县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469025', '白沙黎族自治县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469026', '昌江黎族自治县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469027', '乐东黎族自治县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469028', '陵水黎族自治县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469029', '保亭黎族苗族自治县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('469030', '琼中黎族苗族自治县', '469000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500000', '重庆市', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500100', '市辖区', '500000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500101', '万州区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500102', '涪陵区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500103', '渝中区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500104', '大渡口区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500105', '江北区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500106', '沙坪坝区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500107', '九龙坡区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500108', '南岸区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500109', '北碚区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500110', '万盛区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500111', '双桥区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500112', '渝北区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500113', '巴南区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500114', '黔江区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500115', '长寿区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500116', '江津区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500117', '合川区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500118', '永川区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500119', '南川区', '500100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500200', '县', '500000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500221', '长寿县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500222', '綦江县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500223', '潼南县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500224', '铜梁县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500225', '大足县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500226', '荣昌县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500227', '璧山县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500228', '梁平县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500229', '城口县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500230', '丰都县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500231', '垫江县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500232', '武隆县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500233', '忠县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500234', '开县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500235', '云阳县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500236', '奉节县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500237', '巫山县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500238', '巫溪县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500239', '黔江土家族苗族自治县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500240', '石柱土家族自治县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500241', '秀山土家族苗族自治县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500242', '酉阳土家族苗族自治县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500243', '彭水苗族土家族自治县', '500200');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500300', '重庆市市', '500000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500381', '江津市', '500300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500382', '合川市', '500300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500383', '永川市', '500300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('500384', '南川市', '500300');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510000', '四川省', null);
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510100', '成都市', '510000');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510101', '市辖区', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510104', '锦江区', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510105', '青羊区', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510106', '金牛区', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510107', '武侯区', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510108', '成华区', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510112', '龙泉驿区', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510113', '青白江区', '510100');
insert into K_REGION (region_code, region_name, parent_region_code)
values ('510114', '新都区', '510100');
commit;

--初始化办学性质
prompt Loading K_SCHOOL_NATURE...
insert into K_SCHOOL_NATURE (nature_code, nature_name, nature_remark)
values ('10', '普通中小学/职业中学', null);
insert into K_SCHOOL_NATURE (nature_code, nature_name, nature_remark)
values ('11', '教育部门和集体办', null);
insert into K_SCHOOL_NATURE (nature_code, nature_name, nature_remark)
values ('12', '社会力量办', null);
insert into K_SCHOOL_NATURE (nature_code, nature_name, nature_remark)
values ('19', '其他部门办', null);
insert into K_SCHOOL_NATURE (nature_code, nature_name, nature_remark)
values ('20', '其他中等职业学校', null);
insert into K_SCHOOL_NATURE (nature_code, nature_name, nature_remark)
values ('21', '公办', null);
insert into K_SCHOOL_NATURE (nature_code, nature_name, nature_remark)
values ('22', '民办', null);
insert into K_SCHOOL_NATURE (nature_code, nature_name, nature_remark)
values ('23', '民办公助', null);
insert into K_SCHOOL_NATURE (nature_code, nature_name, nature_remark)
values ('29', '其他', null);
commit;

--初始化学期
insert into K_SEMESTER (se_code, se_name, se_remark)
values ('1', '秋季学期', null);
insert into K_SEMESTER (se_code, se_name, se_remark)
values ('2', '春季学期', null);
insert into K_SEMESTER (se_code, se_name, se_remark)
values ('3', '夏季学期', null);
insert into K_SEMESTER (se_code, se_name, se_remark)
values ('9', '其他', null);
commit;

--初始化性别
insert into K_SEX (sex_code, sex_name)
values ('0', '未知的性别');
insert into K_SEX (sex_code, sex_name)
values ('1', '女性');
insert into K_SEX (sex_code, sex_name)
values ('2', '男性');
insert into K_SEX (sex_code, sex_name)
values ('9', '未说明性别');
commit;

--初始化阶段
insert into K_STAGE (stage_id, stage_name, stage_remark)
values ('01', '小学', null);
insert into K_STAGE (stage_id, stage_name, stage_remark)
values ('02', '初中', null);
insert into K_STAGE (stage_id, stage_name, stage_remark)
values ('03', '高中', null);
commit;

--初始化周次
insert into K_WEEK (week_code, week_name, week_remark)
values ('01', '第1周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('02', '第2周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('03', '第3周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('04', '第4周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('05', '第5周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('06', '第6周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('07', '第7周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('08', '第8周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('09', '第9周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('10', '第10周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('11', '第11周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('12', '第12周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('13', '第13周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('14', '第14周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('15', '第15周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('16', '第16周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('17', '第17周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('18', '第18周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('19', '第19周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('20', '第20周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('21', '第21周', null);
insert into K_WEEK (week_code, week_name, week_remark)
values ('22', '第22周', null);
commit;

--初始化是否标志
insert into K_WHETHER (whether_code, whether_name)
values ('0', '否');
insert into K_WHETHER (whether_code, whether_name)
values ('1', '是');
commit;

--初始化年份
insert into K_YEAR (year_code, year_name)
values ('2009', '2009年');
insert into K_YEAR (year_code, year_name)
values ('2010', '2010年');
insert into K_YEAR (year_code, year_name)
values ('2011', '2011年');
insert into K_YEAR (year_code, year_name)
values ('2012', '2012年');
insert into K_YEAR (year_code, year_name)
values ('2013', '2013年');
insert into K_YEAR (year_code, year_name)
values ('2014', '2014年');
insert into K_YEAR (year_code, year_name)
values ('2015', '2015年');
insert into K_YEAR (year_code, year_name)
values ('2016', '2016年');
insert into K_YEAR (year_code, year_name)
values ('2017', '2017年');
insert into K_YEAR (year_code, year_name)
values ('2018', '2018年');
insert into K_YEAR (year_code, year_name)
values ('2019', '2019年');
insert into K_YEAR (year_code, year_name)
values ('2020', '2020年');
insert into K_YEAR (year_code, year_name)
values ('2021', '2021年');
insert into K_YEAR (year_code, year_name)
values ('2022', '2022年');
insert into K_YEAR (year_code, year_name)
values ('2023', '2023年');
insert into K_YEAR (year_code, year_name)
values ('2024', '2024年');
insert into K_YEAR (year_code, year_name)
values ('2025', '2025年');
insert into K_YEAR (year_code, year_name)
values ('2026', '2026年');
commit;

--学校类别表
create table K_SCHOOL_TYPE
(
  school_type_code NVARCHAR2(2) not null,
  school_type_name NVARCHAR2(20) not null
)
;
comment on table K_SCHOOL_TYPE
  is '学校类别表';
comment on column K_SCHOOL_TYPE.school_type_code
  is '代码';
comment on column K_SCHOOL_TYPE.school_type_name
  is '名称';
alter table K_SCHOOL_TYPE
  add constraint PK_SCHOOL_TYPE_CODE primary key (SCHOOL_TYPE_CODE);

--初始化学校类别表
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('11', '幼儿园');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('21', '小学');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('22', '成人小学');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('31', '普通初中');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('32', '职业初中');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('33', '成人初中');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('34', '普通高中');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('35', '成人高中');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('36', '中等职业学校');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('37', '工读学校');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('41', '普通高等学校');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('42', '成人高等学校');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('51', '特殊教育学校');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('91', '培养研究生的科研机构');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('92', '民办的其他高等教育机构');
insert into K_SCHOOL_TYPE (school_type_code, school_type_name)
values ('93', '中等职业培训机构');
commit;



--活动类型
create table K_ACTIVITY_TYPE
(
  activity_type_id   NVARCHAR2(2) not null,
  activity_type_name NVARCHAR2(50) not null
)
;
comment on table K_ACTIVITY_TYPE
  is '活动类型表';
comment on column K_ACTIVITY_TYPE.activity_type_id
  is '编码';
comment on column K_ACTIVITY_TYPE.activity_type_name
  is '名称';
alter table K_ACTIVITY_TYPE
  add constraint PK_ACTIVITY_TYPE_ID primary key (ACTIVITY_TYPE_ID);

--初始化活动类型表
insert into K_ACTIVITY_TYPE (activity_type_id, activity_type_name)
values ('1', '体育');
insert into K_ACTIVITY_TYPE (activity_type_id, activity_type_name)
values ('2', '美术');
insert into K_ACTIVITY_TYPE (activity_type_id, activity_type_name)
values ('3', '音乐');
commit;