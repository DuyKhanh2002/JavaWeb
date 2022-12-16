
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
	[description] [nvarchar](max) NULL,
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
insert into Product values(N'Từ Điển Tiếng “Em” - Tái Bản 2021','371628','1',N'
TỪ ĐIỂN TIẾNG “EM” – Định nghĩa về thế giới mới!

Bạn sẽ bất ngờ, khi cầm cuốn “từ điển” xinh xinh này trên tay.

Và sẽ còn ngạc nhiên hơn nữa, khi bắt đầu đọc từng trang sách…

Dĩ nhiên là vì “Từ điển tiếng “Em” không phải là một cuốn từ điển thông thường rồi!

Nói đến “từ điển”, xưa nay chúng ta đều nghĩ về một bộ sách đồ sộ, giải thích ý nghĩa, cách dùng, dịch, cách phát âm, và thường kèm theo các ví dụ về cách sử dụng từ đó.

Tuy nhiên, với cuốn sách “Từ điển tiếng “em”, các bạn sẽ hết sức bất ngờ với những định nghĩa mới, bắt trend, sáng tạo, thông minh và vô cùng hài hước.

Tiếng “em” [danh từ] ở đây là tiếng lòng của những người yêu sự thật, ghét sự giả dối

Cô đơn [ tính từ ] không phải là không có ai bên cạnh, mà là người mình muốn ở cạnh lại không hề ở bên

Sống lỗi [ động từ ] là cách sống của mấy bạn có người yêu cái là bỏ bê bạn bè liền hà...

Nhưng đây không chỉ là cuốn sách chỉ biết nói dăm ba câu chuyện về tình yêu.
Còn nhiều hơn thế!

Là những câu cửa miệng của giới trẻ thời nay; là hoạt động tưởng vô bổ nhưng cần thiết cho sự sống: ăn, ngủ, tắm, gội cũng được định nghĩa hết sức dí dỏm... Và cũng không thiếu những “tật xấu, thói hư” nghĩ đến đã thấy “tức cái lồng ngực”...

Và bạn yên tâm, “tập đoàn” Kho Từ Điển điều hành bởi Thịt Kho – Hiệp Thị - 2 chủ xị cho ra đời cuốn sách nhỏ bé xíu xiu nhưng mới mẻ và mặn mà vô cùng này sẽ khiến bạn thoát mác “người tối cổ” cười cả ngày không chán, nhìn bạn bè quanh mình bằng ánh mắt dễ thương, tận hưởng cuộc đời với những định nghĩa hoàn toàn!!!

Cuốn sách này giống như một chiếc hộp Pandora thú vị và hấp dẫn người đọc, vì bạn không thể đoán trước được tác giả sẽ “định nghĩa” câu nói đó theo nghĩa nào, cho ta thêm thích thú với những ngôn từ đáng yêu sử dụng mỗi ngày.
Vậy nên, ngay bây giờ, bạn đã sẵn sàng để mở ra những điều thú vị trong cuốn sách này chưa!!!',49000,100,0,'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_tudientiengem-_1_.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Chitose Trong Chai Ramune - Tập 1','3123628','1',N'“Chitose lớp E là một tên cặn bã lăng nhăng.” - Bị chỉ trích như vậy trên web kín của trường, nhưng Chitose Saku vẫn là riajuu “ngự trị trên đỉnh” của trường Fuji.

Xung quanh cậu là những người bạn xuất sắc về mọi mặt. Một Hiragii Yuuko hồn nhiên, năng động, một Uchida Yua hiền lành, dễ thương, một Nanase Yuzuki bí ẩn, quyến rũ, một Aomi Haru tràn đầy sức sống... Nhưng ngay khi vừa bắt đầu năm học mới với những người bạn thân, Saku lại nhận được lời đề nghị giúp đỡ một hikikomori nọ tái hòa nhập với cuộc sống học đường. Đây là câu chuyện về dàn “hậu cung” riajuu của Chitose Saku, hay là...?

Bộ truyện tình cảm hài về thế giới của các riajuu, mang theo làn gió của thời đại mới, đã chính thức bắt đầu!!

* CHITOSE TRONG CHAI RAMUNE là tác phẩm về chủ đề thanh xuân học đường đến từ NXB Shogakukan, 2 năm liên liên tiếp (2021-2022) đạt top 1 trên bảng xếp hạng Kono Light Novel Ga Sugoi.

Số tập: 6+

Chitose Trong Chai Ramune – Tập 1 – Phiên bản tặng kèm 01 Bookmark bế hình có chân đế.

---

Một ấn phẩm của WINGS BOOKS - Thương hiệu sách trẻ của NXB Kim Đồng.

',84000,90,0,'https://cdn0.fahasa.com/media/catalog/product/c/h/chitose-trong-chai-ramune---tap-1---ban-gioi-han.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Nhà Giả Kim (Tái Bản 2020)','123628','1',N'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. 

Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.

“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”

- Trích Nhà giả kim

Nhận định

“Sau Garcia Márquez, đây là nhà văn Mỹ Latinh được đọc nhiều nhất thế giới.” - The Economist, London, Anh

 

“Santiago có khả năng cảm nhận bằng trái tim như Hoàng tử bé của Saint-Exupéry.” - Frankfurter Allgemeine Zeitung, Đức

',55000 ,80,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_36793.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Cây Cam Ngọt Của Tôi','4528','1',N'“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” - Booklist

“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.” - The National

Hãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.

Có hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.

Mở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.

TÁC GIẢ:

JOSÉ MAURO DE VASCONCELOS (1920-1984) là nhà văn người Brazil. Sinh ra trong một gia đình nghèo ở ngoại ô Rio de Janeiro, lớn lên ông phải làm đủ nghề để kiếm sống. Nhưng với tài kể chuyện thiên bẩm, trí nhớ phi thường, trí tưởng tượng tuyệt vời cùng vốn sống phong phú, José cảm thấy trong mình thôi thúc phải trở thành nhà văn nên đã bắt đầu sáng tác năm 22 tuổi. Tác phẩm nổi tiếng nhất của ông là tiểu thuyết mang màu sắc tự truyện Cây cam ngọt của tôi. Cuốn sách được đưa vào chương trình tiểu học của Brazil, được bán bản quyền cho hai mươi quốc gia và chuyển thể thành phim điện ảnh. Ngoài ra, José còn rất thành công trong vai trò diễn viên điện ảnh và biên kịch.

',75000,70,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_217480.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Chuyện Kể Rằng Có Nàng Và Tôi','168628','1',N'Chuyện Kể Rằng Có Nàng Và Tôi

Đối với những người trẻ được sống như ý không phải lúc nào cũng dễ dàng, đặc biệt với những người đã phải trải qua một quãng thời gian khó khăn rồi mới có thể tìm được con người thật của mình, là chính mình. Những câu chuyện tình của họ có nhiều dang dở vì những mặc cảm, rào cản, khao khát được làm điều mình muốn, gắn bó với người mình yêu thương cả đời là các mong ước nhỏ trong lòng. Để rồi khi không thể giãi bày cùng ai, họ mang những điều thầm kín thổi vào những vần thơ nơi chỉ có những “câu chuyện về nàng và tôi”.

“Chuyện kể rằng có nàng và tôi” là cuốn sách nhỏ với những áng thơ nhẹ nhàng, lãng mạn thể hiện mối giao hòa đẹp đẽ trong tâm hồn những người con gái. Tình yêu của họ vượt trên tất thảy mọi định kiến, chỉ còn lại là những cảm xúc dạt dào, vô tận. Trong những câu thơ đôi khi họ là những người lãng du cô đơn bước chân qua đám đông tranh cãi ồn ào và luôn khao khát tìm kiếm hạnh phúc.

“em chỉ là kiến nhỏ

còn nàng lại là mây

ngẩng đầu lên sẽ thấy

mà sao với được đây”

Rồi đôi khi lại đưa ta vào những cung bậc hân hoan, hạnh phúc của tình yêu, sự bao dung của những trái tim ngập tràn nắng ấm, vượt qua mọi ánh nhìn xa lạ của xã hội, mãi khiến ta muốn đắm chìm trong đó.

“Ta yêu nhau từ những điều nhỏ nhặt

Chút vụn vặt ta góp lại yêu thương

Ta yêu nhau giữa cuộc sống vô thường

Nắm tay nhau qua một đời nghiêng ngả”

Dưới ngòi bút uyển chuyển, sắc sảo của nhiều tác giả, “Chuyện kể rằng có nàng và tôi” không chỉ là một cuốn sách về tình yêu dang dở, bao cảm xúc mật ngọt tán tỉnh của những nàng đồng tính nữ mà còn là những bản ngã, niềm tin và hy vọng, đủ ngọt ngào để quyến rũ tâm hồn độc giả.

Cuốn sách giúp bạn gỡ bỏ những bức tường thành định kiến để đắm mình trong tình yêu nhiệm màu, vì ai rồi cũng có quyền hạnh phúc trong thế giới nhỏ của họ dù là giới tính nào đi chăng nữa.

Chuyện Kể Rằng Có Nàng Và Tôi

Đối với những người trẻ được sống như ý không phải lúc nào cũng dễ dàng, đặc biệt với những người đã phải trải qua một quãng thời gian khó khăn rồi mới có thể tìm được con người thật của mình, là chính mình. Những câu chuyện tình của họ có nhiều dang dở vì những mặc cảm, rào cản, khao khát được làm điều mình muốn, gắn bó với người mình yêu thương cả đời là các mong ước nhỏ trong lòng. Để rồi khi không thể giãi bày cùng ai, họ mang những điều thầm kín thổi vào những vần thơ nơi chỉ có những “câu chuyện về nàng và tôi”.

“Chuyện kể rằng có nàng và tôi” là cuốn sách nhỏ với những áng thơ nhẹ nhàng, lãng mạn thể hiện mối giao hòa đẹp đẽ trong tâm hồn những người con gái. Tình yêu của họ vượt trên tất thảy mọi định kiến, chỉ còn lại là những cảm xúc dạt dào, vô tận. Trong những câu thơ đôi khi họ là những người lãng du cô đơn bước chân qua đám đông tranh cãi ồn ào và luôn khao khát tìm kiếm hạnh phúc.

“em chỉ là kiến nhỏ

còn nàng lại là mây

ngẩng đầu lên sẽ thấy

mà sao với được đây”

Rồi đôi khi lại đưa ta vào những cung bậc hân hoan, hạnh phúc của tình yêu, sự bao dung của những trái tim ngập tràn nắng ấm, vượt qua mọi ánh nhìn xa lạ của xã hội, mãi khiến ta muốn đắm chìm trong đó.

“Ta yêu nhau từ những điều nhỏ nhặt

Chút vụn vặt ta góp lại yêu thương

Ta yêu nhau giữa cuộc sống vô thường

Nắm tay nhau qua một đời nghiêng ngả”

Dưới ngòi bút uyển chuyển, sắc sảo của nhiều tác giả, “Chuyện kể rằng có nàng và tôi” không chỉ là một cuốn sách về tình yêu dang dở, bao cảm xúc mật ngọt tán tỉnh của những nàng đồng tính nữ mà còn là những bản ngã, niềm tin và hy vọng, đủ ngọt ngào để quyến rũ tâm hồn độc giả.

Cuốn sách giúp bạn gỡ bỏ những bức tường thành định kiến để đắm mình trong tình yêu nhiệm màu, vì ai rồi cũng có quyền hạnh phúc trong thế giới nhỏ của họ dù là giới tính nào đi chăng nữa.

',57000,60,0,'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_chuyen-ke-rang-co-nang-va-toi_final.jpg',0,'1','2022-11-29',1)
--Kinh tế
insert into Product values(N'Marketing Cho Bán Lẻ (Tái Bản)','35346','2',N'Nếu bạn đang điều hành việc kinh doanh bán lẻ, cuốn sách này sẽ chỉ cho bạn thấy một mô hình tiếp thị hiệu quả để quảng bá cho doanh nghiệp của bạn, cho phép bạn cạnh tranh với những nhà kinh doanh trực tuyến và những doanh nghiệp lớn khác. Với rất nhiều ý tưởng mới và sãng tạo, cuốn sách sẽ chỉ cho bọn cách tạo nên những kinh nghiệm bổ ích về kinh doanh và xây dựng mối quan hệ bền vững, trung thành, lâu dài với khách hàng.

Đọc Marketing cho bán lẻ và nghe những kinh nghiệm, chia sẻ của Bob và Susan Negen bọn sẽ học được:
- Tại sao quảng cáo lại không thể áp dụng được cho các cửa hàng bán lẻ và bạn nên làm gì?
- Làm thế nào để áp dụng luật tương tác vào kinh doanh và thu hút hàng vạn khách hàng tiềm năng mới.
- Cách tạo niềm tin với khách hàng để họ trở thành những khách hàng trung thành và lâu dài.
- 10 luật soạn thư quảng cáo mà bất cứ nhà bán lẻ nào cũng phải biết khi gửi thư tiếp thị sản phẩm.
- 14 yếu tố bạn cần có khi tăo một trang web.

Trên thị trường tràn ngập quảng cáo như ngày nay, làm thế nào để tạo được dấu ấn trong tâm trí người tiêu dùng, làm thế nào để chiến dịch marketing hiệu quả là những câu hỏi luôn khiến các nhà hoạch định chiến lược đau đẩu nhất. Sáng tạo có thể xuất phát từ những ý tưởng rất vĩ cuồng nhưng đó mới thực sự là marketing

Cuốn sách mang lại rất nhiều cảm hứng và những trải nghiệm thực tế, không chỉ là những ý tưởng mà còn là cách biến ý tưởng thành vũ khí để chiến thắng.

Về tác giả

Bob Negen đã sáng lập ra WhizBang! Training sau khi gặt hái được nhiều thành công trong việc điều hành chuỗi các cửa hàng kinh doanh diều hơn hai thập kỷ. Sáu năm cuối cùng của mình, ông đã dành thời gian dạy các giám đốc, các ông chủ tư nhân những kỹ năng thực hành cơ bản để có thể thực hiện tốt việc kinh doanh bán lẻ. Trong tác phẩm của mình, Bob chia sẻ những kinh nghiệm, những bài học đắt giá mà ông học được trong cuộc đời minh như một nhà diễn thuyết, một tác giả và một nhà tư vấn.
Susan Negen là nhà đồng sáng lập WhizBang! Training, bà đã áp dụng những kiến thức mình có được khi còn điều hành các cửa hàng của hãng Bloomingdale’s và Macy’s để đào tạo tại WhizBang! Training và áp dụng những kiến thức ấy vào kinh doanh tư nhân.

',81000,100,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8935251419276.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Nói Hay Như Jack Ma','98712','2',N'Hầu như những ai từng nghe Jack Ma diễn thuyết đều có cùng cảm nhận rằng ông giống như nhà ảo thuật ngôn ngữ. Lời nói của ông cứng rắn nhưng thuyết phục, giản dị nhưng sâu sắc; hài hước nhưng không nông cạn, sắc bén nhưng lại không chua ngoa. Jack Ma giỏi tự chế nhạo, nhưng qua đó có thể thấy được đẳng cấp của ông; Jack Ma giỏi châm biếm, nhưng trong lời châm biếm lại mang ý chỉ bảo. Đây chính là sức lôi cuốn của Jack Ma, sức hút của một con người có tài ăn nói vượt trội.

Ngô Đế Thông là nhà đầu tư, nhà doanh nghiệp và chuyên gia kêu gọi đầu tư, hiện là một trong những người đã sáng lập Tập đoàn đầu tư giáo dục Alijia, chủ tịch công ty hữu hạn phát triển công nghệ mạng Alijia, đồng sáng lập Alibaba và cổ đông của nhiều công ty khác, đồng thời ông cũng là một nhà từ thiện lớn. Ông đã giúp đỡ hơn 300 doanh nghiệp kêu gọi đầu tư, hơn 800 lần diễn thuyết, và có hơn 1 triệu học viên.

Một số người rất mạnh dạn khi giao tiếp, tạo cảm giác cởi mở cho người khác, số khác lại rất dè dặt khiến người khác cảm thấy buồn chán. Có sự khác biệt này, một phần là do kỹ năng diễn đạt, nhưng trên hết vẫn là do tính cách. Những người tự tin khi giao tiếp sẽ thu hút sự chú ý của người khác hơn. Còn người không tự tin thì thường ngược lại. Sự khác biệt về tính cách này ảnh hưởng trực tiếp đến mức độ tin cậy của người khác đối với những gì chúng ta nói.

',93000,90,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_187549.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Cạm Bẫy Trong Quản Lý','981723','2',N'Cạm Bẫy Trong Quản Lý

Các chương trình đào tạo quản lý dạy bạn rất nhiều việc phải làm, từ đánh giá năng lực nhân viên, tổ chức cuộc họp, phân chia công việc đến quản lý thời gian..., trong khi lại bỏ qua những việc bạn không nên làm: đó là những sai lầm sơ đẳng, ngớ ngẩn lẫn tinh vi, khó phát hiện trong công việc quản lý - những điều có thể khiến bạn phải dừng bước trên chiếc thang sự nghiệp.

Từ những ví dụ thực tế trong cuốn sách này, bạn sẽ biết cách tránh khỏi các lỗi như:

- Không có mục tiêu rõ ràng

- Giao phó công việc không phù hợp

- Có thái độ phòng thủ trước sự phê bình, góp ý

- Phớt lờ các chính sách của công ty

- Triển khai các dự án có tính mạo hiểm cao với kết quả không đáng kể

- Cho phép các nhà quản lý khác "cướp mất" nhân viên của bạn

Và nhiều điều khác nữa...

Khi đã có cẩm nang này trong tay, bạn sẽ không còn đối diện với nguy cơ chấm dứt sự nghiệp quản lý sau khi phải tự rút ra bài học cay đắng và nhận lãnh hậu quả nghiêm trọng. Bởi vì bạn sẽ biết đích xác mình nên nói gì và làm gì trong bất cứ hoàn cảnh nào của môi trường kinh doanh.

',90000,80,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8935086838662.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Nhà Quản Lý Linh Hoạt','94712','2',N'NHÀ QUẢN LÝ LINH HOẠT

Thế giới đang thay đổi quá nhanh khiến chúng ta không thể tiếp tục áp dụng những cách làm việc và quản lý cũ. Là những chuyên gia về Quản lý Linh hoạt và Doanh nghiệp Linh hoạt, nhóm tác giả gồm Tiến sĩ Cherry Vũ và Rob England muốn chia sẻ những ý tưởng đã được áp dụng thành công của mình với các bạn độc giả thông qua quyển sách: Nhà quản lý linh hoạt.

Những cách quản lý mới đầy thách thức sẽ đảo ngược những nguyên tắc mà chúng ta từng dựa vào để xây dựng nên tổ chức của mình. Nhà quản lý linh hoạt sẽ chất vấn bạn bằng những thách thức đó, đồng thời giải thích chúng và chỉ cho bạn cách tiến tới những cách quản lý mới.',21000,70,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_234634.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Cơ Hội Khởi Nghiệp','955723','2',N'Cơ Hội Khởi Nghiệp

Cơ hội khởi nghiệp, là nơi đầu tiên mà mọi nhà khởi nghiệp và nhà đầu tư tìm đến khi họ bắt đầu đối diện với cơ hội kinh doanh lớn tiếp theo trong đời. Trong tài liệu có một không hai này, một tập thể các nhà đầu tư và doanh nhân tài ba đã chia sẻ những lời khuyên đắt giá của họ về việc rèn luyện khả năng đánh giá chính xác tính khả thi và tiềm năng của một ý tưởng kinh doanh trước khi bỏ ra một số tiền và thời gian khổng lồ cho một thương vụ mà nhiều khả năng sẽ thất bại. Sự tiến bộ nhanh chóng của công nghệ đang thúc đẩy sự đổi mới và thay đổi với tốc độ chưa từng thấy, và việc nắm trong tay một phương pháp luận đáng tin cậy, có tính chuyên môn cao nhằm xác định nhanh chóng những công ty khởi nghiệp nhiều tiềm năng có thể giúp bạn:

-  Đạt được thành tựu lớn lao tiếp theo trước những đối thủ cạnh tranh.

-  Thấy được tại sao ý tưởng lại chẳng có giá trị gì và bí quyết để khởi nghiệp thành công là thực hiện.

-  Biết trước về những cái bẫy đang ẩn mình chờ nạn nhân tiếp theo, bao gồm những cái bẫy về tâm lý và các nhân tố phá vỡ thỏa thuận không thể phủ nhận.

Cơ hội khởi nghiệp, sẽ cho bạn mọi thứ bạn cần để chọn ra những doanh nhân tiềm năng nhất trong số những người dám nghĩ dám làm để tạo ra lợi nhuận từ khoản đầu tư của mình. 

Đánh giá về cuốn sách
Cơ hội khởi nghiệp là một hướng dẫn rất giá trị về việc đánh giá các ý tưởng kinh doanh ở trong những giai đoạn sớm nhất, giúp bạn tránh lãng phí thời gian tiền bạc vào những dự án không hề có cơ may thành công. Cuốn sách phải-đọc dành cho mọi doanh nhân đầy khát vọng này tổng hợp những tri thức của hai nhà đầu tư mạo hiểm đã từng lắng nghe hàng nghìn bài vận động và tham gia vào quá trình triển khai của hàng trăm công ty khởi nghiệp. Bên trong cuốn sách này, hai tác giả sẽ chia sẻ những chiến lược và phương pháp riêng mà họ đã sử dụng để dự đoán công ty nào sẽ tỏa sáng và công ty nào đã mang sẵn định mệnh lụi tàn. Tiếp đó, để mang bạn đến gần nhất với điều mà các trí tuệ sáng tạo nhất và hoàn thiện nhất đang luyện tập hằng ngày, mỗi chương sẽ đề cập đến các bài học thực tế từ cuộc sống mà họ đã trải nghiệm trực tiếp, đầy cảm hứng và đầy thông tin. Vô cùng cập nhật và sát thực với thị trường hiện nay, cuốn sách này sẽ giúp bạn:

-  Biết rằng bạn đã sẵn sàng để nghỉ việc khi ý tưởng của bạn đã vượt qua Nguyên tắc gấp 10 lần.

-  Sử dụng các kỹ thuật phát triển khách hàng từ sớm để làm cho một ý tưởng tốt thay da đổi thịt trở thành một cơ hội mang lại nhiều lợi nhuận.

-  Hiểu được những đặc điểm thiết yếu của một cơ hội xứng đáng để bạn dồn hết tâm huyết cho nó.

Bất kể ý tưởng của bạn tốt như thế, hãy đảm bảo là bạn đã sẵn sàng bắt đầu với Cơ hội khởi nghiệp. 

Về tác giả.
SEAN WISE là một chuyên gia về khởi nghiệp và vốn mạo hiểm. Anh là người dẫn chương trình The Naked Entrepreneur, phát sóng trên mạng truyền hình Oprah Winfrey. Sean Wise cũng đồng thời mà một giảng viên kinh doanh tài ba, một tác giả sách bán chạy và một diễn giả về kinh doanh quốc tế. Anh là thành viên của Quỹ Đầu tư Tương lai Ryerson, một quỹ đầu tư mạo hiểm giai đoạn hạt giống và nơi hỗ trợ tăng tốc khởi nghiệp trong lĩnh vực công nghệ.

BRAD FELD là một nhà đầu tư giai đoạn sớm và nhà khởi nghiệp trên 20 năm. Trước khi đồng sáng lập Tập đoàn Foundry, anh đã tham gia đồng sáng lập công ty vốn mạo hiểm Mobius và Quỹ Đầu tư Mạo hiểm Intensity, một công ty đã giúp triển khai và vận hành nhiều công ty phần mềm. Anh cũng là nhà đồng sáng lập của Techstars.

',99000,60,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8935275100044.jpg',0,'1','2022-11-29',1)
--Sách thiếu nhi
insert into Product values(N'Hoàng Tử Bé (Tái Bản 2019)','123431','3',N'LẦN ĐẦU TIÊN CÓ BẢN QUYỀN CHÍNH THỨC TẠI VIỆT NAM

Hoàng tử bé được viết ở New York trong những ngày tác giả sống lưu vong và được xuất bản lần đầu tiên tại New York vào năm 1943, rồi đến năm 1946 mới được xuất bản tại Pháp. Không nghi ngờ gì, đây là tác phẩm nổi tiếng nhất, được đọc nhiều nhất và cũng được yêu mến nhất của Saint-Exupéry. Cuốn sách được bình chọn là tác phẩm hay nhất thế kỉ 20 ở Pháp, đồng thời cũng là cuốn sách Pháp được dịch và được đọc nhiều nhất trên thế giới. Với 250 ngôn ngữ dịch khác nhau kể cả phương ngữ cùng hơn 200 triệu bản in trên toàn thế giới, Hoàng tử bé được coi là một trong những tác phẩm bán chạy nhất của nhân loại. 

Ở Việt Nam, Hoàng tử bé được dịch và xuất bản khá sớm. Từ năm 1966 đã có  đồng thời hai bản dịch: Hoàng tử bé của Bùi Giáng do An Tiêm xuất bản và Cậu hoàng con của Trần Thiện Đạo do Khai Trí xuất bản. Từ đó đến nay đã có thêm nhiều bản dịch Hoàng tử bé mới của các dịch giả khác nhau. Bản dịch Hoàng tử bé lần này, xuất bản nhân dịp kỷ niệm 70 năm Hoàng tử bé ra đời, cũng là ấn bản đầu tiên được Gallimard chính thức chuyển nhượng bản quyền tại Việt Nam, hy vọng sẽ góp phần làm phong phú thêm việc dịch và tiếp nhận tác phẩm quan trọng này với các thế hệ độc giả. 

Tôi cứ sống cô độc như vậy, chẳng có một ai để chuyện trò thật sự, cho tới một lần gặp nạn ở sa mạc Sahara cách đây sáu năm. Có thứ gì đó bị vỡ trong động cơ máy bay. Và vì ở bên cạnh chẳng có thợ máy cũng như hành khách nào nên một mình tôi sẽ phải cố mà sửa cho bằng được vụ hỏng hóc nan giải này. Với tôi đó thật là một việc sống còn. Tôi chỉ có vừa đủ nước để uống trong tám ngày.

Thế là đêm đầu tiên tôi ngủ trên cát, cách mọi chốn có người ở cả nghìn dặm xa. Tôi cô đơn hơn cả một kẻ đắm tàu sống sót trên bè giữa đại dương. Thế nên các bạn cứ tưởng tượng tôi đã ngạc nhiên làm sao, khi ánh ngày vừa rạng, thì một giọng nói nhỏ nhẹ lạ lùng đã đánh thức tôi. Giọng ấy nói:

“Ông làm ơn… vẽ cho tôi một con cừu!”

- Trích "Hoàng tử bé"

Nhận định

“Đây là một câu chuyện tự nó đã rất đáng yêu, ẩn giấu một triết lý quá đỗi nhẹ nhàng và thi vị.”

- The New York Times

',49000,100,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_187010.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2019)','12341','3',N'Cô hải âu Kengah bị nhấn chìm trong váng dầu – thứ chất thải nguy hiểm mà những con người xấu xa bí mật đổ ra đại dương. Với nỗ lực đầy tuyệt vọng, cô bay vào bến cảng Hamburg và rơi xuống ban công của con mèo mun, to đùng, mập ú Zorba. Trong phút cuối cuộc đời, cô sinh ra một quả trứng và con mèo mun hứa với cô sẽ thực hiện ba lời hứa chừng như không tưởng với loài mèo:

Không ăn quả trứng.
Chăm sóc cho tới khi nó nở.
Dạy cho con hải âu bay.

Lời hứa của một con mèo cũng là trách nhiệm của toàn bộ mèo trên bến cảng, bởi vậy bè bạn của Zorba bao gồm ngài mèo Đại Tá đầy uy tín, mèo Secretario nhanh nhảu, mèo Einstein uyên bác, mèo Bốn Biển đầy kinh nghiệm đã chung sức giúp nó hoàn thành trách nhiệm. Tuy nhiên, việc chăm sóc, dạy dỗ một con hải âu đâu phải chuyện đùa, sẽ có hàng trăm rắc rối nảy sinh và cần có những kế hoạch đầy linh hoạt được bàn bạc kỹ càng…

Chuyện con mèo dạy hải âu bay là kiệt tác dành cho thiếu nhi của nhà văn Chi Lê nổi tiếng Luis Sepúlveda – tác giả của cuốn Lão già mê đọc truyện tình đã bán được 18 triệu bản khắp thế giới. Tác phẩm không chỉ là một câu chuyện ấm áp, trong sáng, dễ thương về loài vật mà còn chuyển tải thông điệp về trách nhiệm với môi trường, về sự sẻ chia và yêu thương cũng như ý nghĩa của những nỗ lực – “Chỉ những kẻ dám mới có thể bay”.

Cuốn sách mở đầu cho mùa hè với minh họa dễ thương, hài hước là món quà dành cho mọi trẻ em và người lớn.

',41000,500,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_188285.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Dế Mèn Phiêu Lưu Ký - Tái Bản 2020','73531','3',N'Dế Mèn Phiêu Lưu Ký - Tái Bản 2020

Ấn bản minh họa màu đặc biệt của Dế Mèn phiêu lưu ký, với phần tranh ruột được in hai màu xanh - đen ấn tượng, gợi không khí đồng thoại.

“Một con dế đã từ tay ông thả ra chu du thế giới tìm những điều tốt đẹp cho loài người. Và con dế ấy đã mang tên tuổi ông đi cùng trên những chặng đường phiêu lưu đến với cộng đồng những con vật trong văn học thế giới, đến với những xứ sở thiên nhiên và văn hóa của các quốc gia khác. Dế Mèn Tô Hoài đã lại sinh ra Tô Hoài Dế Mèn, một nhà văn trẻ mãi không già trong văn chương...” - Nhà phê bình Phạm Xuân Nguyên

“Ông rất hiểu tư duy trẻ thơ, kể với chúng theo cách nghĩ của chúng, lí giải sự vật theo lô gích của trẻ. Hơn thế, với biệt tài miêu tả loài vật, Tô Hoài dựng lên một thế giới gần gũi với trẻ thơ. Khi cần, ông biết đem vào chất du ký khiến cho độc giả nhỏ tuổi vừa hồi hộp theo dõi, vừa thích thú khám phá.” - TS Nguyễn Đăng Điệp

',42000,50,0,'https://cdn0.fahasa.com/media/catalog/product/d/e/de-men-50k_1.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Bách Khoa Khủng Long Toàn Tập','36121','3',N'Bách Khoa Khủng Long Toàn Tập

Đây là cuốn sách không thể thiếu dành cho những người yêu khủng long – một tài liệu hướng dẫn nhận diện 355 loài khủng long và động vật cùng thời, do chuyên gia chấp bút, và được minh họa theo kiến thức khoa học mới nhất.

Phần giới thiệu tổng quan giải thích quá trình biến đổi về địa lí của Trái Đất và sự phát triển của động, thực vật trên thế giới, đặc biệt tập trung vào Thời đại Khủng long, cách đây 245 triệu năm. Phần này còn giải thích cách phân loại khủng long và trình bày quá trình phát triển của chúng từ những động vật ăn thịt nhỏ nhất có kích thước bằng con cáo đến những con khủng long to lớn nhất với khối lượng khổng lồ và nhiều loại vũ khí phức tạp trên cơ thể.

Các tranh giải phẫu minh họa bộ xương và cấu tạo trong của những nhóm khủng long khác nhau và giải thích cơ cấu hoạt động của chúng trong môi trường. Một bài phân tích hóa thạch đưa ra các giả thuyết về thức ăn của khủng long, các dấu chân hóa thạch giải thích về đời sống xã hội của chúng, và việc phát hiện trứng khủng long cung cấp thêm hiểu biết về việc khủng long hình thành bầy đàn như thế nào. Sách còn mô tả các sinh cảnh khác nhau nơi khủng long từng sinh sống, từ hoang mạc đền đầm phá, sông hồ, đầm lầy, núi cao và đồng bằng.

Phần chính của cuốn sách là một bách khoa thư về 355 loài khủng long và động vật thời tiền sử, được sắp xếp theo từng kỷ địa chất và các nhóm phân loại chính, với 900 minh họa, bản đồ, biểu đồ và ảnh chụp. Mỗi mục bao gồm phần mô tả đặc điểm nhận dạng chính của con vật, các yếu tố thích nghi hình thành nhờ tiến hóa và thông tin về bằng chứng hóa thạch của nó. Bên cạnh đó là một bản đồ thể hiện nơi tìm thấy hóa thạch trên thế giới ngày nay, và bảng thông tin tóm lược gồm vị trí phân loại, kích thước, thời kì và phương thức sống của con vật đó.

Cuốn sách này, với sự kết hợp độc đáo giữa nghiên cứu chuyên môn với hình ảnh phục dựng đẹp mắt, hẳn sẽ là nguồn hứng thú vô tận cho những người yêu thích khủng long. Sách dày 256 trang, khổ lớn, in màu toàn bộ, bìa cứng, có bìa áo.

Thông tin tác giả:

Dougal Dixon sinh tại Scotland, là cây bút chuyên viết sách trong các lĩnh vực khoa học về Trái Đất, đã cho ra đời nhiều cuốn sách và bách khoa thư cho trẻ em, và có niềm hứng thú đặc biệt với khủng long. Ông cũng xuất hiện trong một số chương trình truyền hình và đảm nhiệm vai trò cố vấn và tạo hình ảnh động cho một video về khủng long. Năm 1987, Dougal Dixon có đóng góp cho việc khai quật một khu vực giàu hóa thạch khủng long trong đá tuổi Jura ở Durlston thuộc vùng bờ biển Dorset, Anh. Năm 2004, ông tham gia khai quật một con Stegosaurus tại Montana, Mỹ.

Dougal được trao tặng Giải thưởng Thành tựu nổi bật cho sự xuất sắc trong lĩnh vực Báo chí giáo dục của Hiệp hội Báo chí Giáo dục Mỹ năm 1993, Giải thưởng Helen Roney Sattler năm 1993, Giải thưởng Sách khoa học phổ thông xuất sắc của Hội đồng Sách thiếu nhi 1994, và Giải thưởng Sách giáo khoa bậc Tiểu học của tạp chí Times Educational Supplement năm 1996. Cùng năm đó, ông được bổ nhiệm làm ủy viên Hội Khủng long, Vương quốc Liên hiệp Anh và Bắc Ireland.

',46000,20,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8936071674753_1.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Vòng Quanh Thế Giới: Việt Nam (Tái Bản 2019)','81237','3',N'Mỗi đất nước trên thế giới đều có rất nhiều điều thú vị để khám phá. Với chuyến du hành Vòng quanh thế giới, bạn sẽ được ghé thăm rất nhiều quốc gia, địa điểm nổi tiếng, biết thêm nhiều truyền thống văn hóa, lễ hội lí thú của con người khắp mọi nơi. Nào, còn chần chừ gì nữa, lên đường thôi!

Đất nước hình chữ S với phong cảnh thiên nhiên xinh đẹp, ẩm thực phong phú và là thiên đường của trái cây nhiệt đới. Quả gì được gọi là "Vua các loại trái cây"? Biểu tượng Thành phố Hồ Chí Minh là gì? Hang Sơn Đoòng lớn nhất thế giới nằm ở tỉnh nào? Có bao nhiêu dân tộc ở Việt Nam?',10000,10,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_184562.jpg',0,'1','2022-11-29',1)
--Tâm Lý-Kỹ Năng Sống
insert into Product values(N'Thay Đổi Cuộc Sống Với Nhân Số Học','123431','4',N'Thay Đổi Cuộc Sống Với Nhân Số Học

Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras trở nên gần gũi, dễ hiểu hơn với độc giả Việt Nam.

Đầu năm 2020, chuỗi chương trình “Thay đổi cuộc sống với Nhân số học” của  biên tập viên, người dẫn chương trình quen thuộc tại Việt Nam Lê Đỗ Quỳnh Hương ra đời trên Youtube, với mục đích chia sẻ kiến thức, giúp mọi người tìm hiểu và phát triển, hoàn thiện bản thân, các mối quan hệ xã hội thông qua bộ môn Nhân số học. Chương trình đã nhận được sự yêu mến và phản hồi tích cực của rất nhiều khán giả và độc giả sau mỗi tập phát sóng.

Nhân số học là một môn nghiên cứu sự tương quan giữa những con số trong ngày sinh, cái tên với cuộc sống, vận mệnh, đường đời và tính cách của mỗi người. Bộ môn này đã được nhà toán học Pythagoras khởi xướng cách đây 2.600 năm và sau này được nhiều thế hệ học trò liên tục kế thừa, phát triển.  

 Có thể xem, Nhân số học là một bộ môn Khám phá Bản thân (Self-Discovery), đọc vị về số. Bộ môn này giúp giải mã những tín hiệu mà cuộc sống đã gửi đến từng cá thể con người trong đời sống, tương tự như Nhân tướng học hay Nhân trắc học…Khi nghiêm túc nghiên cứu sự tồn tại và mối tương quan giữa các con số xuất hiện trong ngày, tháng, năm sinh của mỗi người qua Nhân số học, ta có thể hiểu được khá nhiều về bản thân mình, cũng như mối quan hệ của mình với người khác. Nếu hiểu những "mật mã" nằm ẩn dưới những con số, chúng ta có thể kiểm soát cuộc sống của mình, điều chỉnh chúng theo hướng ngày càng tốt đẹp hơn, phù hợp với năng lực, tính cách của mình hơn.',75000,100,0,'https://cdn0.fahasa.com/media/catalog/product/t/d/tdcsvnsh.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Rèn Luyện Tư Duy Phản Biện','1325812','4',N'Như bạn có thể thấy, chìa khóa để trở thành một người có tư duy phản biện tốt chính là sự tự nhận thức. Bạn cần phải đánh giá trung thực những điều trước đây bạn nghĩ là đúng, cũng như quá trình suy nghĩ đã dẫn bạn tới những kết luận đó. Nếu bạn không có những lý lẽ hợp lý, hoặc nếu suy nghĩ của bạn bị ảnh hưởng bởi những kinh nghiệm và cảm xúc, thì lúc đó hãy cân nhắc sử dụng tư duy phản biện! Bạn cần phải nhận ra được rằng con người, kể từ khi sinh ra, rất giỏi việc đưa ra những lý do lý giải cho những suy nghĩ khiếm khuyết của mình. Nếu bạn đang có những kết luận sai lệch này thì có một sự thật là những đức tin của bạn thường mâu thuẫn với nhau và đó thường là kết quả của thiên kiến xác nhận, nhưng nếu bạn biết điều này, thì bạn đã tiến gần hơn tới sự thật rồi!',84000,100,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_18448.jpg',0,'1','2022-11-29',1)
insert into Product values(N'OSHO - Yêu - Being In Love','912871','4',N'“YÊU” TRONG TỈNH THỨC VỚI OSHO

Một chỉ dẫn “yêu không sợ hãi” đầy ngạc nhiên từ bậc thầy tâm linh Osho

Những người đói khát trong nhu cầu, những người luôn kỳ vọng ở tình yêu chính là những người đau khổ nhất. Hai kẻ đói khát tìm thấy nhau trong một mối quan hệ yêu đương cùng những kỳ vọng người kia sẽ mang đến cho mình thứ mình cần – về cơ bản sẽ nhanh chóng thất vọng về nhau và cùng mang đến ngục tù khổ đau cho nhau. Trong cuốn sách Yêu, Osho - bậc thầy tâm linh, người được tôn vinh là một trong 1000 người kiến tạo của thế kỷ 20 – đã đưa ra những kiến giải sâu sắc về nhu cầu tâm lý có sức mạnh lớn nhất của nhân loại và “chỉ cho chúng ta cách trải nghiệm tình yêu”.

Trong “Yêu” (Tựa gốc: Being in Love), Osho dẫn người đọc vào một hành trình tìm hiểu táo bạo và đầy sôi nổi về “hiện tượng bí ẩn” mang tên tình yêu.  “Điều bạn cần làm không phải là học cách yêu, mà là loại bỏ những cách đánh mất tình yêu”, ông mở đầu. Trước tiên, Osho đưa ra một danh sách những điều “không phải là tình yêu”. Ông phân tích những nhu cầu đi kèm tình yêu thương đã phá hủy tình yêu ra sao, điều này diễn ra kể từ khi con người mới chào đời cho đến khi trưởng thành. Những thói quen đòi hỏi, mong muốn sở hữu người khác, kỳ vọng vào người khác… đều tạo nên sự hủy diệt và xung đột trong mọi mối quan hệ tình cảm, bao gồm cả tình yêu. Theo ông, tình yêu không bao gồm cảm giác ghen tuông, chiếm hữu, cạnh tranh, phụ thuộc, hay việc đòi hỏi người mình yêu phải hoàn hảo. Những điều trên đều khởi nguồn từ cái tôi, và Osho cho rằng: “Khi bạn thật sự yêu ai đó, cái tôi của bạn bắt đầu tan chảy và biến mất”.

Thông qua từng chương của cuốn sách, bạn đọc nhận diện những dấu hiệu của một tình yêu đích thực: Sự cho đi và không chờ đợi được nhận lại, sự trưởng thành cá nhân, đặc biệt là sự tỉnh thức khi yêu. “Việc tỉnh táo nhận biết về bản thể của mình là sự khởi đầu của hành trình hướng tới tình yêu”.

Trong phần trọng tâm của cuốn sách “Tình yêu là cơn gió mát lành” - Osho dành nhiều thời lượng bàn về những chỉ dẫn yêu đương, tinh tế, thấu cảm, hài hước và nhiệt tình chẳng kém gì một nhà tư vấn tâm lý hiện đại tài ba nhất. Ông hoá giải những trải nghiệm tệ hại mà ta gặp phải khi yêu: Sự hụt hẫng sau những phấn khích ban đầu hay thất vọng về tình dục. Hiếm có một bậc thầy tâm linh nào lại mang ánh sáng của thiền và đạo vào vấn đề tình dục, khoái cảm như Osho và ông đã kiến giải vấn đề này vô cùng uyên bác, thấu đáo và có tính giáo dục cao hơn bất cứ cuốn sách giáo dục giới tính nào trong vấn đề tình dục từng có. Osho cũng thẳng thừng gạt phăng những hiểu lầm, những “ý nghĩ vô nghĩa” về tình yêu như tư tưởng “yêu là đau khổ” hay phụ nữ không nên là người chủ động khi yêu.

Sau cùng, Osho đưa ra những “niềm tin mới”, cổ vũ bạn đọc dấn thân vào tình yêu đích thực, thứ tình yêu của những linh hồn trưởng thành để đem đến sự hạnh phúc, khai sáng và chữa lành cho tất cả. Osho cũng đưa ra nhiều lời khuyên đáng giá cho các cặp đôi đang yêu.

 Chúng ta thường sợ hãi khi nghĩ về tình yêu, ta e ngại những nỗi đau lẫn rắc rối mà nó đem đến. Với “Yêu”, bằng giọng văn cá tính và cuốn hút đặc trưng, Osho đem đến sự thấu hiểu trọn vẹn về tình yêu, đồng thời truyền niềm tin và sự dũng cảm để bạn đọc bước vào trải nghiệm phức tạp này một cách mới mẻ trong thứ ánh sáng tỉnh thức của tâm linh. “Tình yêu chỉ có thể trưởng thành trong tình yêu”, ông nói, “Có điều gì đó thật đẹp đang chờ bạn phía trước. Nếu bạn có thể chờ đợi, nếu bạn có đủ kiên nhẫn và có thể tin tưởng, nó sẽ đến”.

Một chỉ dẫn “yêu không sợ hãi” đầy ngạc nhiên từ bậc thầy tâm linh Osho

Những người đói khát trong nhu cầu, những người luôn kỳ vọng ở tình yêu chính là những người đau khổ nhất. Hai kẻ đói khát tìm thấy nhau trong một mối quan hệ yêu đương cùng những kỳ vọng người kia sẽ mang đến cho mình thứ mình cần – về cơ bản sẽ nhanh chóng thất vọng về nhau và cùng mang đến ngục tù khổ đau cho nhau. Trong cuốn sách Yêu, Osho - bậc thầy tâm linh, người được tôn vinh là một trong 1000 người kiến tạo của thế kỷ 20 – đã đưa ra những kiến giải sâu sắc về nhu cầu tâm lý có sức mạnh lớn nhất của nhân loại và “chỉ cho chúng ta cách trải nghiệm tình yêu”.

Trong “Yêu” (Tựa gốc: Being in Love), Osho dẫn người đọc vào một hành trình tìm hiểu táo bạo và đầy sôi nổi về “hiện tượng bí ẩn” mang tên tình yêu.  “Điều bạn cần làm không phải là học cách yêu, mà là loại bỏ những cách đánh mất tình yêu”, ông mở đầu. Trước tiên, Osho đưa ra một danh sách những điều “không phải là tình yêu”. Ông phân tích những nhu cầu đi kèm tình yêu thương đã phá hủy tình yêu ra sao, điều này diễn ra kể từ khi con người mới chào đời cho đến khi trưởng thành. Những thói quen đòi hỏi, mong muốn sở hữu người khác, kỳ vọng vào người khác… đều tạo nên sự hủy diệt và xung đột trong mọi mối quan hệ tình cảm, bao gồm cả tình yêu. Theo ông, tình yêu không bao gồm cảm giác ghen tuông, chiếm hữu, cạnh tranh, phụ thuộc, hay việc đòi hỏi người mình yêu phải hoàn hảo. Những điều trên đều khởi nguồn từ cái tôi, và Osho cho rằng: “Khi bạn thật sự yêu ai đó, cái tôi của bạn bắt đầu tan chảy và biến mất”.',20000,100,0,'https://cdn0.fahasa.com/media/catalog/product/b/e/beinglove.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Khéo Ăn Nói Sẽ Có Được Thiên Hạ (Tái Bản 2022)','1214431','4',N'Cuốn sách Khéo ăn nói sẽ có được thiên hạ của Trác Nhã sẽ giải đáp cho bạn đọc những câu hỏi đó. Cuốn sách với ngôn từ rõ ràng, gần gũi với cuộc sống sẽ mang đến những kĩ năng và phương pháp giao tiếp thực dụng, chắc chắn sẽ giúp ích được cho bạn đọc.

Giá trị của cuốn sách nằm ở chỗ tác giả đã dốc hết tâm sức nghiên cứu về các kĩ năng và quy tắc giao tiếp để đúc kết, truyền tải vào trong những trang sách khiến cho người đọc cảm thấy cuốn hút, và học hỏi được nhiều kĩ năng giúp cho bạn đọc tự tin và thành công trong việc giao tiếp.

Xây dựng mối quan hệ nhờ tài ăn nói

Từ trước đến nay, trong xã hội, giao tiếp đang là một trong những điều mà ai cũng phải đối mặt, đặc biệt là các bạn trẻ, những bạn đang bước chân đang cần chứng tỏ năng lực của mình trước cuộc sống, mọi người. Chúng ta ngày càng phải giao tiếp với rất nhiều người. Sử dụng ngôn ngữ khéo léo, thân thiện chính là cách quan trọng nhất để xóa bỏ tâm lí đề phòng của đối phương và rút ngắn khoảng cách giữa hai bên, giúp cho mọi người tin tưởng bạn hơn và từ đó sẵn sàng giúp đỡ bạn trong công việc và học tập.

Hơn nữa để thành công, bạn không được bỏ qua một mối quan hệ nào trong xã hội, mỗi một người đến và đi trong cuộc đời bạn đều có thể cho bạn nhiều bài học, kinh nghiệm quý báu mà nó sẽ chắc chắn sẽ giúp ích cho bạn trong cuộc đời. Điều quan trọng là bạn phải ăn nói, giao tiếp như nào để người đó yêu quý bạn và sẵn sàng chia sẻ cho bạn những kinh nghiệm quý báu của bản thân họ. Cuốn sách “ Khéo ăn nói sẽ có được thiên hạ” chắc chắn sẽ không làm bạn thất vọng.',79000,100,0,'https://cdn0.fahasa.com/media/catalog/product/8/9/8936067605693.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Tâm Lý Học Tính Cách','19812','4',N'Nối tiếp cuốn sách Best seller Tâm lý học hành vi, lần này Tủ sách Kiến thức về kỹ năng sống của Mintbooks xin giới thiệu tới bạn đọc cuốn bí kíp gây sốt Tâm lý học tính cách – tác phẩm được hàng triệu bạn trẻ Trung Quốc tìm đọc.

Với 312 trang sách, bạn sẽ khám phá ngay:

Nhập môn chín kiểu hình tính cách

Giúp phán đoán kiểu hình tính cách của chính mình

Nhìn thấu bản thân trong công việc, tình yêu và các mối quan hệ xã hội.

Trên thế giới này, có ai không quan tâm tới tính cách của mình? Chúng ta luôn muốn biết về tính cách của mình càng nhiều càng tốt.

Chắp bút bởi chuyên gia trong lĩnh vực tâm lý học - tiến sĩ Trâu Hoàng Minh, cuốn sách sẽ giới thiệu tới bạn đọc những tri thức và kĩ năng cần thiết trong việc phân tích tính cách con người.

“Tâm lý học tính cách” lấy “chín kiểu hình tính cách” làm trọng tâm, với nền tảng là những lý luận của tâm lý học tính cách và tâm lý học chiều sâu , giới thiệu đến bạn đọc một cách chi tiết về đặc trưng và phương pháp cải thiện khuyết điểm dành cho chín kiểu hình tính cách của con người.

Với ngôn từ dễ hiểu, ví dụ sinh động cùng nội dung chi tiết mang tính xác thực cao, tôi tin rằng cuốn sách này không chỉ giúp bạn đọc nhận thức được kiểu hình tính cách của bản thân, mà quan trọng hơn là giúp các bạn phát huy sở trường, đồng thời khắc phục khiếm khuyết của chính mình.

Có thể nói, cuốn sách này cung cấp cho độc giả công cụ hữu ích để tự hoàn thiện tính cách. Qua đây, tác giả hy vọng mỗi người đều may mắn mở được cánh cửa lớn hướng về cuộc sống hạnh phúc cá nhân.

',80000,100,0,'https://cdn0.fahasa.com/media/catalog/product/d/_/d_1__2_.jpg',0,'1','2022-11-29',1)
--Tiểu Sử Hồi Ký
insert into Product values(N'Một Người Việt Trầm Lặng','512331','5',N'ĐIỆP VIÊN VIỆT NAM THÁCH THỨC NƯỚC MỸ 

Một người Việt trầm lặng của tác giả Jean-Claude Pomonti - thêm một tác phẩm độc đáo với những góc nhìn mới, về Thiếu tướng tình báo Phạm Xuân Ẩn. Một người Việt trầm lặng - món quà tri thức đầy trân trọng và ý nghĩa dành cho độc giả nhân dịp kỷ niệm sự kiện lịch sử 30-4 năm nay. Cùng với cuốn "X6- Điệp viên hoàn hảo" của Larry Berman, đây là cuốn không thể thiếu trên kệ sách lịch sử chiến tranh Việt Nam của mỗi gia đình người Việt.',78000,200,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_225158.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Tôi Phải Sống','612331','5','TÔI PHẢI SỐNG – Dư Phương Liên – cô gái có nụ cười trong vắt tuổi 20 và một giọng văn duyên dáng đậm chất áo lụa Hà Đông. Kể chuyện đời mình, con thuyền số phận vượt qua biết bao ghềnh thác, bị bệnh tật hành hạ suốt 14 năm. Đã nỗ lực mỗi phút giây để giành giật lại sự sống, với mong ước mình được làm việc, được tự tay chăm sóc dạy dỗ con trai, nấu một bữa cơm ngon và đi chơi cùng gia đình, bè bạn.

“Sống như những đóa hoa luôn hướng về phía mặt trời!”

Khi đọc bạn sẽ thấy trong những khoảng đời tăm tối nhất, Liên vẫn luôn nỗ lực không ngừng nghỉ. Quan trọng nhất, bạn có thể sực tỉnh mà nhận ra rằng: “Hạnh phúc không phải thứ gì cao siêu, khó với. Hạnh phúc quanh ta và hạnh phúc thật gần gũi, giản dị!”',27000,100,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_238687.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Chấn Hưng Nhật Bản','82341','5',N'Chấn Hưng Nhật Bản

Nhật Bản là một trong ba nền kinh tế lớn nhất thế giới với nguồn vốn dồi dào, công nghệ tiên tiến, có kinh nghiệm quản lý hiện đại và hiệu quả. Là nước xuất khẩu vốn khổng lồ, với hơn 1 nghìn tỉ USD đầu tư trực tiếp ở nước ngoài nên Nhật Bản là đối tác kinh tế quan trọng với nhiều nước trên thế giới, trong đó có Việt Nam.

Trên con đường đi lên trở thành một trong ba nền kinh tế lớn nhất thế giới, Nhật Bản đã phải trải qua hai cuộc tái thiết đất nước vô cùng quan trọng, diễn ra vào thời kỳ Phục hưng Minh Trị năm 1868 và diễn ra sau Chiến tranh thế giới thứ hai. Trong cả hai lần tự tái thiết này, Nhật Bản đã tạo ra một nỗ lực to lớn để du nhập, làm chủ, cải tiến, thay đổi công nghệ và bí quyết ngành công nghiệp của phương Tây. Và nhờ đó, Nhật Bản dường như trở nên bất bại trong lĩnh vực công nghiệp và công nghệ.',19000,400,0,'https://cdn0.fahasa.com/media/catalog/product/b/i/bia_chan-hung-nhat-ban.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Hãy Gọi Tên Tôi','02341','5',N'Vào tháng 1 năm 2015, một vụ án hiếp dâm trong khuôn viên trường đại học Stanford đã gây rúng động nước Mỹ. Nạn nhân là một cô gái 22 tuổi bị cưỡng bức trong tình trạng ngất xỉu và say xỉn phía sau một thùng rác ngay bên ngoài trụ sở của Hội Kappa Alpha. Thủ phạm ngay lập tức bị giam giữ và được xác định là Brock Turner, khi đó 19 tuổi, sinh viên năm nhất của trường.

Vụ án sau đó đã được xét xử, Brock Turner bị tuyên án vào tháng 6 năm 2016 với bản án 6 tháng tù giam và 3 năm quản chế với 3 tội danh: hiếp dâm một người bất tỉnh, dùng tay xâm hại tình dục một người bất tỉnh, và hành hung với ý định cưỡng dâm.',43000,200,0,'https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_44032.jpg',0,'1','2022-11-29',1)
insert into Product values(N'Ung Thư Không Phải Là Chết','125121','5',N'Là tự truyện của một bác sĩ mắc căn bệnh ung thư gan nguyên phát. Nhờ vào sự hiểu biết, kiến thức y khoa cùng ý chí kiên cường, tinh thần lạc quan, bác sĩ Nguyễn Lê đã trải qua 2 lần phẫu thuật, dùng các biện pháp y học hỗ trợ, rèn luyện cơ thể và một chế độ dinh dưỡng hợp lí đã sống 10 năm tròn sau khi phát hiện bệnh… Cuốn sách không chỉ kể lại quá trình đấu tranh với bệnh tật, mà còn cung cấp trải nghiệm, kinh nghiệm, kiến thức, hiểu biết giúp những người bệnh ung thư khác có thêm tin tưởng, lạc quan để chiến đấu và chiến thắng bệnh…',90000,500,0,'https://cdn0.fahasa.com/media/catalog/product/u/n/unnamed_2_8.jpg',0,'1','2022-11-29',1)
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