
Create Database [BookStore]

go

USE [BookStore]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 9/19/2022 8:44:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cartId] [int]IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[buyDate] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[cartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 9/19/2022 8:44:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[cartItemId] [int]IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[unitPrice] [float] NULL,
	[productId] [int] NULL,
	[cartId] int NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[cartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 9/19/2022 8:44:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](200) NULL,
	[images] [nvarchar](500) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/19/2022 8:44:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](200) NULL,
	[productCode] [bigint] NULL,
	[categoryId] [int] NULL,
	[description] [nvarchar](500) NULL,
	[price] [float] NULL,
	[amount] [int] NULL,
	[stock] [int] NULL,
	[images] [nvarchar](500) NULL,
	[wishlist] [int] NULL,
	[status] [int] NULL,
	[createDate] [date] NULL,
	[sellerId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 9/19/2022 8:44:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[sellerId] [int] IDENTITY(1,1) NOT NULL,
	[sellername] [nvarchar](50) NULL,
	[images] [nvarchar](500) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Seller] PRIMARY KEY CLUSTERED 
(
	[sellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 9/19/2022 8:44:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[slideid] [int] IDENTITY(1,1) NOT NULL,
	[slidename] [nvarchar](200) NULL,
	[slidelink] [nvarchar](500) NULL,
	[slidedescription] [nvarchar](500) NULL,
	[slideimages] [nvarchar](500) NULL,
	[status] [int] NULL,
	[slidetype] [int] NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[slideid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 9/19/2022 8:44:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/19/2022 8:44:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[fullname] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[images] [nvarchar](500) NULL,
	[phone] [nvarchar](20) NULL,
	[status] [int] NULL,
	[code] [nvarchar](50) NULL,
	[roleId] [int] NULL,
	[sellerid] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[Bills](
	[bill_Id] [int] IDENTITY(1,1) NOT NULL,
	[total] [float](50) NULL,
	[date] [datetime] NULL,
	[cartId] [int]NULL,
	[userId] [int] NULL,
	[address] [nvarchar](500) NULL,
	[note] [nvarchar](500) NULL,
	[paymentmethod] [nvarchar](500) NULL,
	[fullname] [nvarchar](500) NULL,
	[email] [nvarchar](500) NULL,
	[phone] [nvarchar](500) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[bill_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Users] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Users]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Cart] FOREIGN KEY([cartId])
REFERENCES [dbo].[Cart] ([cartId])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Cart]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Seller] FOREIGN KEY([sellerId])
REFERENCES [dbo].[Seller] ([sellerId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Seller]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Seller] FOREIGN KEY([sellerid])
REFERENCES [dbo].[Seller] ([sellerId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Seller]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserRoles] FOREIGN KEY([roleId])
REFERENCES [dbo].[UserRoles] ([roleId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserRoles]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_CartId] FOREIGN KEY([cartId])
REFERENCES [dbo].[Cart] ([cartId])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_CartId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_UserId] FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_UserId]
GO
USE [master]
GO
ALTER DATABASE [ShopGiayNew01] SET  READ_WRITE 
GO


use [BookStore]

go
--Insert Sql 

--insert into table UserRoles
insert into UserRoles values('admin')
insert into UserRoles values('staff')
insert into UserRoles values('user')

--insert into table Seller , tài khoản user đăng kí mới vào mặc định sellerId = 3
insert into Seller values(N'Nguyễn Nhật Tính','https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-business-male-icon-vector-png-image_916468.jpg',1)
insert into Seller values(N'Phan Duy Khánh','https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-business-male-icon-vector-png-image_916468.jpg',1)
insert into Seller values(N'Khách','https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-business-male-icon-vector-png-image_916468.jpg',1)

--insert into table Users

--tài khoản admin 
insert into Users values('tinh','20110576@student.hcmute.edu.vn',N'Nguyễn Nhật Tính','1','https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-business-male-icon-vector-png-image_916468.jpg','0708128879',1,'1',1,1)
insert into Users values('khanh','20110502@student.hcmute.edu.vn',N'Phan Duy Khánh','1','https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-business-male-icon-vector-png-image_916468.jpg','00213413689',1,'2',1,2)
--tài khoản staff 
insert into Users values('cong','20110447@student.hcmute.edu.vn',N'Nguyễn Phước Công','1','https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-business-male-icon-vector-png-image_916468.jpg','00423413689',1,'3',2,3)
--tài khoản người dùng , khi đăng kí mặc định sellerId là 3 ( khách )
insert into Users values('truong','20110590@student.hcmute.edu.vn',N'Trần Nguyễn Huy Trường','1','https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-business-male-icon-vector-png-image_916468.jpg','012341689',1,'4',3,3)
insert into Users values('khoa','20110088@student.hcmute.edu.vn',N'Nguyễn Anh Khoa','1','https://png.pngtree.com/png-vector/20190411/ourlarge/pngtree-business-male-icon-vector-png-image_916468.jpg','123413689',1,'5',3,3)


--insert into table Category 
insert into Category values(N'Văn Học',null,1)
insert into Category values(N'Kinh Tế',null,1)
insert into Category values(N'Sách Thiếu Nhi',null,1)
insert into Category values(N'Tâm Lý-Kỹ Năng Sống',null,1)
insert into Category values(N'Tiểu Sử Hồi Ký',null,1)
insert into Category values(N'Giáo Khoa-Tham Khảo',null,1)
insert into Category values(N'Sách Học Ngoại Ngữ',null,1)






--insert into table Product 
--Văn học
insert into Product values(N'Từ Điển Tiếng “Em” - Tái Bản 2021','371628','1','',49000,100,0,'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_tudientiengem-_1_.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Chitose Trong Chai Ramune - Tập 1','3123628','1','',84000,90,0,'https://cdn0.fahasa.com/media/catalog/product/c/h/chitose-trong-chai-ramune---tap-1---ban-gioi-han.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Nhà Giả Kim (Tái Bản 2020)','123628','1','',55000 ,80,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_36793.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Cây Cam Ngọt Của Tôi','4528','1','',75000,70,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_217480.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Chuyện Kể Rằng Có Nàng Và Tôi','168628','1','',57000,60,0,'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_chuyen-ke-rang-co-nang-va-toi_final.jpg',0,'1','2022-11-29',1)
--Kinh tế
insert into Product values(N'Marketing Cho Bán Lẻ (Tái Bản)','35346','2','',81000,100,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8935251419276.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Nói Hay Như Jack Ma','98712','2','',93000,90,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_187549.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Cạm Bẫy Trong Quản Lý','981723','2','',90000,80,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8935086838662.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Nhà Quản Lý Linh Hoạt','94712','2','',21000,70,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_234634.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Cơ Hội Khởi Nghiệp','955723','2','',99000,60,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8935275100044.jpg',0,'1','2022-11-29',1)
--Sách thiếu nhi
insert into Product values(N'Hoàng Tử Bé (Tái Bản 2019)','123431','3','',49000,100,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_187010.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2019)','12341','3','',41000,500,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_188285.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Dế Mèn Phiêu Lưu Ký - Tái Bản 2020','73531','3','',42000,50,0,'https://cdn0.fahasa.com/media/catalog/product/d/e/de-men-50k_1.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Bách Khoa Khủng Long Toàn Tập','36121','3','',46000,20,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8936071674753_1.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Vòng Quanh Thế Giới: Việt Nam (Tái Bản 2019)','81237','3','',10000,10,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_184562.jpg',0,'1','2022-11-29',1)
--Tâm Lý-Kỹ Năng Sống
insert into Product values(N'Thay Đổi Cuộc Sống Với Nhân Số Học','123431','4','',75000,100,0,'https://cdn0.fahasa.com/media/catalog/product/t/d/tdcsvnsh.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Rèn Luyện Tư Duy Phản Biện','1325812','4','',84000,100,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_18448.jpg',0,'1','2022-11-29',1)
insert into Product values(N'OSHO - Yêu - Being In Love','912871','4','',20000,100,0,'https://cdn0.fahasa.com/media/catalog/product/b/e/beinglove.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Khéo Ăn Nói Sẽ Có Được Thiên Hạ (Tái Bản 2022)','1214431','4','',79000,100,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8936067605693.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Tâm Lý Học Tính Cách','19812','4','',80000,100,0,'https://cdn0.fahasa.com/media/catalog/product/d/_/d_1__2_.jpg',0,'1','2022-11-29',1)
--Tiểu Sử Hồi Ký
insert into Product values(N'Một Người Việt Trầm Lặng','512331','5','',78000,200,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_225158.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Tôi Phải Sống','612331','5','',27000,100,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_238687.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Chấn Hưng Nhật Bản','82341','5','',19000,400,0,'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_chan-hung-nhat-ban.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Hãy Gọi Tên Tôi','02341','5','',43000,200,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_44032.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Ung Thư Không Phải Là Chết','125121','5','',90000,500,0,'https://cdn0.fahasa.com/media/catalog/product/u/n/unnamed_2_8.jpg',0,'1','2022-11-29',1)
--Giáo Khoa-Tham Khảo
insert into Product values(N'Tập Tô Chữ Mẫu Giáo - Tủ Sách Bé Vào Lớp 1','512331','6','',5500,200,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_29257.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Luyện Thi Vào Lớp 10 - Môn Ngữ Văn','612331','6','',61000,100,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8936067598889-0.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Ôn Luyện Tiếng Anh Lớp 9 - Có Đáp Án (Tái Bản 2021)','82341','6','',37000,400,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_233637.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Tài Liệu Dạy Và Học Hóa Học 9 - Tập 1 (2021)','02341','6','',42000,200,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_236130.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Hướng Dẫn Học Tốt Tiếng Anh 9','125121','6','',32000,500,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_179465.jpg',0,'1','2022-11-29',1)
--Sách Học Ngoại Ngữ
insert into Product values(N'30 Chủ Đề Từ Vựng Tiếng Anh (Tập 1)','512331','7','',10000,200,0,'https://cdn0.fahasa.com/media/catalog/product/h/h/hh-30-chu-de-tu-vung-tieng-anh_1.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Hackers Ielts: Writing','612331','7','',15000,100,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_709.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Ngữ Pháp Tiếng Anh (Tái Bản 2021)','82341','7','',75000,400,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_240310.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Luyện Viết Chữ Nhớ Từ Vựng 2','02341','7','',29000,200,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_12494.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Little Stories – To Push You Forward','125121','7','',46000,500,0,'https://cdn0.fahasa.com/media/catalog/product/b/i/bia---littlestories5_to-push-you-forward_.jpg',0,'1','2022-11-29',1)
