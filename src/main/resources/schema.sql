
-- Create table
create table GPLATFORM
(
  gplatform_id       NUMBER not null,
  gplatform_code     VARCHAR2(100),
  gplatform_desc     VARCHAR2(4000),
  create_date        DATE,
  last_modified_date DATE,
  is_active          NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table GPLATFORM
  add primary key (GPLATFORM_ID); 
  
-- Create table
create table PRODUCT
(
  product_id         NUMBER not null,
  product_name       VARCHAR2(100),
  product_desc       VARCHAR2(4000),
  price              NUMBER,
  create_date        DATE,
  last_modified_date DATE,
  is_active          NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table PRODUCT
  add primary key (PRODUCT_ID);
 
 
-- Create table
create table GUSER
(
  guser_id                 NUMBER not null,
  first_name               VARCHAR2(100),
  username                 VARCHAR2(100),
  last_name                VARCHAR2(100),
  email                    VARCHAR2(100),
  global_identification_no VARCHAR2(200),
  create_date              DATE,
  last_modified_date       DATE,
  is_active                NUMBER(1),
  is_admin                                                   NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table GUSER
  add primary key (GUSER_ID);
 
/*-- Create table
create table GPRODUCT
(
  gproduct_id        NUMBER,
  gproduct_name      VARCHAR2(100),
  gproduct_desc      VARCHAR2(4000),
  create_date        DATE,
  last_modified_date DATE,
  is_active          NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table GPRODUCT
  add primary key (GPRODUCT_ID);
*/
-- Create table
create table GCURRENCY
(
  gcurrency_id       NUMBER not null,
  currency_code      VARCHAR2(100),
  currency_desc      VARCHAR2(4000),
  create_date        DATE,
  last_modified_date DATE,
  is_active          NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table GCURRENCY
  add primary key (GCURRENCY_ID);
 
-- Create table
create table GACTIVITY
(
  gactivity_id       NUMBER not null,
  gactivity_name     VARCHAR2(100),
  gactivity_desc     VARCHAR2(4000),
  activity_point     NUMBER,
  create_date        DATE,
  last_modified_date DATE,
  is_active          NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table GACTIVITY
  add primary key (GACTIVITY_ID);
 
  -- Create table
create table GREEN_INITIATIVE
(
  green_init_id      NUMBER not null,
  green_init_name    VARCHAR2(100),
  green_init_desc    VARCHAR2(4000),
  create_date        DATE,
  last_modified_date DATE,
  is_active          NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table GREEN_INITIATIVE
  add primary key (GREEN_INIT_ID);
 
-- Create table
create table GREWARD
(
  greward_id         NUMBER not null,
  greward_name       VARCHAR2(100),
  greward_desc       VARCHAR2(4000),
  min_point          NUMBER,
  create_date        DATE,
  last_modified_date DATE,
  is_active          NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table GREWARD
  add primary key (GREWARD_ID);
 
-- Create table
create table GCHALLENGE
(
  gchallenge_id      NUMBER not null,
  gactivity_id       NUMBER,
  by_guser_id        NUMBER,
  to_guser_id        NUMBER,
  create_date        DATE,
  last_modified_date DATE,
  is_active          NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table GCHALLENGE
  add primary key (GCHALLENGE_ID);
alter table GCHALLENGE
  add constraint FK_GACTIVITY_ID foreign key (GACTIVITY_ID)
  references GACTIVITY (GACTIVITY_ID);
 
-- Create table
create table LNK_GUSER_GREWARD
(
  lnk_guser_greward_id NUMBER not null,
  guser_id             NUMBER,
  greward_id           NUMBER,
  create_date          DATE,
  last_modified_date   DATE,
  is_active            NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table LNK_GUSER_GREWARD
  add primary key (LNK_GUSER_GREWARD_ID);
alter table LNK_GUSER_GREWARD
  add constraint FK_GU_GR_GUSER_ID foreign key (GUSER_ID)
  references GUSER (GUSER_ID);
alter table LNK_GUSER_GREWARD
  add constraint FK_GU_GR_GREW_ID foreign key (GREWARD_ID)
  references GREWARD(GREWARD_ID); 
 
-- Create table
create table LNK_GUSER_GPOINT
(
  lnk_guser_point_id NUMBER not null,
  guser_id           NUMBER,
  gactivity_id       NUMBER,
  gpoint             NUMBER,
  gchallenge_id      NUMBER,
  gcomment           VARCHAR2(4000),
  create_date        DATE,
  last_modified_date DATE,
  is_active          NUMBER(1),
  is_approved        NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table LNK_GUSER_GPOINT
  add primary key (LNK_GUSER_POINT_ID);
alter table LNK_GUSER_GPOINT
  add constraint FK_GU_GP_GUSER_ID foreign key (GUSER_ID)
  references GUSER (GUSER_ID);
alter table LNK_GUSER_GPOINT
  add constraint FK_GU_GP_GACT_ID foreign key (GACTIVITY_ID)
  references GACTIVITY(GACTIVITY_ID); 
alter table LNK_GUSER_GPOINT
  add constraint FK_GU_GP_GCHA_ID foreign key (GCHALLENGE_ID)
  references GCHALLENGE(GCHALLENGE_ID);   
  
-- Create table
create table LNK_GUSER_GCONTR
(
  lnk_guser_gcontr_id NUMBER not null,
  guser_id            NUMBER,
  green_init_id       NUMBER,
  donation_amount     NUMBER,
  gcurrency_id         NUMBER,
  create_date         DATE,
  last_modified_date  DATE,
  transaction_date    DATE,
  received_date       DATE,
  transaction_id      VARCHAR2(100),
  platform_id         NUMBER,
  is_active           NUMBER
);
-- Create/Recreate primary, unique and foreign key constraints
alter table LNK_GUSER_GCONTR
  add primary key (LNK_GUSER_GCONTR_ID);
alter table LNK_GUSER_GCONTR
  add constraint FK_GU_GC_GUSER_ID foreign key (GUSER_ID)
  references GUSER (GUSER_ID); 
alter table LNK_GUSER_GCONTR
  add constraint FK_GU_GC_GINIT_ID foreign key (GREEN_INIT_ID)
  references GREEN_INITIATIVE(GREEN_INIT_ID);
alter table LNK_GUSER_GCONTR
  add constraint FK_GU_GC_GCURR_ID foreign key (GCURRENCY_ID)
  references GCURRENCY(GCURRENCY_ID);
alter table LNK_GUSER_GCONTR
  add constraint UK_GU_GC_TRAN_ID unique (TRANSACTION_ID); 
  
-- Create table
create table GCURRENCY_CONV_RATE
(
  gcurrency_conv_rate_id NUMBER not null,
  src_currency           VARCHAR2(100),
  dest_currency          VARCHAR2(100),
  conversion_rate        NUMBER,
  create_date            DATE,
  last_modified_date     DATE,
  is_active              NUMBER(1)
);
-- Create/Recreate primary, unique and foreign key constraints
alter table GCURRENCY_CONV_RATE
  add primary key (GCURRENCY_CONV_RATE_ID);
 
--drop sequence seq_guser_id;
--drop sequence seq_gactivity_id;
--drop sequence seq_gcurrency_id;
--drop sequence seq_green_init_id;
--drop sequence seq_greward_id;
 
create sequence seq_guser_id start with 1 increment by 1;
 
create sequence seq_gactivity_id start with 1 increment by 1;
 
create sequence seq_gcurrency_id start with 1 increment by 1 ;
 
create sequence seq_green_init_id start with 1 increment by 1 ;
 
create sequence seq_greward_id start with 1 increment by 1 ;
create sequence seq_lnk_gu_gpt start with 1 increment by 1;

