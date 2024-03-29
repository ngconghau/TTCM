USE [QLSB]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 7/2/2021 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catalog]    Script Date: 7/2/2021 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catalog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[parent_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordered]    Script Date: 7/2/2021 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordered](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[transaction_id] [int] NOT NULL,
	[qty] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/2/2021 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[catalog_id] [int] NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[price] [nvarchar](20) NOT NULL,
	[status] [int] NOT NULL,
	[description] [nvarchar](4000) NOT NULL,
	[content] [nvarchar](4000) NOT NULL,
	[discount] [int] NULL,
	[image_link] [nvarchar](4000) NOT NULL,
	[created] [date] NOT NULL,
 CONSTRAINT [PK__product__3213E83F2ACCA5FD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review]    Script Date: 7/2/2021 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[content] [nvarchar](4000) NOT NULL,
	[created] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transactions]    Script Date: 7/2/2021 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_session] [nvarchar](50) NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[user_mail] [nvarchar](50) NOT NULL,
	[user_phone] [nvarchar](20) NOT NULL,
	[address] [nvarchar](300) NOT NULL,
	[message] [nvarchar](4000) NOT NULL,
	[amount] [nvarchar](20) NOT NULL,
	[payment] [nvarchar](30) NOT NULL,
	[status] [nvarchar](30) NULL,
	[created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 7/2/2021 10:29:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](20) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [username], [password], [name]) VALUES (1, N'admin', N'123456', N'hau')
INSERT [dbo].[admin] ([id], [username], [password], [name]) VALUES (2, N'tea', N'123456', N'sadff')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[catalog] ON 

INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (1, N'Balo Mikkor', 1)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (2, N'Balo Reeyee', 1)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (3, N'Balo Targus', 1)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (4, N'Balo Tomtoc', 1)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (5, N'Sản Phẩm Mới', NULL)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (6, N'Sản Phẩm Bán Chạy', NULL)
INSERT [dbo].[catalog] ([id], [name], [parent_id]) VALUES (7, N'Sản Phẩm Giảm Giá', NULL)
SET IDENTITY_INSERT [dbo].[catalog] OFF
GO
SET IDENTITY_INSERT [dbo].[ordered] ON 

INSERT [dbo].[ordered] ([id], [product_id], [transaction_id], [qty]) VALUES (1003, 1, 1003, 1)
INSERT [dbo].[ordered] ([id], [product_id], [transaction_id], [qty]) VALUES (1004, 2, 1004, 1)
INSERT [dbo].[ordered] ([id], [product_id], [transaction_id], [qty]) VALUES (1005, 3, 1004, 1)
INSERT [dbo].[ordered] ([id], [product_id], [transaction_id], [qty]) VALUES (1006, 50, 1005, 2)
INSERT [dbo].[ordered] ([id], [product_id], [transaction_id], [qty]) VALUES (1007, 3, 1006, 1)
INSERT [dbo].[ordered] ([id], [product_id], [transaction_id], [qty]) VALUES (1008, 2, 1006, 1)
SET IDENTITY_INSERT [dbo].[ordered] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (1, 7, N'Balo Mikkor The Kalino M Light Grey', N'600000', 0, N'Balo Mikkor The Kalino M Light Grey', N'Balo Mikkor The Kalino M Light Grey</br>
- Chất Liệu: 900D Kodura Supertex chống nước</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Light Grey</br>
- Kích Thước (DàixRộngxCao): 	 44 x 31 x 15cm</br>
- Tải Trọng: 25 Kg</br>
- Ngăn Laptop: 15.6 inch', 33, N'mikkor-the-kalino-m-light-grey.jpg', CAST(N'2021-06-01' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (2, 1, N'Balo Mikkor The Edwin Premier M Graphite', N'600000', 1, N'Balo Mikkor The Edwin Premier M Graphite', N'Balo Mikkor The Edwin Premier M Graphite</br>
- Chất Liệu: 	Kodura 600D Supertex chống nước</br>
- Số Ngăn: 1 ngăn chính - 1 ngăn laptop tinh chỉnh kích thước - nhiều ngăn nhỏ</br>
- Màu: Graphite</br>
- Kích Thước (DàixRộngxCao): 	 44 x 31 x 15cm</br>
- Ngăn Laptop: 15.6 inch và 17 inch', 0, N'balo-mikkor-the-edwin-premier-m-graphite.jpg', CAST(N'2021-06-01' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (3, 1, N'Balo Mikkor The Arthur Premier M Red', N'450000', 0, N'Balo Mikkor The Arthur Premier M Red', N'Balo Mikkor The Arthur Premier M Red</br>
- Chất Liệu: Vải Kodura 600/900D chống nước</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop tinh chỉnh - nhiều ngăn nhỏ</br>
- Màu: Red</br>
- Kích Thước (DàixRộngxCao): 	 33 x 18 x 46cm</br>
- Tải Trọng: 25 Kg</br>
- Ngăn Laptop: 15.6 inch & 17 inch', 0, N'balo-mikkor-the-arthur-premier-m-red.jpg', CAST(N'2021-06-01' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (5, 1, N'Balo Mikkor The Louie Backpack M Light Grey', N'55.000', 1, N'Balo Mikkor The Louie Backpack M Light Grey', N'Balo Mikkor The Louie Backpack M Light Grey</br>
- Chất Liệu: 600D Supertex PU/2T</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Light Grey</br>
- Kích Thước (DàixRộngxCao): 	31cm x 17cm x 43cm</br>
- Ngăn Laptop: 15.6 inch', 10, N'balo-mikkor-the-louie-backpack-tlebp003-m-light-grey.jpg', CAST(N'2021-05-22' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (47, 6, N'Balo Mikkor The Ace Backpack M Graphite', N'500000', 1, N'Balo Mikkor The Ace Backpack M Graphite', N'Balo Mikkor The Ace Backpack M GraphiteBalo Mikkor The Louie Backpack TLEBP003 M Light Grey</br>
- Chất Liệu: 600D Supertex PU/2T</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Light Grey</br>
- Kích Thước (DàixRộngxCao): 	31cm x 17cm x 43cm</br>
- Ngăn Laptop: 15.6 inch', 0, N'balo-mikkor-the-ace-backpack-m-graphite.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (48, 7, N'Balo Mikkor The Nomad Premier Backpack M Navy', N'590000', 0, N'Balo Mikkor The Nomad Premier Backpack M Navy', N'Balo Mikkor The Nomad Premier Backpack M Navy</br>
- Chất Liệu: Kodura 600D/ PU</br>
- Số Ngăn: 1 chính, 3 phụ</br>
- Màu: Light Grey</br>
- Kích Thước (DàixRộngxCao): 	42 x 29 x 14 cm</br>
- Ngăn Laptop: 15.6 inch', 10, N'mikkor-the-normad-primier-backpack-m-navy.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (50, 2, N'Balo Reeyee RY1040 17', N'400000', 1, N'Balo Reeyee RY1040 17" M Black', N'Balo Reeyee RY1040 17" M Black</br>
- Chất Liệu: vải Polyester cao cấp</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Black</br>
- Kích Thước (DàixRộngxCao): 	32 x 17 x 50cm</br>
- Ngăn Laptop: 17 inch', 0, N'balo-reeyee-ry1040-17-m-black.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (51, 2, N'Balo Reeyee RY1020 17" M Black', N'1200000', 1, N'Balo Reeyee RY1020 17" M Black', N'Balo Reeyee RY1020 17" M Black</br>
- Chất Liệu: Vải Polyester</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Black</br>
- Kích Thước (DàixRộngxCao): 50 x 32 x 17 cm</br>
- Ngăn Laptop: 15.6 inch', 0, N'reeyee-ry1020-17-m-black.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (52, 2, N'Balo Reeyee RY1044 15.6" M Gray', N'1000000', 0, N'Balo Reeyee RY1044 15.6" M Gray', N'Balo Reeyee RY1044 15.6" M Gray</br>
- Chất Liệu: vải Polyester</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Gray</br>
- Kích Thước (DàixRộngxCao): 31 x 21 x 47cm</br>
- Ngăn Laptop: 15.6 inch', 0, N'balo-reeyee-ry1044-m-gray.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (53, 2, N'Balo Reeyee RY1036 15.6" M Navy', N'1000000', 1, N'Balo Reeyee RY1036 15.6" M Navy', N'Balo Reeyee RY1036 15.6" M Navy</br>
- Chất Liệu: Oxford Textile, Polyester chống nước</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Light Grey</br>
- Kích Thước (DàixRộngxCao): 	45 x 31 x 16cm</br>
- Ngăn Laptop: 15.6 inch', 10, N'balo-reeyee-ry1036-15-6-m-navy.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (54, 3, N'Balo Targus TCG661GL CityGear 15.6'''' M Black', N'1500000', 1, N'Balo Targus TCG661GL CityGear 15.6'''' M Black', N'Balo Targus TCG661GL CityGear 15.6'''' M Black</br>
- Chất Liệu: Polyester</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Black</br>
- Kích Thước (DàixRộngxCao): 	32 x 11 x 46.5 cm</br>
- Ngăn Laptop: 15.6 inch', 0, N'balo-targus-tcg661gl-citygear-15-6-m-black.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (55, 3, N'Balo Targus TSB89602EU M Navy', N'1200000', 0, N'Balo Targus TSB89602EU M Navy', N'Balo Targus TSB89602EU M Navy</br>
- Chất Liệu: Vải Polyester</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Black <br>
- Kích Thước (DàixRộngxCao): 	31cm x 17cm x 43cm</br>
- Ngăn Laptop: 15.6 inch', 0, N'targus-tsb89602-ap-70-m-navy.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (56, 3, N'Balo Targus TA TSB95101GL M Blue', N'1600000', 1, N'Balo Targus TA TSB95101GL M Blue', N'Balo Targus TA TSB95101GL M Blue</br>
- Chất Liệu:  Vải Polyester </br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Blue<br>
- Kích Thước (DàixRộngxCao): 	 24.7 x 1.8 x 35.9cm</br>
- Ngăn Laptop: 15.6 inch', 0, N'balo-targus-ta-tsb95101gl-m-blue.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (57, 3, N'Balo Targus TSB89604US M Grey', N'1300000', 1, N'Balo Targus TSB89604US M Grey', N'Balo Targus TSB89604US M Grey</br>
- Chất Liệu: 	Vải Polyester</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Grey<br>
- Kích Thước (DàixRộngxCao): 	50 x 34 x 20 cm</br>
- Ngăn Laptop: 15.6 inch', 0, N'targus-tsb89604ap-70-m-grey.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (61, 4, N'Balo Tomtoc A71-D01B03 Unisex', N'700000', 1, N'Balo Tomtoc A71-D01B03 Unisex', N'Balo Tomtoc A71-D01B03 Unisex</br>
- Chất Liệu: </br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Blue<br>
- Kích Thước (DàixRộngxCao): 	 31.5 x 16.5 x 44cm</br>
- Ngăn Laptop: 15 inch', 0, N'tomtoc-a71-d01b03-s-turquoise.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (62, 4, N'Balo Tomtoc A79-E01G WaterProof School For ULTrabook 15', N'1250000', 1, N'Balo Tomtoc A79-E01G WaterProof School For ULTrabook 15" M Gray', N'Balo Tomtoc A79-E01G WaterProof School For ULTrabook 15" M Gray</br>
- Chất Liệu:  Polyester</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Gray<br>
- Kích Thước (DàixRộngxCao): 60 x 45 x 36 cm</br>
- Ngăn Laptop: 15.6 inch', 5, N'balo-tomtoc-waterproof-school-for-ultrabook-15-a79-e01g-m-gray.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (63, 4, N'Balo Tomtoc A72-E01X01 Lightweight Camping Laptop 15" M Camo', N'1340000', 0, N'Balo Tomtoc A72-E01X01 Lightweight Camping Laptop 15" M Camo', N'Balo Tomtoc A72-E01X01 Lightweight Camping Laptop 15" M Camo</br>
- Chất Liệu: Nylon </br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu:  Camo<br>
- Kích Thước (DàixRộngxCao): 	31cm x 17cm x 43cm</br>
- Ngăn Laptop: 15.6 inch', 0, N'tomtoc-a72-e01x01-lightweight-camping-laptop-15-m-camo.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (64, 4, N'Balo Tomtoc A60-E01D Daili for Ultrabook 15', N'1655000', 1, N'Balo Tomtoc A60-E01D Daili for Ultrabook 15"/22L M Blacklo', N'Balo Tomtoc A60-E01D Daili for Ultrabook 15"/22L M Black</br>
- Chất Liệu:	Polyester </br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Black<br>
- Kích Thước (DàixRộngxCao):  16,53 x 11,42 x 5,12 inch.</br>
- Ngăn Laptop: 15 inch', 7, N'tomtoc-a60-e01d-m-black.jpg', CAST(N'2021-06-07' AS Date))
INSERT [dbo].[product] ([id], [catalog_id], [name], [price], [status], [description], [content], [discount], [image_link], [created]) VALUES (1057, 5, N'Balo Mikkor The Ella Backpack M Black', N'1300000', 0, N'Balo Mikkor The Ella Backpack M Black', N'Balo Mikkor The Ella Backpack M Black</br>
- Chất Liệu: Kodura 600/900D supertex</br>
- Số Ngăn: 1 ngăn chính lớn-1 ngăn laptop - nhiều ngăn nhỏ</br>
- Màu: Black <br>
- Kích Thước (DàixRộngxCao): 	20 x 8.5 x 31cm </br>
- Ngăn Laptop: 15.6 inch
', 0, N'balo-mikkor-the-ella-backpack-m-black.jpg', CAST(N'2021-06-25' AS Date))
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[review] ON 

INSERT [dbo].[review] ([id], [product_id], [name], [email], [content], [created]) VALUES (5, 1, N'Nguyễn Công Hậu', N'ncconghau@gmail.com', N'balo quá xịn', CAST(N'2021-06-11' AS Date))
INSERT [dbo].[review] ([id], [product_id], [name], [email], [content], [created]) VALUES (6, 50, N'Nguyễn Công Hậu', N'nguyenconghau.sv@gmail.com', N'balo đẹp', CAST(N'2021-06-21' AS Date))
SET IDENTITY_INSERT [dbo].[review] OFF
GO
SET IDENTITY_INSERT [dbo].[transactions] ON 

INSERT [dbo].[transactions] ([id], [user_session], [user_name], [user_mail], [user_phone], [address], [message], [amount], [payment], [status], [created]) VALUES (1003, N'hau', N'nguyễn công hậu', N'ncconghau@gmail.com', N'0932423422', N'450 lê văn việt ,quận 9', N'giao hàng nhanh nhanh nha shop', N'402000.00', N'0', N'Chưa thanh toán', CAST(N'2021-06-11' AS Date))
INSERT [dbo].[transactions] ([id], [user_session], [user_name], [user_mail], [user_phone], [address], [message], [amount], [payment], [status], [created]) VALUES (1004, N'hau', N'nguyễn công hâu', N'ncconghau@gmail.com', N'09324234212', N'451 lê văn việt', N'giao hàng cẩn thận', N'1050000.00', N'0', N'Chưa thanh toán', CAST(N'2021-06-11' AS Date))
INSERT [dbo].[transactions] ([id], [user_session], [user_name], [user_mail], [user_phone], [address], [message], [amount], [payment], [status], [created]) VALUES (1005, N'hau', N'Nguyễn Công Hâu', N'sdfdsf@gmail.com', N'423423', N'quạn 9', N'dsfsdf', N'800000.00', N'0', NULL, CAST(N'2021-06-21' AS Date))
INSERT [dbo].[transactions] ([id], [user_session], [user_name], [user_mail], [user_phone], [address], [message], [amount], [payment], [status], [created]) VALUES (1006, N'Nguyễn Công Hậu', N'Nguyễn Công Hậu', N'ncconghau@gmail.com', N'0934523432', N'binh dinh', N'giao hang cẩn thận', N'1050000.00', N'0', NULL, CAST(N'2021-06-25' AS Date))
SET IDENTITY_INSERT [dbo].[transactions] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [email], [phone], [username], [password], [created]) VALUES (1, N'Nguyễn Công Hậu', N'ncconghau@gmail.com', N'0934523432', N'hau', N'123456', CAST(N'2021-05-31' AS Date))
INSERT [dbo].[users] ([id], [name], [email], [phone], [username], [password], [created]) VALUES (2, N'Nguyễn Văn A', N'nccongha@gmail.com', N'093423423', N'anh', N'123456', CAST(N'2021-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__admin__F3DBC572B65394A0]    Script Date: 7/2/2021 10:29:46 PM ******/
ALTER TABLE [dbo].[admin] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__users__AB6E616421EE1706]    Script Date: 7/2/2021 10:29:46 PM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__users__F3DBC57214BBE33F]    Script Date: 7/2/2021 10:29:46 PM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ordered]  WITH CHECK ADD  CONSTRAINT [FK__ordered__product__34C8D9D1] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ordered] CHECK CONSTRAINT [FK__ordered__product__34C8D9D1]
GO
ALTER TABLE [dbo].[ordered]  WITH CHECK ADD FOREIGN KEY([transaction_id])
REFERENCES [dbo].[transactions] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK__product__catalog__2D27B809] FOREIGN KEY([catalog_id])
REFERENCES [dbo].[catalog] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK__product__catalog__2D27B809]
GO
ALTER TABLE [dbo].[review]  WITH CHECK ADD  CONSTRAINT [FK__review__product___300424B4] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[review] CHECK CONSTRAINT [FK__review__product___300424B4]
GO
