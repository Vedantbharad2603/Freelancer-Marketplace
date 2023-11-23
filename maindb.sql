USE [master]
GO
/****** Object:  Database [Freelancer_Marketplace_DB]    Script Date: 27-10-2023 7.55.52 AM ******/
CREATE DATABASE [Freelancer_Marketplace_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Freelancer_Marketplace_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VEDANT\MSSQL\DATA\Freelancer_Marketplace_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Freelancer_Marketplace_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.VEDANT\MSSQL\DATA\Freelancer_Marketplace_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Freelancer_Marketplace_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Freelancer_Marketplace_DB', N'ON'
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET QUERY_STORE = OFF
GO
USE [Freelancer_Marketplace_DB]
GO
/****** Object:  User [FL_User]    Script Date: 27-10-2023 7.55.52 AM ******/
CREATE USER [FL_User] FOR LOGIN [FL_User] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [FL_User]
GO
/****** Object:  Table [dbo].[bids]    Script Date: 27-10-2023 7.55.52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bids](
	[bid_id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NOT NULL,
	[freelancer_id] [int] NOT NULL,
	[bid_amount] [decimal](10, 2) NOT NULL,
	[proposal_text] [text] NULL,
	[bidstime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[bid_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[calendar_events]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calendar_events](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[event_title] [varchar](255) NULL,
	[event_description] [text] NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chatmessages]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chatmessages](
	[message_id] [int] IDENTITY(1,1) NOT NULL,
	[sender_id] [int] NOT NULL,
	[receiver_id] [int] NOT NULL,
	[content] [nvarchar](max) NULL,
	[chattime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projects]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projects](
	[project_id] [int] IDENTITY(1,1) NOT NULL,
	[client_id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[project_description] [text] NULL,
	[budget] [decimal](10, 2) NULL,
	[deadline] [date] NULL,
	[project_status] [varchar](255) NULL,
	[date_created] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reported_issues]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reported_issues](
	[report_id] [int] IDENTITY(1,1) NOT NULL,
	[reporter_id] [int] NOT NULL,
	[reported_user_id] [int] NOT NULL,
	[report_content] [text] NULL,
	[report_status] [varchar](255) NULL,
	[reported_time] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[report_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews_ratings]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews_ratings](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[reviewed_user_id] [int] NOT NULL,
	[reviewer_id] [int] NOT NULL,
	[rating_score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_profiles]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_profiles](
	[profile_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[bio] [text] NULL,
	[portfolio] [text] NULL,
	[full_name] [varchar](255) NULL,
	[location] [varchar](255) NULL,
	[skills] [text] NULL,
	[contact_information] [varchar](255) NULL,
	[social_media_links] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[profile_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usersdata]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usersdata](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[userpassword] [nvarchar](255) NOT NULL,
	[profile_picture] [nvarchar](255) NULL,
	[registration_date] [datetime] NULL,
	[last_login_date] [datetime] NULL,
	[is_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[usersdata] ADD  DEFAULT (getdate()) FOR [registration_date]
GO
ALTER TABLE [dbo].[usersdata] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[bids]  WITH CHECK ADD FOREIGN KEY([freelancer_id])
REFERENCES [dbo].[usersdata] ([userid])
GO
ALTER TABLE [dbo].[bids]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([project_id])
GO
ALTER TABLE [dbo].[calendar_events]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[usersdata] ([userid])
GO
ALTER TABLE [dbo].[chatmessages]  WITH CHECK ADD FOREIGN KEY([receiver_id])
REFERENCES [dbo].[usersdata] ([userid])
GO
ALTER TABLE [dbo].[chatmessages]  WITH CHECK ADD FOREIGN KEY([sender_id])
REFERENCES [dbo].[usersdata] ([userid])
GO
ALTER TABLE [dbo].[projects]  WITH CHECK ADD FOREIGN KEY([client_id])
REFERENCES [dbo].[usersdata] ([userid])
GO
ALTER TABLE [dbo].[reported_issues]  WITH CHECK ADD FOREIGN KEY([reporter_id])
REFERENCES [dbo].[usersdata] ([userid])
GO
ALTER TABLE [dbo].[reported_issues]  WITH CHECK ADD FOREIGN KEY([reported_user_id])
REFERENCES [dbo].[usersdata] ([userid])
GO
ALTER TABLE [dbo].[reviews_ratings]  WITH CHECK ADD FOREIGN KEY([reviewed_user_id])
REFERENCES [dbo].[usersdata] ([userid])
GO
ALTER TABLE [dbo].[reviews_ratings]  WITH CHECK ADD FOREIGN KEY([reviewer_id])
REFERENCES [dbo].[usersdata] ([userid])
GO
ALTER TABLE [dbo].[user_profiles]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[usersdata] ([userid])
GO
/****** Object:  StoredProcedure [dbo].[AddReviewAndRating]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddReviewAndRating]
    @reviewedUserID INT,
    @reviewerID INT,
    @ratingScore INT
AS
BEGIN
    INSERT INTO reviews_ratings (reviewed_user_id, reviewer_id, rating_score)
    VALUES (@reviewedUserID, @reviewerID, @ratingScore);
END
GO
/****** Object:  StoredProcedure [dbo].[CloseProject]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CloseProject]
    @projectID INT
AS
BEGIN
    UPDATE projects
    SET project_status = 'Closed'
    WHERE project_id = @projectID;
END
GO
/****** Object:  StoredProcedure [dbo].[CreateProject]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateProject]
    @clientID INT,
    @projectTitle VARCHAR(255),
    @projectDescription TEXT,
    @projectBudget DECIMAL(10, 2),
    @projectDeadline DATE
AS
BEGIN
    INSERT INTO projects (client_id, title, project_description, budget, deadline, project_status)
    VALUES (@clientID, @projectTitle, @projectDescription, @projectBudget, @projectDeadline, 'Open');
END
GO
/****** Object:  StoredProcedure [dbo].[GetBidsForProject]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBidsForProject]
    @projectID INT
AS
BEGIN
    SELECT *
    FROM bids
    WHERE project_id = @projectID;
END
GO
/****** Object:  StoredProcedure [dbo].[GetMessagesInConversation]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMessagesInConversation]
    @senderID INT,
    @recipientID INT
AS
BEGIN
    SELECT *
    FROM chatmessages
    WHERE (sender_id = @senderID AND receiver_id = @recipientID)
       OR (sender_id = @recipientID AND receiver_id = @senderID)
    ORDER BY chattime;
END
GO
/****** Object:  StoredProcedure [dbo].[GetProjectByID]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProjectByID]
    @projectID INT
AS
BEGIN
    SELECT *
    FROM projects
    WHERE project_id = @projectID;
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserByID]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserByID]
    @userID INT
AS
BEGIN
    SELECT *
    FROM usersdata
    WHERE userid = @userID;
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserOpenProjects]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserOpenProjects]
    @userID INT
AS
BEGIN
    SELECT *
    FROM projects
    WHERE client_id = @userID AND project_status = 'Open';
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserProfileByID]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserProfileByID]
    @userID INT
AS
BEGIN
    SELECT *
    FROM user_profiles
    WHERE user_id = @userID;
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserProjects]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserProjects]
    @userID INT
AS
BEGIN
    SELECT *
    FROM projects
    WHERE client_id = @userID;
END
GO
/****** Object:  StoredProcedure [dbo].[SendMessage]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SendMessage]
    @senderID INT,
    @recipientID INT,
    @messageContent NVARCHAR(MAX),
    @chattime DATETIME
AS
BEGIN
    INSERT INTO chatmessages (sender_id, receiver_id, content, chattime)
    VALUES (@senderID, @recipientID, @messageContent, @chattime);
END
GO
/****** Object:  StoredProcedure [dbo].[SubmitBid]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SubmitBid]
    @projectID INT,
    @freelancerID INT,
    @bidAmount DECIMAL(10, 2),
    @proposalText TEXT,
    @bidTime DATETIME 
AS
BEGIN
    INSERT INTO bids (project_id, freelancer_id, bid_amount, proposal_text, bidstime)
    VALUES (@projectID, @freelancerID, @bidAmount, @proposalText, @bidTime);
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProjectStatus]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateProjectStatus]
    @projectID INT,
    @newStatus VARCHAR(255)
AS
BEGIN
    UPDATE projects
    SET project_status = @newStatus
    WHERE project_id = @projectID;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserProfile]    Script Date: 27-10-2023 7.55.53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUserProfile]
    @userID INT,
    @newBio NVARCHAR(MAX),
    @newPortfolio NVARCHAR(MAX),
    @newSkills NVARCHAR(MAX),
    @newContactInfo VARCHAR(255),
    @newSocialLinks NVARCHAR(MAX)
AS
BEGIN
    UPDATE user_profiles
    SET bio = @newBio,
        portfolio = @newPortfolio,
        skills = @newSkills,
        contact_information = @newContactInfo,
        social_media_links = @newSocialLinks
    WHERE user_id = @userID;
END
GO
USE [master]
GO
ALTER DATABASE [Freelancer_Marketplace_DB] SET  READ_WRITE 
GO
