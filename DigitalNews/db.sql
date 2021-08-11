
USE [DigitalNews]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 5/14/2021 11:31:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NULL,
	[Content] [varchar](max) NULL,
	[Summary] [varchar](max) NULL,
	[Writer] [varchar](max) NULL,
	[PublishedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Article] ON 
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (1, N'Quisque id justo sit amet sapien dignissim vestibulum', N'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Brittany Ashby', CAST(N'2020-12-30T13:52:59.000' AS DateTime))
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (2, N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla', N'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', N'Yancey Massinger', CAST(N'2020-12-05T15:42:15.000' AS DateTime))
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (3, N'Morbi quis tortor id nulla ultrices aliquet', N'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'Elmira Bambrugh', CAST(N'2020-11-10T00:07:57.000' AS DateTime))
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (4, N'Etiam pretium iaculis justo', N'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                      </p>
                      <p>
                          Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat. Cras mollis scelerisque nunc. Nullam arcu. Aliquam consequat. Curabitur augue lorem, dapibus quis, laoreet et, pretium ac, nisi. Aenean magna nisl, mollis quis, molestie eu, feugiat in, orci. In hac habitasse platea dictumst.
                      </p>', N'<p>Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.</p>', N'Cosetta Ivanikov', CAST(N'2021-03-21T19:40:30.000' AS DateTime))
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (5, N'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue', N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', N'Stephannie Lesley', CAST(N'2020-09-21T16:59:22.000' AS DateTime))
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (6, N'Integer ac leo. Pellentesque ultrices mattis odio', N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', N'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', N'Dominick Edmands', CAST(N'2020-08-07T02:25:09.000' AS DateTime))
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (7, N'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst', N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', N'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', N'Sosanna Fronek', CAST(N'2021-02-25T07:58:59.000' AS DateTime))
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (8, N'Nulla mollis molestie lorem. Quisque ut erat', N'Fusce consequat. Nulla nisl. Nunc nisl.', N'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', N'Ingelbert Petters', CAST(N'2021-01-01T08:58:07.000' AS DateTime))
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (9, N'Proin at turpis a pede posuere nonummy', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', N'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', N'Gilburt Carl', CAST(N'2020-10-02T15:05:05.000' AS DateTime))
GO
INSERT [dbo].[Article] ([ID], [Title], [Content], [Summary], [Writer], [PublishedDate]) VALUES (10, N'Nam tristique tortor eu pede', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', N'Elvin Bragg', CAST(N'2020-09-21T04:23:02.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Article] OFF
GO
USE [master]
GO
ALTER DATABASE [DucLong_Digital] SET  READ_WRITE 
GO
