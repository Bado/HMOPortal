USE [Ideal]
GO

/****** Object:  Table [dbo].[aboutab]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[aboutab](
	[compname] [char](40) NOT NULL,
	[dept] [char](40) NULL,
	[add1] [char](35) NULL,
	[add2] [char](35) NULL,
	[add3] [char](35) NULL,
	[logoname] [char](55) NULL,
	[compcode] [char](10) NULL,
	[web] [char](35) NULL,
	[email] [char](35) NULL,
	[logoname2] [char](55) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[abouttab]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[abouttab](
	[compname] [char](40) NOT NULL,
	[dept] [char](40) NOT NULL,
	[add1] [char](35) NOT NULL,
	[add2] [char](35) NOT NULL,
	[add3] [char](35) NOT NULL,
	[logoname] [char](55) NOT NULL,
	[compcode] [char](10) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[aboutview]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[aboutview](
	[compname] [char](35) NOT NULL,
	[logoname] [char](55) NOT NULL,
	[dept] [char](35) NOT NULL,
	[add1] [char](50) NOT NULL,
	[add2] [char](50) NOT NULL,
	[add3] [char](50) NOT NULL,
	[compcode] [char](10) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[accessgp]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[accessgp](
	[grpcode] [char](5) NOT NULL,
	[grpname] [char](20) NULL,
	[atype] [char](1) NULL,
	[admin] [bit] NULL,
	[alert] [bit] NULL,
	[print1] [bit] NULL,
	[updata] [bit] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[accident]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[accident](
	[regno] [char](15) NOT NULL,
	[transno] [char](10) NULL,
	[accdate] [datetime] NULL,
	[accdetail] [text] NULL,
	[place] [char](30) NULL,
	[driverid] [char](10) NULL,
	[compcode] [char](10) NULL,
	[timestamp_column] [timestamp] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[ACCODE]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ACCODE](
	[COPNY] [varchar](2) NOT NULL,
	[ACCODE] [varchar](10) NOT NULL,
	[DESCRIPTN] [varchar](70) NULL,
	[ACTYPE] [varchar](1) NULL,
	[POST_AC] [varchar](10) NULL,
	[ACLEVEL] [varchar](1) NULL,
	[ACPBAL] [numeric](17, 3) NULL,
	[ACTPBAL] [numeric](17, 3) NULL,
	[ACCBAL] [numeric](17, 3) NULL,
	[ACYBLAST] [numeric](17, 3) NULL,
	[ACLASTY] [numeric](17, 3) NULL,
	[ACYTDATE] [numeric](17, 3) NULL,
	[ACBUDGET] [numeric](17, 3) NULL,
	[CURRECY] [varchar](10) NULL,
	[PROVBAL] [numeric](17, 3) NULL,
	[ACPERIOD] [varchar](2) NULL,
	[BANKIND] [varchar](1) NULL,
	[FACIL] [varchar](25) NULL,
	[FACVALUE] [numeric](17, 3) NULL,
	[DURATION] [numeric](4, 0) NULL,
	[INTEREST] [numeric](12, 4) NULL,
	[INTMETHOD] [numeric](1, 0) NULL,
	[PAYTODATE] [numeric](17, 3) NULL,
	[CURPAY] [numeric](17, 3) NULL,
	[COMDATE] [datetime] NULL,
	[DUEDATE] [datetime] NULL,
	[LINKABLE] [varchar](1) NULL,
	[ACACTIVE] [varchar](1) NULL,
	[CONSOLID] [varchar](10) NULL,
	[ACSUBCLASS] [varchar](10) NULL,
	[SECTOR] [varchar](10) NULL,
	[OPENBAL] [numeric](17, 3) NULL,
	[DETAIL] [varchar](1000) NULL,
	[ACHEAD] [char](10) NULL,
	[SUBHEAD] [char](10) NULL,
	[BANKCODE] [char](10) NULL,
	[BRANCHCODE] [char](10) NULL,
	[ctype] [char](15) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[accttab]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[accttab](
	[accountno] [char](12) NOT NULL,
	[description] [char](40) NULL,
	[BALLO] [numeric](18, 2) NULL,
	[EXP] [numeric](18, 2) NULL,
	[BAL] [numeric](18, 2) NULL,
	[allodate] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[advance]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[advance](
	[staffid] [char](18) NOT NULL,
	[pic] [char](10) NULL,
	[amount] [numeric](16, 2) NULL,
	[colldate] [datetime] NULL,
	[startdate] [datetime] NULL,
	[start] [numeric](4, 0) NULL,
	[monthpymt] [numeric](9, 2) NULL,
	[paidtodate] [numeric](9, 2) NULL,
	[stopped] [bit] NULL,
	[datestop] [datetime] NULL,
	[comment] [char](40) NULL,
	[pvalue] [char](12) NULL,
	[period] [numeric](5, 0) NULL,
	[pperiod] [numeric](7, 0) NULL,
	[periodr] [numeric](6, 0) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[area]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[area](
	[areacode] [char](15) NOT NULL,
	[description] [char](30) NULL,
	[towncitycode] [char](10) NULL,
	[statecode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[ashistory]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ashistory](
	[regno] [char](20) NOT NULL,
	[ldate] [datetime] NULL,
	[rel] [char](20) NULL,
	[aval] [char](20) NULL,
	[commen] [char](250) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[ASSEMENTTAB]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ASSEMENTTAB](
	[REGNO] [char](15) NOT NULL,
	[REL] [char](15) NULL,
	[AVAL] [char](15) NULL,
	[LDATE] [datetime] NULL,
	[COMMEN] [char](205) NULL,
	[vpicture] [char](40) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[audittab]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[audittab](
	[userid] [nvarchar](25) NOT NULL,
	[action1] [char](150) NULL,
	[date1] [datetime] NULL,
	[time1] [datetime] NULL,
	[computer] [char](30) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[BANKSETUP]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BANKSETUP](
	[BANKCODE] [nvarchar](20) NOT NULL,
	[BRANCHCODE] [nvarchar](20) NOT NULL,
	[NAMES] [nvarchar](120) NULL,
	[BRANCH] [nvarchar](1200) NULL,
	[CMANAGER1] [nvarchar](30) NULL,
	[CMANAGER2] [nvarchar](30) NULL,
	[CPHONE1] [nvarchar](35) NULL,
	[CPHONE2] [nvarchar](35) NULL,
	[EMAIL] [nvarchar](30) NULL,
	[BTEL] [nvarchar](30) NULL,
	[ADDRESS] [nvarchar](120) NULL,
	[accountid] [nvarchar](30) NULL
) ON [PRIMARY]

GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[brands]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[brands](
	[brandcode] [char](10) NOT NULL,
	[description] [char](30) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[callcharges]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[callcharges](
	[telcode] [char](10) NOT NULL,
	[calltype] [char](15) NULL,
	[charge] [numeric](11, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[carriertbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[carriertbl](
	[carrierid] [char](10) NOT NULL,
	[name] [char](125) NULL,
	[address] [char](135) NULL,
	[statecode] [char](15) NULL,
	[towncode] [char](10) NULL,
	[areacode] [char](15) NULL,
	[cperson] [char](70) NULL,
	[phone1] [char](15) NULL,
	[phone2] [char](15) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[charges]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[charges](
	[clcode] [char](10) NOT NULL,
	[dtot] [char](10) NULL,
	[amount] [numeric](11, 2) NULL,
	[a_ccode] [char](10) NULL,
	[compcode] [char](10) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[charrate]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[charrate](
	[chgcode] [char](10) NOT NULL,
	[fleetcode] [char](15) NULL,
	[descrp] [char](90) NULL,
	[unitchg] [char](10) NULL,
	[chrrate] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[charrateedit]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[charrateedit](
	[clcode] [char](15) NOT NULL,
	[dtot] [char](10) NULL,
	[amount] [numeric](11, 2) NULL,
	[a_ccode] [char](10) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[chartype]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[chartype](
	[code] [char](15) NOT NULL,
	[descr] [char](25) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[codestab]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[codestab](
	[code] [char](15) NOT NULL,
	[descr] [char](130) NULL,
	[option1] [char](3) NULL,
	[price] [numeric](18, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[compdata]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[compdata](
	[name] [char](25) NOT NULL,
	[company] [char](50) NULL,
	[address1] [char](50) NULL,
	[address2] [char](50) NULL,
	[complogo] [char](60) NULL,
	[reporthead] [char](26) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[custtab]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[custtab](
	[custcode] [char](15) NOT NULL,
	[custname] [char](90) NULL,
	[address1] [char](50) NULL,
	[l_code] [char](10) NULL,
	[jobnature] [char](50) NULL,
	[email] [char](35) NULL,
	[wsite] [char](35) NULL,
	[phone] [char](15) NULL,
	[fax] [char](15) NULL,
	[statecode] [char](10) NULL,
	[towncitycode] [char](10) NULL,
	[areacode] [char](15) NULL,
	[obal] [numeric](18, 2) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[datesetup]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[datesetup](
	[year1] [char](10) NULL,
	[month1] [numeric](18, 0) NULL,
	[days] [numeric](18, 0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[default1]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[default1](
	[staffid] [char](18) NULL,
	[pic] [char](10) NULL,
	[pictype] [numeric](2, 0) NULL,
	[amount] [numeric](15, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[depttbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[depttbl](
	[deptcode] [char](10) NOT NULL,
	[department] [char](90) NULL,
	[l_code] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[dirphone]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[dirphone](
	[dphoneno] [char](15) NOT NULL,
	[alocation] [char](50) NOT NULL,
	[alloted] [char](1) NOT NULL,
	[switchboard] [char](1) NOT NULL,
	[carrier] [char](10) NOT NULL,
	[compcode] [char](10) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[disbtbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[disbtbl](
	[trans_id] [char](10) NOT NULL,
	[accountno] [char](60) NULL,
	[refcode] [char](15) NULL,
	[issuedto] [char](35) NULL,
	[deptcode] [char](10) NULL,
	[seccode] [char](10) NULL,
	[paytype] [char](20) NULL,
	[vourchno] [char](12) NULL,
	[transtype] [char](10) NULL,
	[trans_date] [datetime] NULL,
	[valueamt] [numeric](11, 2) NULL,
	[remark] [char](50) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[fleetgroup]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[fleetgroup](
	[groupcode] [char](10) NOT NULL,
	[description] [char](30) NULL,
	[bcode] [char](15) NULL,
	[ballo] [numeric](18, 2) NULL,
	[bexpen] [numeric](18, 2) NULL,
	[balance] [numeric](18, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[fleetsetuptb]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[fleetsetuptb](
	[fleetcode] [char](10) NOT NULL,
	[ftype] [char](70) NULL,
	[groupcode] [char](10) NULL,
	[brandcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[foo]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[foo](
	[gen1] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[ftrackingm]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ftrackingm](
	[regno] [char](25) NOT NULL,
	[modelmake] [char](205) NULL,
	[ldate] [datetime] NULL,
	[l_code] [char](205) NULL,
	[driver] [char](205) NULL,
	[assignto] [char](205) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[fueltbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[fueltbl](
	[transno] [char](10) NOT NULL,
	[regno] [char](15) NULL,
	[datefueled] [datetime] NULL,
	[value_amt] [numeric](15, 2) NULL,
	[amtper] [numeric](15, 2) NULL,
	[driverid] [char](10) NULL,
	[liters] [numeric](15, 2) NULL,
	[pmeter] [numeric](12, 0) NULL,
	[cmeter] [numeric](12, 0) NULL,
	[metercd] [numeric](12, 0) NULL,
	[compcode] [char](10) NULL,
	[custcode] [char](15) NULL,
	[deptcode] [char](15) NULL,
	[comment] [char](205) NULL,
	[tankid] [char](25) NULL,
	[source] [char](25) NULL,
	[ftype] [char](25) NULL,
	[cby] [char](25) NULL,
	[appby] [char](25) NULL,
	[ballo] [numeric](15, 2) NULL,
	[exp] [numeric](15, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[grpacctinfo]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[grpacctinfo](
	[grpcode] [char](5) NOT NULL,
	[menucode] [char](5) NULL,
	[mtype] [char](1) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[history]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[history](
	[chigcode] [char](10) NOT NULL,
	[fltype] [char](10) NULL,
	[descrp] [char](50) NULL,
	[unitchg] [int] NULL,
	[chgrate] [int] NULL,
	[datecng] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[inmailtbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[inmailtbl](
	[mail_code] [char](10) NOT NULL,
	[mail_date] [datetime] NULL,
	[courier] [char](30) NULL,
	[description] [char](30) NULL,
	[source] [char](40) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[insurancetbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[insurancetbl](
	[regno] [char](15) NOT NULL,
	[licencecode] [char](20) NULL,
	[dateinsured] [datetime] NULL,
	[expdate] [datetime] NULL,
	[amount] [numeric](18, 2) NULL,
	[ballo] [numeric](18, 2) NULL,
	[exp] [numeric](18, 2) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[invoicepay]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[invoicepay](
	[invoiceno] [char](25) NOT NULL,
	[indate] [datetime] NULL,
	[billname] [char](75) NULL,
	[billadd] [char](205) NULL,
	[amtr] [numeric](18, 2) NULL,
	[ptype] [char](25) NULL,
	[chequeid] [char](25) NULL,
	[cardid] [char](25) NULL,
	[cardname] [char](155) NULL,
	[cardm] [char](4) NULL,
	[cardy] [char](6) NULL,
	[cardtrans] [char](125) NULL,
	[otherscode] [char](205) NULL,
	[custcode] [char](25) NULL,
	[accountno] [char](25) NULL,
	[refcode] [char](25) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[invoicerec]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[invoicerec](
	[regno] [char](15) NOT NULL,
	[transno] [char](15) NOT NULL,
	[invoiceno] [char](25) NULL,
	[indate] [datetime] NULL,
	[billname] [char](95) NULL,
	[billadd] [char](180) NULL,
	[wamt] [numeric](18, 2) NULL,
	[damt] [numeric](18, 2) NULL,
	[tamt] [numeric](18, 2) NULL,
	[itotal] [numeric](18, 2) NULL,
	[note] [char](205) NULL,
	[custcode] [char](25) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[licencetbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[licencetbl](
	[licencecode] [char](10) NOT NULL,
	[licencename] [char](90) NULL,
	[company] [char](30) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[locatbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[locatbl](
	[l_code] [char](10) NOT NULL,
	[location] [char](85) NULL,
	[address1] [char](85) NULL,
	[address2] [char](45) NULL,
	[areacode] [char](15) NULL,
	[towncitycode] [char](10) NULL,
	[statecode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[lpotbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[lpotbl](
	[lpo_no] [char](12) NOT NULL,
	[deptcode] [char](10) NULL,
	[seccode] [char](10) NULL,
	[purpose] [char](50) NULL,
	[value_amt] [numeric](18, 2) NULL,
	[issued_to] [char](30) NULL,
	[issued_date] [datetime] NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[mailedit]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[mailedit](
	[mail_code] [char](10) NOT NULL,
	[mail_date] [datetime] NULL,
	[courier] [char](60) NULL,
	[description] [char](90) NULL,
	[destination] [char](40) NULL,
	[cost] [numeric](11, 2) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[maintitemstbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[maintitemstbl](
	[itemcode] [char](10) NOT NULL,
	[item] [char](80) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[menutable]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[menutable](
	[menucode] [char](5) NOT NULL,
	[menuname] [char](90) NULL,
	[menuvar] [char](90) NULL,
	[groupcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[mitemused]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[mitemused](
	[transno] [char](10) NOT NULL,
	[itemcode] [char](10) NULL,
	[descr] [char](120) NULL,
	[qty] [numeric](8, 2) NULL,
	[uprice] [numeric](8, 2) NULL,
	[amount] [numeric](11, 2) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[mschedule]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[mschedule](
	[worder] [char](15) NOT NULL,
	[sdate] [datetime] NULL,
	[regno] [char](15) NULL,
	[deptcode] [char](15) NULL,
	[repairtype] [char](15) NULL,
	[custcodet] [char](15) NULL,
	[custcode] [char](15) NULL,
	[sby] [char](15) NULL,
	[stop] [bit] NULL,
 CONSTRAINT [PK_mschedule] PRIMARY KEY CLUSTERED 
(
	[worder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[OPRTAB]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[OPRTAB](
	[REGNO] [char](20) NOT NULL,
	[TDATE] [datetime] NULL,
	[PCARRIED] [numeric](18, 2) NULL,
	[KOPERATED] [numeric](18, 2) NULL,
	[HOURSDDRIVER] [numeric](18, 2) NULL,
	[HOURSDCOND] [numeric](18, 2) NULL,
	[SKILOM] [numeric](18, 2) NULL,
	[USKILOM] [numeric](18, 2) NULL,
	[SKILOMNOPT] [numeric](18, 2) NULL,
	[APEAKP] [char](20) NULL,
	[NAPEAKP] [char](20) NULL,
	[compcode] [char](20) NULL,
	[driver] [char](20) NULL,
	[cond] [char](20) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[OPRTABb]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[OPRTABb](
	[REGNO] [char](20) NOT NULL,
	[TDATE] [datetime] NULL,
	[PCARRIED] [numeric](18, 2) NULL,
	[KOPERATED] [numeric](18, 2) NULL,
	[HOURSDDRIVER] [numeric](18, 2) NULL,
	[HOURSDCOND] [numeric](18, 2) NULL,
	[SKILOM] [numeric](18, 2) NULL,
	[USKILOM] [numeric](18, 2) NULL,
	[SKILOMNOPT] [numeric](18, 2) NULL,
	[APEAKP] [char](20) NULL,
	[NAPEAKP] [char](20) NULL,
	[compcode] [char](20) NULL,
	[driver] [char](20) NULL,
	[cond] [char](20) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[payhist]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[payhist](
	[staffid] [char](18) NOT NULL,
	[pic] [char](10) NULL,
	[compcode] [char](10) NULL,
	[pictype] [numeric](1, 0) NULL,
	[expcode] [char](10) NULL,
	[taxable] [bit] NULL,
	[scheme] [bit] NULL,
	[advance] [bit] NULL,
	[gradelvl] [char](10) NULL,
	[accountid] [char](10) NULL,
	[bankid] [char](10) NULL,
	[deptcode] [char](10) NULL,
	[pamount] [numeric](15, 2) NULL,
	[suspended] [bit] NULL,
	[period] [numeric](2, 0) NULL,
	[itemstatus] [bit] NULL,
	[paycaldate] [datetime] NULL,
	[year] [char](10) NULL,
	[month] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[payitems]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[payitems](
	[pic] [char](10) NOT NULL,
	[picdesc] [char](65) NULL,
	[pictype] [numeric](4, 0) NULL,
	[itemstatus] [bit] NULL,
	[related] [char](10) NULL,
	[percent1] [numeric](4, 0) NULL,
	[amount] [numeric](16, 2) NULL,
	[classtype] [numeric](4, 0) NULL,
	[expcode] [char](10) NULL,
	[ovtype] [numeric](4, 0) NULL,
	[weekly] [bit] NULL,
	[midmonth] [bit] NULL,
	[endmonth] [bit] NULL,
	[accumulate] [char](10) NULL,
	[taxable] [bit] NULL,
	[scheme] [bit] NULL,
	[advance] [bit] NULL,
	[pretax] [bit] NULL,
	[freeitem] [bit] NULL,
	[acctmode] [numeric](4, 0) NULL,
	[perallow] [bit] NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[paysum]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[paysum](
	[staffid] [char](18) NOT NULL,
	[pic] [char](10) NULL,
	[compcode] [char](10) NULL,
	[pictype] [numeric](1, 0) NULL,
	[expcode] [char](10) NULL,
	[taxable] [bit] NULL,
	[scheme] [bit] NULL,
	[advance] [bit] NULL,
	[gradelvl] [char](10) NULL,
	[accountid] [char](10) NULL,
	[bankid] [char](10) NULL,
	[deptcode] [char](10) NULL,
	[pamount] [numeric](15, 2) NULL,
	[suspended] [bit] NULL,
	[period] [numeric](2, 0) NULL,
	[itemstatus] [bit] NULL,
	[paycaldate] [datetime] NULL,
	[year] [char](10) NULL,
	[month] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[pcompaccess]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[pcompaccess](
	[userid] [char](10) NOT NULL,
	[grpcode] [char](10) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[phoneext]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[phoneext](
	[office_ext] [char](8) NOT NULL,
	[officecode] [char](10) NULL,
	[staffid] [char](15) NULL,
	[drectphoneno] [char](20) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[phoneoffice]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[phoneoffice](
	[officecode] [char](10) NOT NULL,
	[officename] [char](85) NULL,
	[deptcode] [char](10) NULL,
	[seccode] [char](10) NULL,
	[remarks] [char](220) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[reftab]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[reftab](
	[refcode] [char](10) NOT NULL,
	[description] [char](90) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[reportinfo]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[reportinfo](
	[reportid] [char](4) NULL,
	[reptypeid] [char](3) NULL,
	[reportname] [char](70) NULL,
	[description] [char](100) NULL,
	[options] [bit] NULL,
	[type] [int] NULL,
	[userid] [char](19) NULL,
	[available] [bit] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[reports]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[reports](
	[reportid] [char](4) NOT NULL,
	[reptypeid] [char](3) NULL,
	[reportname] [char](70) NULL,
	[description] [char](100) NULL,
	[options] [bit] NULL,
	[type] [int] NULL,
	[sorder] [numeric](18, 0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[reporttypes]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[reporttypes](
	[reptypeid] [char](3) NOT NULL,
	[typename] [char](25) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[section]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[section](
	[seccode] [char](10) NOT NULL,
	[description] [char](90) NULL,
	[deptcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[SETUPTAB]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SETUPTAB](
	[minirel] [numeric](18, 2) NULL,
	[minaval] [numeric](18, 2) NULL,
	[maxhour] [numeric](18, 2) NULL,
	[minifuel] [numeric](18, 2) NULL,
	[minirepair] [numeric](18, 2) NULL,
	[mschedudays] [numeric](18, 2) NULL,
	[fuelallert] [numeric](18, 2) NULL
) ON [PRIMARY]

GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[sparepurchase]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sparepurchase](
	[invoiceno] [char](15) NOT NULL,
	[itemcode] [char](10) NULL,
	[staffid] [char](10) NULL,
	[pupose] [char](120) NULL,
	[quantity] [numeric](18, 2) NULL,
	[valueamt] [numeric](18, 2) NULL,
	[value_date] [datetime] NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[stafftab]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[stafftab](
	[staffid] [char](15) NOT NULL,
	[surname] [char](30) NULL,
	[othernames] [char](40) NULL,
	[initials] [char](5) NULL,
	[deptcode] [char](10) NULL,
	[seccode] [char](10) NULL,
	[gradelvl] [char](10) NULL,
	[paystatus] [float] NULL,
	[stafftype] [float] NULL,
	[taxable] [bit] NULL,
	[accountid] [char](10) NULL,
	[overtime] [bit] NULL,
	[taxregion] [char](10) NULL,
	[union_] [bit] NULL,
	[bankid] [char](10) NULL,
	[suspended] [bit] NULL,
	[positionid] [char](10) NULL,
	[title] [char](10) NULL,
	[sex] [char](8) NULL,
	[children] [float] NULL,
	[relatives] [float] NULL,
	[housecode] [char](10) NULL,
	[paywhen] [float] NULL,
	[disable] [bit] NULL,
	[lastpay] [float] NULL,
	[status] [float] NULL,
	[compcode] [char](10) NULL,
	[spicture] [char](30) NULL,
	[dnumber] [char](50) NULL,
	[dclass] [char](30) NULL,
	[dl_code] [char](30) NULL,
	[expdate] [datetime] NULL,
	[isudate] [datetime] NULL,
	[dofb] [datetime] NULL,
	[djoin] [datetime] NULL,
	[state] [char](20) NULL,
	[country] [char](20) NULL,
	[branch] [char](20) NULL,
	[accttype] [char](20) NULL,
	[cat] [char](20) NULL,
	[ldpromoted] [datetime] NULL,
	[scode] [char](20) NULL,
	[email] [char](20) NULL,
	[tel] [char](20) NULL,
	[address] [char](220) NULL,
	[sffecdate] [datetime] NULL,
	[wdays] [numeric](18, 2) NULL,
	[ftax] [numeric](18, 2) NULL,
	[picpath] [char](220) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[state]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[state](
	[statecode] [char](10) NOT NULL,
	[statename] [char](20) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[storeitemstbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[storeitemstbl](
	[itemcode] [char](10) NOT NULL,
	[item] [char](30) NULL,
	[qtyinstock] [numeric](18, 2) NULL,
	[balqty] [numeric](18, 2) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[storetrans]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[storetrans](
	[transcode] [char](10) NOT NULL,
	[vourcherno] [char](12) NULL,
	[itemcode] [char](10) NULL,
	[whom] [char](10) NULL,
	[datecoll] [datetime] NULL,
	[qty] [numeric](18, 2) NULL,
	[ttype] [char](10) NULL,
	[uprice] [numeric](9, 2) NULL,
	[amount] [numeric](11, 2) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[strequtbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[strequtbl](
	[itemcode] [char](10) NOT NULL,
	[deptcode] [char](10) NULL,
	[qtyinstock] [numeric](18, 2) NULL,
	[qtyreq] [numeric](18, 2) NULL,
	[qty] [numeric](18, 2) NULL,
	[coll_staffid] [char](10) NULL,
	[date_req] [datetime] NULL,
	[req_code] [char](10) NULL,
	[seccode] [char](10) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[summary]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[summary](
	[staffid] [char](30) NOT NULL,
	[grosstd] [numeric](15, 2) NULL,
	[freetd] [numeric](15, 2) NULL,
	[taxtd] [numeric](15, 2) NULL,
	[taxgross] [numeric](15, 2) NULL,
	[taxpayable] [numeric](15, 2) NULL,
	[fixedtax] [numeric](15, 2) NULL,
	[freepay] [numeric](15, 2) NULL,
	[earnings] [numeric](15, 2) NULL,
	[totalallow] [numeric](15, 2) NULL,
	[totaldeduc] [numeric](15, 2) NULL,
	[net] [numeric](15, 2) NULL,
	[paid] [numeric](15, 2) NULL,
	[compcode] [char](10) NULL,
	[taxable] [bit] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[tanksetup]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tanksetup](
	[tankid] [char](30) NOT NULL,
	[descr] [char](130) NULL,
	[capacity] [numeric](18, 2) NULL,
	[clevel] [numeric](18, 2) NULL,
	[rlevel] [numeric](18, 2) NULL,
	[ftype] [char](30) NULL,
	[bcode] [char](30) NULL,
	[lcode] [char](30) NULL,
	[compcode] [char](20) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[tankupdate]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tankupdate](
	[tankid] [char](30) NOT NULL,
	[pdate] [datetime] NULL,
	[qty] [numeric](18, 2) NULL,
	[price] [numeric](18, 2) NULL,
	[value] [numeric](18, 2) NULL,
	[vendor] [char](30) NULL,
	[pby] [char](30) NULL,
	[cby] [char](30) NULL,
	[appby] [char](30) NULL,
	[invno] [char](30) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[tbiltbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbiltbl](
	[phone_no] [char](15) NOT NULL,
	[bill_date] [datetime] NULL,
	[byear] [char](4) NULL,
	[bill_amt] [numeric](11, 2) NULL,
	[date_paid] [datetime] NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[telusagetbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[telusagetbl](
	[staffid] [char](10) NOT NULL,
	[dateused] [datetime] NULL,
	[timespent] [numeric](9, 2) NULL,
	[phone_no] [char](20) NULL,
	[purpose] [char](90) NULL,
	[official] [char](2) NULL,
	[chargeable] [char](2) NULL,
	[calltype] [char](13) NULL,
	[dialno] [char](20) NULL,
	[compcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[ticketier]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ticketier](
	[regno] [char](10) NOT NULL,
	[tdate] [datetime] NULL,
	[ttype] [char](10) NULL,
	[qty] [numeric](18, 2) NULL,
	[uprice] [numeric](18, 2) NULL,
	[amount] [numeric](18, 2) NULL,
	[accountno] [char](20) NULL,
	[compcode] [char](10) NULL,
	[driver] [char](20) NULL,
	[cond] [char](20) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[ticketierr]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ticketierr](
	[regno] [char](10) NOT NULL,
	[tdate] [datetime] NULL,
	[ttype] [char](10) NULL,
	[qty] [numeric](18, 2) NULL,
	[uprice] [numeric](18, 2) NULL,
	[amount] [numeric](18, 2) NULL,
	[accountno] [char](20) NULL,
	[compcode] [char](10) NULL,
	[driver] [char](20) NULL,
	[cond] [char](20) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[towncity]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[towncity](
	[towncitycode] [char](10) NOT NULL,
	[description] [char](90) NULL,
	[statecode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[useracct]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[useracct](
	[userid] [char](15) NOT NULL,
	[password] [char](50) NULL,
	[names] [char](50) NULL,
	[email] [char](50) NULL,
	[admin] [bit] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[useracctinfo]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[useracctinfo](
	[userid] [char](18) NULL,
	[menucode] [char](10) NULL,
	[menuvar] [char](15) NULL,
	[available] [bit] NULL,
	[groupcode] [char](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[useracctinfo2]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[useracctinfo2](
	[userid] [char](18) NULL,
	[menucode] [char](10) NULL,
	[menuvar] [char](15) NULL,
	[available] [bit] NULL,
	[groupcode] [char](10) NULL,
	[access] [bit] NULL,
	[cat] [char](15) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[vehiclemovtbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[vehiclemovtbl](
	[regno] [char](15) NOT NULL,
	[transno] [char](10) NULL,
	[driverid] [char](10) NULL,
	[l_code] [char](10) NULL,
	[destination] [char](95) NULL,
	[depart_date] [datetime] NULL,
	[expreturn_date] [datetime] NULL,
	[arivaldate] [datetime] NULL,
	[chargable] [char](1) NULL,
	[clcode] [char](10) NULL,
	[chartype] [char](10) NULL,
	[charcode] [char](10) NULL,
	[nofunit] [numeric](9, 2) NULL,
	[amount] [numeric](11, 2) NULL,
	[comment] [text] NULL,
	[compcode] [char](10) NULL,
	[timestamp_column] [timestamp] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[vehmaintbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[vehmaintbl](
	[transno] [char](10) NOT NULL,
	[regno] [char](12) NULL,
	[service_date] [datetime] NULL,
	[nextservicedate] [datetime] NULL,
	[amountspent] [numeric](12, 2) NULL,
	[description] [text] NULL,
	[repairtype] [char](30) NULL,
	[nrserval] [numeric](12, 0) NULL,
	[custcode] [char](10) NULL,
	[compcode] [char](10) NULL,
	[custcodet] [char](10) NULL,
	[labor] [numeric](12, 2) NULL,
	[deptcode] [nchar](10) NULL,
	[appby] [char](20) NULL,
	[timestamp_column] [timestamp] NULL,
	[ballo] [numeric](15, 2) NULL,
	[exp] [numeric](15, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [Ideal]
GO

/****** Object:  Table [dbo].[vehregtbl]    Script Date: 04/15/2014 17:37:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[vehregtbl](
	[regno] [char](15) NOT NULL,
	[fleetcode] [char](10) NULL,
	[chasino] [char](25) NULL,
	[engno] [char](25) NULL,
	[model] [char](20) NULL,
	[purchasedate] [datetime] NULL,
	[amount] [numeric](11, 2) NULL,
	[driverid] [char](10) NULL,
	[deptcode] [char](10) NULL,
	[officerid] [char](10) NULL,
	[capacity] [char](15) NULL,
	[seccode] [char](10) NULL,
	[pmeter] [numeric](12, 0) NULL,
	[cmeter] [numeric](12, 0) NULL,
	[update1] [datetime] NULL,
	[umeasure] [char](25) NULL,
	[ubservice] [numeric](10, 0) NULL,
	[lhour] [numeric](10, 2) NULL,
	[chour] [numeric](10, 2) NULL,
	[fgroup] [char](30) NULL,
	[fclass] [char](30) NULL,
	[vendor] [char](30) NULL,
	[ftype] [char](30) NULL,
	[incomp] [char](30) NULL,
	[policy] [char](30) NULL,
	[pdate] [datetime] NULL,
	[pexpdate] [datetime] NULL,
	[dcost] [numeric](10, 2) NULL,
	[dresidual] [numeric](10, 2) NULL,
	[dlife] [numeric](10, 2) NULL,
	[dannu] [numeric](10, 2) NULL,
	[vnetworth] [numeric](10, 2) NULL,
	[vpicture] [char](30) NULL,
	[vby] [char](30) NULL,
	[sby] [bit] NULL,
	[vmake] [char](30) NULL,
	[cyear] [char](5) NULL,
	[L_Code] [char](15) NULL,
	[chourtodate] [numeric](18, 2) NULL,
	[dvalue] [char](10) NULL,
	[colorr] [char](30) NULL,
	[compcode] [char](10) NULL,
	[fignore] [bit] NULL,
	[rignore] [bit] NULL,
	[vpicture2] [text] NULL,
	[allodate] [datetime] NULL,
	[alloappby] [char](30) NULL,
	[nwdate] [datetime] NULL,
	[accountno] [char](25) NULL,
	[asstdriverid] [char](10) NULL,
	[rentp] [numeric](18, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


