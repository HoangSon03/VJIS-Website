USE [admin_langda]
GO
/****** Object:  Table [dbo].[admin_AccessGroupUserForm]    Script Date: 12/16/2019 10:45:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_AccessGroupUserForm](
	[guf_id] [int] IDENTITY(1,1) NOT NULL,
	[guf_active] [bit] NULL,
	[groupuser_id] [int] NULL,
	[form_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[guf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_AccessGroupUserModule]    Script Date: 12/16/2019 10:45:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_AccessGroupUserModule](
	[gum_id] [int] IDENTITY(1,1) NOT NULL,
	[gum_active] [bit] NULL,
	[groupuser_id] [int] NULL,
	[module_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[gum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_AccessUserForm]    Script Date: 12/16/2019 10:45:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_AccessUserForm](
	[uf_id] [int] IDENTITY(1,1) NOT NULL,
	[uf_active] [bit] NULL,
	[username_id] [int] NULL,
	[form_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_Form]    Script Date: 12/16/2019 10:45:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_Form](
	[form_id] [int] IDENTITY(1,1) NOT NULL,
	[form_position] [int] NULL,
	[form_name] [nvarchar](max) NULL,
	[form_link] [nvarchar](max) NULL,
	[form_active] [bit] NULL,
	[module_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[form_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_GroupUser]    Script Date: 12/16/2019 10:45:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_GroupUser](
	[groupuser_id] [int] IDENTITY(1,1) NOT NULL,
	[groupuser_name] [nvarchar](max) NULL,
	[groupuser_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[groupuser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_Module]    Script Date: 12/16/2019 10:45:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_Module](
	[module_id] [int] IDENTITY(1,1) NOT NULL,
	[module_position] [int] NULL,
	[module_name] [nvarchar](max) NULL,
	[module_icon] [nvarchar](max) NULL,
	[module_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[module_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_User]    Script Date: 12/16/2019 10:45:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_User](
	[username_id] [int] IDENTITY(1,1) NOT NULL,
	[username_username] [nvarchar](max) NULL,
	[username_password] [nvarchar](max) NULL,
	[username_fullname] [nvarchar](max) NULL,
	[username_gender] [bit] NULL,
	[username_phone] [nvarchar](max) NULL,
	[username_email] [nvarchar](max) NULL,
	[username_active] [bit] NULL,
	[groupuser_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[admin_AccessGroupUserForm] ON 

INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (2, 1, 1, 2)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (3, 1, 1, 3)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (4, 1, 1, 4)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (5, 1, 1, 5)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (6, 1, 1, 6)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (7, 1, 1, 7)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (8, 1, 1, 8)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (9, 1, 1, 9)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (10, 1, 1, 10)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (11, 1, 1, 11)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (12, 1, 1, 12)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (13, 1, 1, 13)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (14, 1, 1, 14)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (15, 1, 1, 15)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (16, 1, 1, 16)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (17, 1, 1, 17)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (18, 1, 1, 18)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (19, 1, 2, 6)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (20, 1, 2, 7)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (21, 1, 2, 8)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (22, 1, 2, 9)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (23, 1, 2, 10)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (24, 1, 2, 11)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (25, 0, 2, 12)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (26, 1, 2, 13)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (27, 1, 2, 14)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (28, 1, 2, 15)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (29, 1, 2, 16)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (30, 1, 2, 17)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (31, 1, 2, 18)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (36, 0, 2, 5)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (37, 1, 1, 19)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (38, 0, 2, 19)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (39, 0, 3, 15)
SET IDENTITY_INSERT [dbo].[admin_AccessGroupUserForm] OFF
SET IDENTITY_INSERT [dbo].[admin_AccessGroupUserModule] ON 

INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (2, 1, 1, 2)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (3, 1, 1, 3)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (4, 1, 1, 4)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (5, 1, 1, 5)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (6, 1, 1, 6)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (7, 1, 1, 7)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (8, 1, 1, 8)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (9, 1, 2, 4)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (10, 1, 2, 5)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (11, 0, 2, 6)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (12, 1, 2, 7)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (13, 1, 2, 8)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (19, 0, 2, 3)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (20, 0, 3, 7)
SET IDENTITY_INSERT [dbo].[admin_AccessGroupUserModule] OFF
SET IDENTITY_INSERT [dbo].[admin_AccessUserForm] ON 

INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (2, 1, 1, 2)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (3, 1, 1, 3)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (4, 1, 1, 4)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (5, 1, 1, 5)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (6, 1, 1, 6)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (7, 1, 1, 7)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (8, 1, 1, 8)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (9, 1, 1, 9)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (10, 1, 1, 10)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (11, 1, 1, 11)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (12, 1, 1, 12)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (13, 1, 1, 13)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (14, 1, 1, 14)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (15, 1, 1, 15)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (16, 1, 1, 16)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (17, 1, 1, 17)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (18, 1, 1, 18)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (19, 1, 2, 6)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (20, 1, 2, 7)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (21, 1, 2, 8)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (22, 1, 2, 9)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (23, 0, 2, 10)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (24, 0, 2, 11)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (25, 0, 2, 12)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (26, 1, 2, 13)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (27, 1, 2, 14)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (28, 1, 2, 15)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (29, 0, 2, 16)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (30, 1, 2, 17)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (31, 1, 2, 18)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (32, 1, 1, 19)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (33, 1, 2, 19)
SET IDENTITY_INSERT [dbo].[admin_AccessUserForm] OFF
SET IDENTITY_INSERT [dbo].[admin_Form] ON 

INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (1, 1, N'Quản lý phân quyền', N'admin-access', 1, 1)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (2, 2, N'Quản lý Module', N'admin-module', 1, 1)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (3, 3, N'Quản lý Form', N'admin-form', 1, 1)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (4, 1, N'Quản lý tài khoản', N'admin-account', 1, 2)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (5, 1, N'Quản lý ngôn ngữ', N'admin-language', 1, 3)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (6, 1, N'Quản lý SEO', N'admin-seo', 1, 4)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (7, 1, N'Giới thiệu', N'admin-introduced', 1, 5)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (8, 2, N'Liên hệ', N'admin-contact', 1, 5)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (9, 3, N'Quản lý Slide', N'admin-slide', 1, 5)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (10, 1, N'Đơn đặt hàng', N'admin-order', 1, 6)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (11, 2, N'Tin nhắn khách hàng', N'admin-customers-message', 1, 6)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (12, 1, N'Kho hàng', N'admin-depot', 1, 7)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (13, 2, N'Nhóm sản phẩm', N'admin-product-group', 1, 7)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (14, 3, N'Loại sản phẩm', N'admin-product-cate', 1, 7)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (15, 1, N'Sản phẩm', N'admin-product', 1, 7)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (16, 2, N'Nhóm bài viết', N'admin-news-group', 1, 8)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (17, 1, N'Loại bài viết', N'admin-news-category', 1, 8)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (18, 2, N'Bài viết', N'admin-news', 1, 8)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (19, 4, N'Lấy dữ liệu an sương', N'admin-product-an-suong', 1, 7)
SET IDENTITY_INSERT [dbo].[admin_Form] OFF
SET IDENTITY_INSERT [dbo].[admin_GroupUser] ON 

INSERT [dbo].[admin_GroupUser] ([groupuser_id], [groupuser_name], [groupuser_active]) VALUES (1, N'root', 1)
INSERT [dbo].[admin_GroupUser] ([groupuser_id], [groupuser_name], [groupuser_active]) VALUES (2, N'Admin', 1)
INSERT [dbo].[admin_GroupUser] ([groupuser_id], [groupuser_name], [groupuser_active]) VALUES (3, N'Employees
', 1)
SET IDENTITY_INSERT [dbo].[admin_GroupUser] OFF
SET IDENTITY_INSERT [dbo].[admin_Module] ON 

INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (1, 1, N'Phân quyền', N'', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (2, 2, N'Tài khoản', N'fas fa-users', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (3, 3, N'Ngôn ngữ', N'fas fa-language', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (4, 4, N'SEO', N'fas fa-bookmark', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (5, 5, N'Quản lý website', N'fas fa-file-word', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (6, 6, N'Thông báo', N'fas fa-envelope', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (7, 7, N'Sản phẩm', N'fab fa-product-hunt', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (8, 8, N'Tin tức', N'far fa-newspaper', 1)
SET IDENTITY_INSERT [dbo].[admin_Module] OFF
SET IDENTITY_INSERT [dbo].[admin_User] ON 

INSERT [dbo].[admin_User] ([username_id], [username_username], [username_password], [username_fullname], [username_gender], [username_phone], [username_email], [username_active], [groupuser_id]) VALUES (1, N'root', N'123', N'ROOT', 1, N'01634057167', N'qutienpro@gmail.com', 1, 1)
INSERT [dbo].[admin_User] ([username_id], [username_username], [username_password], [username_fullname], [username_gender], [username_phone], [username_email], [username_active], [groupuser_id]) VALUES (2, N'admin', N'123', N'Quản trị', 1, N'12345', N'quantri@hifiveplus.vn', 1, 2)
INSERT [dbo].[admin_User] ([username_id], [username_username], [username_password], [username_fullname], [username_gender], [username_phone], [username_email], [username_active], [groupuser_id]) VALUES (3, N'staff', N'123', N'Nhân viên', 0, N'67891', N'staff@hifiveplus.vn', 1, 3)
SET IDENTITY_INSERT [dbo].[admin_User] OFF
ALTER TABLE [dbo].[admin_AccessGroupUserForm]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[admin_Form] ([form_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessGroupUserForm]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [dbo].[admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessGroupUserModule]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [dbo].[admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessGroupUserModule]  WITH CHECK ADD FOREIGN KEY([module_id])
REFERENCES [dbo].[admin_Module] ([module_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessUserForm]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[admin_Form] ([form_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessUserForm]  WITH CHECK ADD FOREIGN KEY([username_id])
REFERENCES [dbo].[admin_User] ([username_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_Form]  WITH CHECK ADD FOREIGN KEY([module_id])
REFERENCES [dbo].[admin_Module] ([module_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_User]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [dbo].[admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
