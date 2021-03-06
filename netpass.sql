SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AccountUsername] [varchar](255) NOT NULL,
	[ApplicationName] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[AccountPassword] [varchar](128) NOT NULL,
	[PasswordQuestion] [varchar](255) NULL,
	[PasswordAnswer] [varchar](255) NULL,
	[IsApproved] [int] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[LastPasswordChangedDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[IsOnLine] [int] NULL,
	[IsLockedOut] [int] NULL,
	[LastLockedOutDate] [datetime] NULL,
	[FailedPasswordAttemptCount] [int] NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NULL,
	[FailedPasswordAnswerAttemptCount] [int] NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NULL,
	[Comment] [text] NULL,
 CONSTRAINT [PK__Users__7C8480AE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProfileData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProfileData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProfileId] [int] NOT NULL,
	[PropertyName] [varchar](255) NOT NULL,
	[PropertyValue] [text] NOT NULL,
 CONSTRAINT [PK_ProfileData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Profiles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AccountUsername] [varchar](255) NOT NULL,
	[ApplicationName] [varchar](255) NOT NULL,
	[IsAnonymous] [int] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[Rolename] [varchar](255) NOT NULL,
	[ApplicationName] [varchar](255) NOT NULL,
 CONSTRAINT [PKRoles] PRIMARY KEY CLUSTERED 
(
	[Rolename] ASC,
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsersInRoles](
	[AccountUsername] [varchar](255) NOT NULL,
	[Rolename] [varchar](255) NOT NULL,
	[ApplicationName] [varchar](255) NOT NULL,
 CONSTRAINT [PKUsersInRoles] PRIMARY KEY CLUSTERED 
(
	[AccountUsername] ASC,
	[Rolename] ASC,
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
