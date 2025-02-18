USE [SignalRDemo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpAuditLogActions]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpAuditLogActions](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[AuditLogId] [uniqueidentifier] NOT NULL,
	[ServiceName] [nvarchar](256) NULL,
	[MethodName] [nvarchar](128) NULL,
	[Parameters] [nvarchar](2000) NULL,
	[ExecutionTime] [datetime2](7) NOT NULL,
	[ExecutionDuration] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpAuditLogActions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpAuditLogs]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpAuditLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](96) NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[TenantName] [nvarchar](64) NULL,
	[ImpersonatorUserId] [uniqueidentifier] NULL,
	[ImpersonatorUserName] [nvarchar](256) NULL,
	[ImpersonatorTenantId] [uniqueidentifier] NULL,
	[ImpersonatorTenantName] [nvarchar](64) NULL,
	[ExecutionTime] [datetime2](7) NOT NULL,
	[ExecutionDuration] [int] NOT NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[ClientName] [nvarchar](128) NULL,
	[ClientId] [nvarchar](64) NULL,
	[CorrelationId] [nvarchar](64) NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[HttpMethod] [nvarchar](16) NULL,
	[Url] [nvarchar](256) NULL,
	[Exceptions] [nvarchar](max) NULL,
	[Comments] [nvarchar](256) NULL,
	[HttpStatusCode] [int] NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpAuditLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpBackgroundJobs]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpBackgroundJobs](
	[Id] [uniqueidentifier] NOT NULL,
	[JobName] [nvarchar](128) NOT NULL,
	[JobArgs] [nvarchar](max) NOT NULL,
	[TryCount] [smallint] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[NextTryTime] [datetime2](7) NOT NULL,
	[LastTryTime] [datetime2](7) NULL,
	[IsAbandoned] [bit] NOT NULL,
	[Priority] [tinyint] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpBackgroundJobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpClaimTypes]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpClaimTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Required] [bit] NOT NULL,
	[IsStatic] [bit] NOT NULL,
	[Regex] [nvarchar](512) NULL,
	[RegexDescription] [nvarchar](128) NULL,
	[Description] [nvarchar](256) NULL,
	[ValueType] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpClaimTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityChanges]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityChanges](
	[Id] [uniqueidentifier] NOT NULL,
	[AuditLogId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ChangeTime] [datetime2](7) NOT NULL,
	[ChangeType] [tinyint] NOT NULL,
	[EntityTenantId] [uniqueidentifier] NULL,
	[EntityId] [nvarchar](128) NOT NULL,
	[EntityTypeFullName] [nvarchar](128) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpEntityChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityPropertyChanges]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityPropertyChanges](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[EntityChangeId] [uniqueidentifier] NOT NULL,
	[NewValue] [nvarchar](512) NULL,
	[OriginalValue] [nvarchar](512) NULL,
	[PropertyName] [nvarchar](128) NOT NULL,
	[PropertyTypeFullName] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_AbpEntityPropertyChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatureGroups]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatureGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpFeatureGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatures]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatures](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[ParentName] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[DefaultValue] [nvarchar](256) NULL,
	[IsVisibleToClients] [bit] NOT NULL,
	[IsAvailableToHost] [bit] NOT NULL,
	[AllowedProviders] [nvarchar](256) NULL,
	[ValueType] [nvarchar](2048) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatureValues]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatureValues](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](128) NOT NULL,
	[ProviderName] [nvarchar](64) NULL,
	[ProviderKey] [nvarchar](64) NULL,
 CONSTRAINT [PK_AbpFeatureValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpLinkUsers]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpLinkUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[SourceUserId] [uniqueidentifier] NOT NULL,
	[SourceTenantId] [uniqueidentifier] NULL,
	[TargetUserId] [uniqueidentifier] NOT NULL,
	[TargetTenantId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpLinkUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnitRoles]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnitRoles](
	[RoleId] [uniqueidentifier] NOT NULL,
	[OrganizationUnitId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpOrganizationUnitRoles] PRIMARY KEY CLUSTERED 
(
	[OrganizationUnitId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnits]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnits](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Code] [nvarchar](95) NOT NULL,
	[DisplayName] [nvarchar](128) NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissionGrants]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissionGrants](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[ProviderName] [nvarchar](64) NOT NULL,
	[ProviderKey] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_AbpPermissionGrants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissionGroups]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissionGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpPermissionGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissions]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissions](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[ParentName] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[MultiTenancySide] [tinyint] NOT NULL,
	[Providers] [nvarchar](128) NULL,
	[StateCheckers] [nvarchar](256) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoleClaims]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoleClaims](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ClaimType] [nvarchar](256) NOT NULL,
	[ClaimValue] [nvarchar](1024) NULL,
 CONSTRAINT [PK_AbpRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoles]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Name] [nvarchar](256) NOT NULL,
	[NormalizedName] [nvarchar](256) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsStatic] [bit] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpSecurityLogs]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpSecurityLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ApplicationName] [nvarchar](96) NULL,
	[Identity] [nvarchar](96) NULL,
	[Action] [nvarchar](96) NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NULL,
	[TenantName] [nvarchar](64) NULL,
	[ClientId] [nvarchar](64) NULL,
	[CorrelationId] [nvarchar](64) NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpSecurityLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpSettings]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpSettings](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](2048) NOT NULL,
	[ProviderName] [nvarchar](64) NULL,
	[ProviderKey] [nvarchar](64) NULL,
 CONSTRAINT [PK_AbpSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenantConnectionStrings]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenantConnectionStrings](
	[TenantId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Value] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_AbpTenantConnectionStrings] PRIMARY KEY CLUSTERED 
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenants]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenants](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpTenants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserClaims]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserClaims](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ClaimType] [nvarchar](256) NOT NULL,
	[ClaimValue] [nvarchar](1024) NULL,
 CONSTRAINT [PK_AbpUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserDelegations]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserDelegations](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[SourceUserId] [uniqueidentifier] NOT NULL,
	[TargetUserId] [uniqueidentifier] NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[EndTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AbpUserDelegations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserLogins]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](64) NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ProviderKey] [nvarchar](196) NOT NULL,
	[ProviderDisplayName] [nvarchar](128) NULL,
 CONSTRAINT [PK_AbpUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserOrganizationUnits]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserOrganizationUnits](
	[UserId] [uniqueidentifier] NOT NULL,
	[OrganizationUnitId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpUserOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[OrganizationUnitId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserRoles]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUsers]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[NormalizedUserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](64) NULL,
	[Surname] [nvarchar](64) NULL,
	[Email] [nvarchar](256) NOT NULL,
	[NormalizedEmail] [nvarchar](256) NOT NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](256) NULL,
	[SecurityStamp] [nvarchar](256) NOT NULL,
	[IsExternal] [bit] NOT NULL,
	[PhoneNumber] [nvarchar](16) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ShouldChangePasswordOnNextLogin] [bit] NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[LastPasswordChangeTime] [datetimeoffset](7) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserTokens]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](64) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerApiResourceClaims]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerApiResourceClaims](
	[Type] [nvarchar](200) NOT NULL,
	[ApiResourceId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_IdentityServerApiResourceClaims] PRIMARY KEY CLUSTERED 
(
	[ApiResourceId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerApiResourceProperties]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerApiResourceProperties](
	[ApiResourceId] [uniqueidentifier] NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_IdentityServerApiResourceProperties] PRIMARY KEY CLUSTERED 
(
	[ApiResourceId] ASC,
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerApiResources]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerApiResources](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Enabled] [bit] NOT NULL,
	[AllowedAccessTokenSigningAlgorithms] [nvarchar](100) NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_IdentityServerApiResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerApiResourceScopes]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerApiResourceScopes](
	[ApiResourceId] [uniqueidentifier] NOT NULL,
	[Scope] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_IdentityServerApiResourceScopes] PRIMARY KEY CLUSTERED 
(
	[ApiResourceId] ASC,
	[Scope] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerApiResourceSecrets]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerApiResourceSecrets](
	[Type] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](4000) NOT NULL,
	[ApiResourceId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Expiration] [datetime2](7) NULL,
 CONSTRAINT [PK_IdentityServerApiResourceSecrets] PRIMARY KEY CLUSTERED 
(
	[ApiResourceId] ASC,
	[Type] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerApiScopeClaims]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerApiScopeClaims](
	[Type] [nvarchar](200) NOT NULL,
	[ApiScopeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_IdentityServerApiScopeClaims] PRIMARY KEY CLUSTERED 
(
	[ApiScopeId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerApiScopeProperties]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerApiScopeProperties](
	[ApiScopeId] [uniqueidentifier] NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_IdentityServerApiScopeProperties] PRIMARY KEY CLUSTERED 
(
	[ApiScopeId] ASC,
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerApiScopes]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerApiScopes](
	[Id] [uniqueidentifier] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Required] [bit] NOT NULL,
	[Emphasize] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_IdentityServerApiScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClientClaims]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClientClaims](
	[ClientId] [uniqueidentifier] NOT NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_IdentityServerClientClaims] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Type] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClientCorsOrigins]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClientCorsOrigins](
	[ClientId] [uniqueidentifier] NOT NULL,
	[Origin] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_IdentityServerClientCorsOrigins] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Origin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClientGrantTypes]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClientGrantTypes](
	[ClientId] [uniqueidentifier] NOT NULL,
	[GrantType] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_IdentityServerClientGrantTypes] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[GrantType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClientIdPRestrictions]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClientIdPRestrictions](
	[ClientId] [uniqueidentifier] NOT NULL,
	[Provider] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_IdentityServerClientIdPRestrictions] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Provider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClientPostLogoutRedirectUris]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClientPostLogoutRedirectUris](
	[ClientId] [uniqueidentifier] NOT NULL,
	[PostLogoutRedirectUri] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_IdentityServerClientPostLogoutRedirectUris] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[PostLogoutRedirectUri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClientProperties]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClientProperties](
	[ClientId] [uniqueidentifier] NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_IdentityServerClientProperties] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClientRedirectUris]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClientRedirectUris](
	[ClientId] [uniqueidentifier] NOT NULL,
	[RedirectUri] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_IdentityServerClientRedirectUris] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[RedirectUri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClients]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClients](
	[Id] [uniqueidentifier] NOT NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[ClientName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[ClientUri] [nvarchar](2000) NULL,
	[LogoUri] [nvarchar](2000) NULL,
	[Enabled] [bit] NOT NULL,
	[ProtocolType] [nvarchar](200) NOT NULL,
	[RequireClientSecret] [bit] NOT NULL,
	[RequireConsent] [bit] NOT NULL,
	[AllowRememberConsent] [bit] NOT NULL,
	[AlwaysIncludeUserClaimsInIdToken] [bit] NOT NULL,
	[RequirePkce] [bit] NOT NULL,
	[AllowPlainTextPkce] [bit] NOT NULL,
	[RequireRequestObject] [bit] NOT NULL,
	[AllowAccessTokensViaBrowser] [bit] NOT NULL,
	[FrontChannelLogoutUri] [nvarchar](2000) NULL,
	[FrontChannelLogoutSessionRequired] [bit] NOT NULL,
	[BackChannelLogoutUri] [nvarchar](2000) NULL,
	[BackChannelLogoutSessionRequired] [bit] NOT NULL,
	[AllowOfflineAccess] [bit] NOT NULL,
	[IdentityTokenLifetime] [int] NOT NULL,
	[AllowedIdentityTokenSigningAlgorithms] [nvarchar](100) NULL,
	[AccessTokenLifetime] [int] NOT NULL,
	[AuthorizationCodeLifetime] [int] NOT NULL,
	[ConsentLifetime] [int] NULL,
	[AbsoluteRefreshTokenLifetime] [int] NOT NULL,
	[SlidingRefreshTokenLifetime] [int] NOT NULL,
	[RefreshTokenUsage] [int] NOT NULL,
	[UpdateAccessTokenClaimsOnRefresh] [bit] NOT NULL,
	[RefreshTokenExpiration] [int] NOT NULL,
	[AccessTokenType] [int] NOT NULL,
	[EnableLocalLogin] [bit] NOT NULL,
	[IncludeJwtId] [bit] NOT NULL,
	[AlwaysSendClientClaims] [bit] NOT NULL,
	[ClientClaimsPrefix] [nvarchar](200) NULL,
	[PairWiseSubjectSalt] [nvarchar](200) NULL,
	[UserSsoLifetime] [int] NULL,
	[UserCodeType] [nvarchar](100) NULL,
	[DeviceCodeLifetime] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_IdentityServerClients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClientScopes]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClientScopes](
	[ClientId] [uniqueidentifier] NOT NULL,
	[Scope] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_IdentityServerClientScopes] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Scope] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerClientSecrets]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerClientSecrets](
	[Type] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](4000) NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Expiration] [datetime2](7) NULL,
 CONSTRAINT [PK_IdentityServerClientSecrets] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[Type] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerDeviceFlowCodes]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerDeviceFlowCodes](
	[Id] [uniqueidentifier] NOT NULL,
	[DeviceCode] [nvarchar](200) NOT NULL,
	[UserCode] [nvarchar](200) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Expiration] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_IdentityServerDeviceFlowCodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerIdentityResourceClaims]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerIdentityResourceClaims](
	[Type] [nvarchar](200) NOT NULL,
	[IdentityResourceId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_IdentityServerIdentityResourceClaims] PRIMARY KEY CLUSTERED 
(
	[IdentityResourceId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerIdentityResourceProperties]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerIdentityResourceProperties](
	[IdentityResourceId] [uniqueidentifier] NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_IdentityServerIdentityResourceProperties] PRIMARY KEY CLUSTERED 
(
	[IdentityResourceId] ASC,
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerIdentityResources]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerIdentityResources](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Enabled] [bit] NOT NULL,
	[Required] [bit] NOT NULL,
	[Emphasize] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_IdentityServerIdentityResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityServerPersistedGrants]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityServerPersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[ConsumedTime] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_IdentityServerPersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notification_message]    Script Date: 2023/8/6 17:35:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification_message](
	[Id] [uniqueidentifier] NOT NULL,
	[Status] [int] NULL,
	[Type] [int] NULL,
	[SendTime] [nvarchar](500) NULL,
	[Content] [nvarchar](500) NULL,
	[TestName] [nvarchar](500) NULL,
 CONSTRAINT [PK_notification_message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230517092201_Initial', N'7.0.1')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'6cd78c50-8032-6720-f262-3a0cdc35eebc', NULL, N'21a4ba45-38a4-f22c-9467-3a0cdc35eebc', N'Volo.Abp.Account.AccountAppService', N'RegisterAsync', N'{"input":{"userName":"hai.huang","emailAddress":"hai.huang@hotmail.com","appName":"MVC","extraProperties":{}}}', CAST(N'2023-08-06T16:48:57.0267363' AS DateTime2), 999, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'53c204db-64b7-532c-ad70-3a0cdc35eec0', NULL, N'21a4ba45-38a4-f22c-9467-3a0cdc35eebc', N'Volo.Abp.Account.Web.Pages.Account.RegisterModel', N'OnPostAsync', N'{}', CAST(N'2023-08-06T16:48:57.0159332' AS DateTime2), 3572, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'21809a68-f078-87cd-675a-3a0cdc3d2631', NULL, N'b0ec162b-08ac-542b-f48a-3a0cdc3d2631', N'Volo.Abp.Account.Web.Pages.Account.RegisterModel', N'OnPostAsync', N'{}', CAST(N'2023-08-06T16:56:51.4111669' AS DateTime2), 2118, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'0d08800c-1cce-18fc-afdf-3a0cdc3d2631', NULL, N'b0ec162b-08ac-542b-f48a-3a0cdc3d2631', N'Volo.Abp.Account.AccountAppService', N'RegisterAsync', N'{"input":{"userName":"miao","emailAddress":"miao@qq.com","appName":"MVC","extraProperties":{}}}', CAST(N'2023-08-06T16:56:51.4125048' AS DateTime2), 1015, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'266eff4b-2651-d032-ebf9-3a0cdc3d594d', NULL, N'87e863ea-f115-0cce-8ee4-3a0cdc3d594d', N'Volo.Abp.Account.AccountAppService', N'RegisterAsync', N'{"input":{"userName":"miao","emailAddress":"miao@qq.com","appName":"MVC","extraProperties":{}}}', CAST(N'2023-08-06T16:57:04.6674564' AS DateTime2), 827, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'fe321a41-12f1-7251-f5fd-3a0cdc3d594d', NULL, N'87e863ea-f115-0cce-8ee4-3a0cdc3d594d', N'Volo.Abp.Account.Web.Pages.Account.RegisterModel', N'OnPostAsync', N'{}', CAST(N'2023-08-06T16:57:04.6665520' AS DateTime2), 1951, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'bb6b2300-779f-2cca-ad72-3a0cdc3d7483', NULL, N'48fc12c5-8ebf-b69a-f32e-3a0cdc3d7483', N'Volo.Abp.Account.Web.Pages.Account.RegisterModel', N'OnPostAsync', N'{}', CAST(N'2023-08-06T16:57:13.4279295' AS DateTime2), 175, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'6a2229de-8754-5081-e8a3-3a0cdc3d7483', NULL, N'48fc12c5-8ebf-b69a-f32e-3a0cdc3d7483', N'Volo.Abp.Account.AccountAppService', N'RegisterAsync', N'{"input":{"userName":"miao","emailAddress":"miao@qq.com","appName":"MVC","extraProperties":{}}}', CAST(N'2023-08-06T16:57:13.4285699' AS DateTime2), 141, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'9fb21f33-06cc-da1d-a228-3a0cdc47fe8b', NULL, N'5880fceb-32b7-7617-3506-3a0cdc47fe8a', N'SignalRDemo.CustomerNotification.ChatAppService', N'CreateAsync', N'{"message":{"fromUserName":null,"sendTime":"2023-08-06T17:08:40.1065847+08:00","content":"hai.huang: \u4F60\u597D"}}', CAST(N'2023-08-06T17:08:40.1257658' AS DateTime2), 2342, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'2a0b58b6-86cb-727b-c96c-3a0cdc4959fd', NULL, N'68d0fe75-7f56-abb4-ede8-3a0cdc4959fd', N'SignalRDemo.CustomerNotification.ChatAppService', N'CreateAsync', N'{"message":{"fromUserName":null,"sendTime":"2023-08-06T17:10:10.2259312+08:00","content":"hai.huang: \u4F60\u597D"}}', CAST(N'2023-08-06T17:10:10.2280743' AS DateTime2), 1214, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'9e57ee7d-fe73-5e51-05c9-3a0cdc498fca', NULL, N'd7aa4636-d302-6e3b-0d40-3a0cdc498fca', N'SignalRDemo.CustomerNotification.ChatAppService', N'CreateAsync', N'{"message":{"fromUserName":null,"sendTime":"2023-08-06T17:10:24.8063107+08:00","content":"hai.huang: \u4F60\u597D"}}', CAST(N'2023-08-06T17:10:24.8071861' AS DateTime2), 1165, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'0696b93e-6314-24bf-0619-3a0cdc49bd4a', NULL, N'3d0ab7fd-ad92-6959-756d-3a0cdc49bd4a', N'SignalRDemo.CustomerNotification.ChatAppService', N'CreateAsync', N'{"message":{"fromUserName":null,"sendTime":"2023-08-06T17:10:36.4753295+08:00","content":"hai.huang: \u4F60\u597D"}}', CAST(N'2023-08-06T17:10:36.4761160' AS DateTime2), 1194, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f86c2715-5daf-41db-bc70-3a0cdc4c4828', NULL, N'fa9f9832-7aa7-cd11-5dd0-3a0cdc4c4827', N'SignalRDemo.CustomerNotification.ChatAppService', N'CreateAsync', N'{"message":{"fromUserName":null,"sendTime":"2023-08-06T17:13:21.7189026+08:00","content":"hai.huang: \u4F60\u597D"}}', CAST(N'2023-08-06T17:13:21.7481391' AS DateTime2), 1989, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'3913c309-511b-a051-867f-3a0cdc4cbea0', NULL, N'3d1c97f7-7abc-893e-0b37-3a0cdc4cbea0', N'SignalRDemo.CustomerNotification.ChatAppService', N'CreateAsync', N'{"message":{"fromUserName":null,"sendTime":"2023-08-06T17:13:53.2935844+08:00","content":"hai.huang: \u5355\u72EC"}}', CAST(N'2023-08-06T17:13:53.2956756' AS DateTime2), 1289, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'8c43e28f-1666-486a-2621-3a0cdc4d9af3', NULL, N'8e10b9ab-b9d0-69bc-49df-3a0cdc4d9af3', N'SignalRDemo.CustomerNotification.ChatAppService', N'CreateAsync', N'{"message":{"fromUserName":null,"sendTime":"2023-08-06T17:14:49.9048636+08:00","content":"hai.huang: \u6D4B\u8BD5\u554A"}}', CAST(N'2023-08-06T17:14:49.9059211' AS DateTime2), 1139, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'79a6a264-f325-9e2a-68a3-3a0cdc4e1df7', NULL, N'1a0bf0e6-a5c0-0c6d-6eed-3a0cdc4e1df7', N'SignalRDemo.CustomerNotification.ChatAppService', N'CreateAsync', N'{"message":{"fromUserName":null,"sendTime":"2023-08-06T17:15:25.5376415+08:00","content":"hai.huang: nihao "}}', CAST(N'2023-08-06T17:15:25.5430538' AS DateTime2), 11, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'1060fb5b-0483-f699-7ee5-3a0cdc4ecf15', NULL, N'09ec9177-0f75-d3e1-0fed-3a0cdc4ecf15', N'SignalRDemo.CustomerNotification.ChatAppService', N'CreateAsync', N'{"message":{"fromUserName":null,"sendTime":"2023-08-06T17:16:10.8899497+08:00","content":"hai.huang: \u6211\u662F\u9EC4\u6D77"}}', CAST(N'2023-08-06T17:16:10.8908585' AS DateTime2), 7, N'{}')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'21a4ba45-38a4-f22c-9467-3a0cdc35eebc', N'SignalRDemo.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T16:48:56.9963625' AS DateTime2), 3598, N'::1', NULL, NULL, N'6aefbac151fd4534bfdb7d499081c87b', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', N'POST', N'/Account/Register', NULL, N'', 302, N'{}', N'b9d8ec3dccb34dfc99e9f1e2a733c488')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'28c808aa-821b-ac44-09bd-3a0cdc377481', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T16:49:50.2909937' AS DateTime2), 50089, N'::1', NULL, NULL, N'379fcc636a7442a884ac5b11b937946c', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'.', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'6e80bfea30f147edb5ad4c2af7e29b7b')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'df453a1d-0544-7cd9-b174-3a0cdc37896d', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T16:50:45.1357563' AS DateTime2), 606, N'::1', NULL, NULL, N'379fcc636a7442a884ac5b11b937946c', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'.', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'4ea75084e1bc4d398d3f1b57dccf0005')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'39a11af3-cc56-1913-5bff-3a0cdc399ebb', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T16:52:58.4609738' AS DateTime2), 3806, N'::1', NULL, NULL, N'2cd4a17ea74c42d5adbfce45c207bd58', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'.', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'78d760898a7340bb873f458f684eac1b')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'dfd51307-40ce-8814-1f00-3a0cdc39e850', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T16:53:18.3005397' AS DateTime2), 2804, N'::1', NULL, NULL, N'cf4f305ba6134177b0463de3346f5384', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'.', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'8f82d322a25e456f9fa87fac4ea3e8c2')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'b0ec162b-08ac-542b-f48a-3a0cdc3d2631', N'SignalRDemo.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T16:56:51.4029284' AS DateTime2), 2149, N'::1', NULL, NULL, N'5d052fff65724e11abbc743597523e16', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', N'POST', N'/Account/Register', N'[
  {
    "code": "Volo.Abp.Identity:PasswordRequiresNonAlphanumeric",
    "message": "Passwords must have at least one non alphanumeric character., Passwords must have at least one lowercase (''a''-''z'')., Passwords must have at least one uppercase (''A''-''Z'').",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 403, N'{}', N'ead47e20748a4429a50c96ea80798898')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'87e863ea-f115-0cce-8ee4-3a0cdc3d594d', N'SignalRDemo.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T16:57:04.6606977' AS DateTime2), 1977, N'::1', NULL, NULL, N'3d4cefe8a0ef4ae98880aedbcc54bd66', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', N'POST', N'/Account/Register', N'[
  {
    "code": "Volo.Abp.Identity:PasswordRequiresUpper",
    "message": "Passwords must have at least one uppercase (''A''-''Z'').",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 403, N'{}', N'c6e449cfb3d5435dbe6d1412efc290f8')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'48fc12c5-8ebf-b69a-f32e-3a0cdc3d7483', N'SignalRDemo.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T16:57:13.4208163' AS DateTime2), 182, N'::1', NULL, NULL, N'f0bc3132188d40d687052923ed452423', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', N'POST', N'/Account/Register', NULL, N'', 302, N'{}', N'3898454a577d4ef6a401fe9977f6ff84')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5880fceb-32b7-7617-3506-3a0cdc47fe8a', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T17:08:39.4987649' AS DateTime2), 4782, N'::1', NULL, NULL, N'0eca796ddcda4adbba10a25f9278a78c', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'SignalRDemo.CustomerNotification.ChatAppService.CreateAsync', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'7a5184d7be6f416e85da24ee200f478a')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'68d0fe75-7f56-abb4-ede8-3a0cdc4959fd', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T17:10:08.0750494' AS DateTime2), 5170, N'::1', NULL, NULL, N'd5438ea502324a9cbd80649b1ec6317e', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'SignalRDemo.CustomerNotification.ChatAppService.CreateAsync', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'6617c4c496664b9bbae9212adfd4d973')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'd7aa4636-d302-6e3b-0d40-3a0cdc498fca', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T17:10:24.0741877' AS DateTime2), 2945, N'::1', NULL, NULL, N'd5438ea502324a9cbd80649b1ec6317e', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'SignalRDemo.CustomerNotification.ChatAppService.CreateAsync', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'3ee1a3aab4e8403892c041393e4bc70f')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'3d0ab7fd-ad92-6959-756d-3a0cdc49bd4a', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T17:10:35.2551226' AS DateTime2), 3411, N'::1', NULL, NULL, N'e5054b3b44ac456090017cb218dd5ae2', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'SignalRDemo.CustomerNotification.ChatAppService.CreateAsync', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'3765f0c37e62473a8c989a2cd4ef1554')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'fa9f9832-7aa7-cd11-5dd0-3a0cdc4c4827', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T17:13:18.7062499' AS DateTime2), 6568, N'::1', NULL, NULL, N'3e9a4dd62f1549df85a7f953d37bf745', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'SignalRDemo.CustomerNotification.ChatAppService.CreateAsync', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'e6bd33716990460ba897bffed7ca645f')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'3d1c97f7-7abc-893e-0b37-3a0cdc4cbea0', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T17:13:52.1948791' AS DateTime2), 3421, N'::1', NULL, NULL, N'3e9a4dd62f1549df85a7f953d37bf745', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'SignalRDemo.CustomerNotification.ChatAppService.CreateAsync', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'30997acfdf7f4707aab0d5cca08a070a')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'8e10b9ab-b9d0-69bc-49df-3a0cdc4d9af3', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T17:14:48.5401706' AS DateTime2), 3479, N'::1', NULL, NULL, N'3e9a4dd62f1549df85a7f953d37bf745', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'SignalRDemo.CustomerNotification.ChatAppService.CreateAsync', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', NULL, N'{}', N'95bec321c8674dd1a12fdfbdca037d53')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'1a0bf0e6-a5c0-0c6d-6eed-3a0cdc4e1df7', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T17:15:24.4666436' AS DateTime2), 1093, N'::1', NULL, NULL, N'3e9a4dd62f1549df85a7f953d37bf745', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'SignalRDemo.CustomerNotification.ChatAppService.CreateAsync', NULL, N'', NULL, N'{}', N'71be3c29a29645278d6f929f097c1b22')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'09ec9177-0f75-d3e1-0fed-3a0cdc4ecf15', N'SignalRDemo.Web', N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', N'hai.huang', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-06T17:16:10.2341434' AS DateTime2), 667, N'::1', NULL, NULL, N'3e9a4dd62f1549df85a7f953d37bf745', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL, N'SignalRDemo.CustomerNotification.ChatAppService.CreateAsync', NULL, N'', NULL, N'{}', N'7400dbfd34394407ac9b90d312208e8a')
GO
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'7893754f-f3e2-15f5-9e9b-3a0cdc3434ec', N'sub', 0, 1, NULL, NULL, NULL, 0, N'{}', N'9b2028e30c52451d842f552e98d1bde7')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'fdcc2c78-bd5e-57e4-21d1-3a0cdc34364a', N'name', 0, 1, NULL, NULL, NULL, 0, N'{}', N'6d5b3e29185848a19da0ca3865972138')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'88aaa371-aebe-406b-8c8f-3a0cdc34364b', N'family_name', 0, 1, NULL, NULL, NULL, 0, N'{}', N'1dba65a28f034ffdad53cd4532eb1770')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'de0d8803-6061-6f3d-1886-3a0cdc34364e', N'given_name', 0, 1, NULL, NULL, NULL, 0, N'{}', N'c30da4e746ab40138735118e2a018c45')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'56942a8a-240a-b234-6e9b-3a0cdc343650', N'middle_name', 0, 1, NULL, NULL, NULL, 0, N'{}', N'ff1aa1b25c2042ef826e2d98c10eac89')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'732d8eaa-7c0a-d5a9-08ab-3a0cdc343651', N'nickname', 0, 1, NULL, NULL, NULL, 0, N'{}', N'016274004ded4a9d86881079a06d67ac')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'f09f03ac-ed2f-b0ec-5e35-3a0cdc343653', N'preferred_username', 0, 1, NULL, NULL, NULL, 0, N'{}', N'e59e2d378281450bb2737b0c8c08e375')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'4306498c-7a50-3b30-26b5-3a0cdc343654', N'profile', 0, 1, NULL, NULL, NULL, 0, N'{}', N'890c8b66b0134e36bd6c64645f17208c')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'3ba59c61-796a-c5bc-3e1d-3a0cdc343656', N'picture', 0, 1, NULL, NULL, NULL, 0, N'{}', N'aa992055e15545658d4f25f4e09dc2e5')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'f0be6cb6-42b6-e6ab-1a57-3a0cdc343657', N'website', 0, 1, NULL, NULL, NULL, 0, N'{}', N'bef80ad91b74418fb398891621de52d9')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'1ea55182-fc33-f31f-f8a6-3a0cdc343658', N'gender', 0, 1, NULL, NULL, NULL, 0, N'{}', N'ff64aa4901b7443dbed78a55d6d2dd94')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'b2436429-58a3-d8c6-3592-3a0cdc343659', N'birthdate', 0, 1, NULL, NULL, NULL, 0, N'{}', N'd07d19f040b546d1b69ed3816b5d3b17')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5f89cad1-8f39-1561-1fa1-3a0cdc34365a', N'zoneinfo', 0, 1, NULL, NULL, NULL, 0, N'{}', N'f45615bce37448a0af47362f6cc06e7d')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'35d9bb5a-2bb8-6b07-06e8-3a0cdc34365b', N'locale', 0, 1, NULL, NULL, NULL, 0, N'{}', N'933dbff8b32a43c781e07d353af4bbd4')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'9abc2a1a-750e-185b-ae37-3a0cdc34365d', N'updated_at', 0, 1, NULL, NULL, NULL, 0, N'{}', N'5f406916047b40f1b7c3dff2ce2cbf9c')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'27bc60a6-4600-8ba0-b6c5-3a0cdc343662', N'email', 0, 1, NULL, NULL, NULL, 0, N'{}', N'a8d35169d44b46f790c6138d0e787b52')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'98bfbdcc-ce0c-3b68-a223-3a0cdc343664', N'email_verified', 0, 1, NULL, NULL, NULL, 0, N'{}', N'a35173bf65d942b5ae382800ade37d78')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'2bc6688d-5141-9eba-ad6d-3a0cdc343666', N'address', 0, 1, NULL, NULL, NULL, 0, N'{}', N'0961d7cfa7084482902c27306cd90e7a')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'8c4b69b4-0aff-9358-76d7-3a0cdc343669', N'phone_number', 0, 1, NULL, NULL, NULL, 0, N'{}', N'cd5e22c71fc2474988f06ae8184a4166')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'63f0f59b-d58c-dc62-cce8-3a0cdc34366a', N'phone_number_verified', 0, 1, NULL, NULL, NULL, 0, N'{}', N'3a574d8be244490ea6804b05557ab549')
INSERT [dbo].[AbpClaimTypes] ([Id], [Name], [Required], [IsStatic], [Regex], [RegexDescription], [Description], [ValueType], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0b2c5734-3032-45e1-f33c-3a0cdc34366d', N'role', 0, 1, NULL, NULL, NULL, 0, N'{}', N'dc5129c0c2214954ac88089dfbf2042d')
GO
INSERT [dbo].[AbpFeatureGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'49556c42-3d6d-6834-4a2e-3a0cdc34d78f', N'SettingManagement', N'L:AbpSettingManagement,Feature:SettingManagementGroup', N'{}')
GO
INSERT [dbo].[AbpFeatures] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [Description], [DefaultValue], [IsVisibleToClients], [IsAvailableToHost], [AllowedProviders], [ValueType], [ExtraProperties]) VALUES (N'd17f0e48-8c46-4c5a-d505-3a0cdc34d792', N'SettingManagement', N'SettingManagement.Enable', NULL, N'L:AbpSettingManagement,Feature:SettingManagementEnable', N'L:AbpSettingManagement,Feature:SettingManagementEnableDescription', N'true', 1, 0, NULL, N'{"name":"ToggleStringValueType","properties":{},"validator":{"name":"BOOLEAN","properties":{}}}', N'{}')
INSERT [dbo].[AbpFeatures] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [Description], [DefaultValue], [IsVisibleToClients], [IsAvailableToHost], [AllowedProviders], [ValueType], [ExtraProperties]) VALUES (N'2625b816-4775-cf80-7262-3a0cdc34d7a9', N'SettingManagement', N'SettingManagement.AllowChangingEmailSettings', N'SettingManagement.Enable', N'L:AbpSettingManagement,Feature:AllowChangingEmailSettings', NULL, N'false', 1, 0, NULL, N'{"name":"ToggleStringValueType","properties":{},"validator":{"name":"BOOLEAN","properties":{}}}', N'{}')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'19558f58-85e9-909d-ee09-3a0cdc34330a', NULL, N'AbpIdentity.Roles', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'15481123-ca54-4c9b-68bf-3a0cdc343312', NULL, N'AbpIdentity.Roles.Create', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'b306780b-9311-a9d3-10fd-3a0cdc343313', NULL, N'AbpIdentity.Users.Create', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'a6661a23-ca8e-5e18-1428-3a0cdc343313', NULL, N'AbpIdentity.Users.Update', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'644b7e3f-79cd-729f-189b-3a0cdc343313', NULL, N'AbpIdentity.Roles.ManagePermissions', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'534e1b01-6c0e-27c3-280c-3a0cdc343313', NULL, N'FeatureManagement.ManageHostFeatures', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'9b63ee4b-ec2a-328c-3465-3a0cdc343313', NULL, N'AbpIdentity.Users.ManagePermissions', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'4177fa5e-ac5f-e2f3-3a73-3a0cdc343313', NULL, N'AbpIdentity.Roles.Delete', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'2b3fdce0-76be-fac6-52ee-3a0cdc343313', NULL, N'AbpIdentity.Roles.Update', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'99b10d6d-d55a-352b-602a-3a0cdc343313', NULL, N'AbpIdentity.Users.Delete', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'3eb1afde-db4e-6263-9aec-3a0cdc343313', NULL, N'AbpIdentity.Users', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'04ec1df6-589e-bba8-2fda-3a0cdc343314', NULL, N'AbpTenantManagement.Tenants', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'230a7eed-5e56-43e7-3c2c-3a0cdc343314', NULL, N'AbpTenantManagement.Tenants.ManageFeatures', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'57e55633-1b35-cea1-40ef-3a0cdc343314', NULL, N'AbpTenantManagement.Tenants.Create', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'd4943ccd-8c9d-b4ac-6538-3a0cdc343314', NULL, N'AbpTenantManagement.Tenants.Delete', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'ed7dcde1-1841-2794-8273-3a0cdc343314', NULL, N'AbpTenantManagement.Tenants.ManageConnectionStrings', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'fd9c67c7-ada9-cfac-8a48-3a0cdc343314', NULL, N'AbpTenantManagement.Tenants.Update', N'R', N'admin')
GO
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'4a2c67c3-22bc-c114-df9c-3a0cdc34d76d', N'AbpIdentity', N'L:AbpIdentity,Permission:IdentityManagement', N'{}')
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'23c292bf-1ae3-be3a-1a16-3a0cdc34d78e', N'AbpTenantManagement', N'L:AbpTenantManagement,Permission:TenantManagement', N'{}')
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'1bce8213-91bf-3aa2-2480-3a0cdc34d78e', N'SettingManagement', N'L:AbpSettingManagement,Permission:SettingManagement', N'{}')
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'12446ed5-14e5-b00d-4241-3a0cdc34d78e', N'SignalRDemo', N'F:SignalRDemo', N'{}')
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'4f508f1e-900b-6710-e2a8-3a0cdc34d78e', N'FeatureManagement', N'L:AbpFeatureManagement,Permission:FeatureManagement', N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'1828157a-244e-c9e5-64b9-3a0cdc34d78d', N'AbpIdentity', N'AbpIdentity.Roles', NULL, N'L:AbpIdentity,Permission:RoleManagement', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'407c11de-00e1-1431-0118-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.Users.ManagePermissions', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:ChangePermissions', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'448a7d14-05c5-fe71-0ba7-3a0cdc34d78e', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.Create', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:Create', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'80f1223c-076d-a776-20d6-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.Users.Delete', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:Delete', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'6153ba12-e46d-e996-2ec5-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.Users.Update', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:Edit', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'72172fe7-8d53-97de-2f2f-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.UserLookup', NULL, N'L:AbpIdentity,Permission:UserLookup', 1, 3, N'C', NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'31700dac-1255-34f9-3cf0-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.Roles.Create', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:Create', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'b1e8bbe2-1bc8-b3d1-4d5d-3a0cdc34d78e', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.ManageConnectionStrings', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:ManageConnectionStrings', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'24294f88-b89d-ff55-5a85-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.Roles.ManagePermissions', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:ChangePermissions', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'd032bdf3-8cb6-347a-679b-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.Users', NULL, N'L:AbpIdentity,Permission:UserManagement', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'a8c86ebc-96f4-2ee6-89a6-3a0cdc34d78e', N'SettingManagement', N'SettingManagement.Emailing', NULL, N'L:AbpSettingManagement,Permission:Emailing', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'9dd3c83b-aa66-62fe-982b-3a0cdc34d78e', N'AbpTenantManagement', N'AbpTenantManagement.Tenants', NULL, N'L:AbpTenantManagement,Permission:TenantManagement', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'46043467-ff23-63d5-a057-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.Users.Create', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:Create', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'56ee1b04-8f58-f56a-a420-3a0cdc34d78e', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.ManageFeatures', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:ManageFeatures', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'1ba79c0f-a6b2-7921-ac88-3a0cdc34d78e', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.Update', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:Edit', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'e4d739a6-8475-5a75-bf87-3a0cdc34d78e', N'FeatureManagement', N'FeatureManagement.ManageHostFeatures', NULL, N'L:AbpFeatureManagement,Permission:FeatureManagement.ManageHostFeatures', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'b0292663-9e74-3230-cb19-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.Roles.Delete', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:Delete', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'eb1591c9-beb3-974c-d7e4-3a0cdc34d78e', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.Delete', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:Delete', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'77688f4f-5297-a40a-ea5f-3a0cdc34d78e', N'AbpIdentity', N'AbpIdentity.Roles.Update', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:Edit', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'7584c282-73a1-9663-5eda-3a0cdc34d792', N'SettingManagement', N'SettingManagement.Emailing.Test', N'SettingManagement.Emailing', N'L:AbpSettingManagement,Permission:EmailingTest', 1, 3, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpRoles] ([Id], [TenantId], [Name], [NormalizedName], [IsDefault], [IsStatic], [IsPublic], [EntityVersion], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0f5be964-24d4-2e8c-4364-3a0cdc34309b', NULL, N'admin', N'ADMIN', 0, 1, 1, 0, N'{}', N'f88471dbd266458eb0756822982a22fa')
GO
INSERT [dbo].[AbpUserRoles] ([UserId], [RoleId], [TenantId]) VALUES (N'8dfe2c8d-7c79-2a3a-8e71-3a0cdc34242d', N'0f5be964-24d4-2e8c-4364-3a0cdc34309b', NULL)
GO
INSERT [dbo].[AbpUsers] ([Id], [TenantId], [UserName], [NormalizedUserName], [Name], [Surname], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [IsExternal], [PhoneNumber], [PhoneNumberConfirmed], [IsActive], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ShouldChangePasswordOnNextLogin], [EntityVersion], [LastPasswordChangeTime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'8dfe2c8d-7c79-2a3a-8e71-3a0cdc34242d', NULL, N'admin', N'ADMIN', N'admin', NULL, N'admin@abp.io', N'ADMIN@ABP.IO', 0, N'AQAAAAIAAYagAAAAEBbNZ7UWeJhv2MKB4Z/E3W6CSe9H8ThzqAoJXii9J46GtPCIKC31jGwYqgsYj3hdRQ==', N'XJPH76IFYUDD7G3U3PLSCH6DI64XZLF5', 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 1, CAST(N'2023-08-06T08:47:05.9067278+00:00' AS DateTimeOffset), N'{}', N'd44142ea52364995bd7be1d2c42532ab', CAST(N'2023-08-06T16:47:06.0379736' AS DateTime2), NULL, CAST(N'2023-08-06T16:47:06.6369283' AS DateTime2), NULL, 0, NULL, NULL)
INSERT [dbo].[AbpUsers] ([Id], [TenantId], [UserName], [NormalizedUserName], [Name], [Surname], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [IsExternal], [PhoneNumber], [PhoneNumberConfirmed], [IsActive], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ShouldChangePasswordOnNextLogin], [EntityVersion], [LastPasswordChangeTime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'b2cadd71-3f2c-e582-fb97-3a0cdc35e0d0', NULL, N'hai.huang', N'HAI.HUANG', NULL, NULL, N'hai.huang@hotmail.com', N'HAI.HUANG@HOTMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBEvFCHzu8kgKWhDYFn7vnOs8iox//qQsspOdvHmffY5NGkmhSbOSJJkCp9VxlKDAg==', N'2KR3Q5OFIZHSZUTU6HED4IMSCLHDDVNF', 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 2, CAST(N'2023-08-06T08:48:57.1744179+00:00' AS DateTimeOffset), N'{}', N'2d62cc74f82d442dbf734b22e81ed3fb', CAST(N'2023-08-06T16:48:57.7212544' AS DateTime2), NULL, CAST(N'2023-08-06T16:48:58.0159751' AS DateTime2), NULL, 0, NULL, NULL)
INSERT [dbo].[AbpUsers] ([Id], [TenantId], [UserName], [NormalizedUserName], [Name], [Surname], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [IsExternal], [PhoneNumber], [PhoneNumberConfirmed], [IsActive], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ShouldChangePasswordOnNextLogin], [EntityVersion], [LastPasswordChangeTime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'47f3843d-b5ad-5e85-2450-3a0cdc3d73d5', NULL, N'miao', N'MIAO', NULL, NULL, N'miao@qq.com', N'MIAO@QQ.COM', 0, N'AQAAAAIAAYagAAAAEARxjRpsX5rWaTPmsNVbQHyelopsymqAOn+uFxanZpU4iRq3IQWoHDpGqALLN5i5cw==', N'64IBXRMU62WNFQAQ5KJWJC7CHZB2CMFJ', 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 2, CAST(N'2023-08-06T08:57:13.5142000+00:00' AS DateTimeOffset), N'{}', N'1d95379216f64dae885710d21e2dda8e', CAST(N'2023-08-06T16:57:13.5320540' AS DateTime2), NULL, CAST(N'2023-08-06T16:57:13.5664537' AS DateTime2), NULL, 0, NULL, NULL)
GO
INSERT [dbo].[IdentityServerApiResourceClaims] ([Type], [ApiResourceId]) VALUES (N'email', N'9262537e-4956-bf0b-0e0d-3a0cdc343691')
INSERT [dbo].[IdentityServerApiResourceClaims] ([Type], [ApiResourceId]) VALUES (N'email_verified', N'9262537e-4956-bf0b-0e0d-3a0cdc343691')
INSERT [dbo].[IdentityServerApiResourceClaims] ([Type], [ApiResourceId]) VALUES (N'name', N'9262537e-4956-bf0b-0e0d-3a0cdc343691')
INSERT [dbo].[IdentityServerApiResourceClaims] ([Type], [ApiResourceId]) VALUES (N'phone_number', N'9262537e-4956-bf0b-0e0d-3a0cdc343691')
INSERT [dbo].[IdentityServerApiResourceClaims] ([Type], [ApiResourceId]) VALUES (N'phone_number_verified', N'9262537e-4956-bf0b-0e0d-3a0cdc343691')
INSERT [dbo].[IdentityServerApiResourceClaims] ([Type], [ApiResourceId]) VALUES (N'role', N'9262537e-4956-bf0b-0e0d-3a0cdc343691')
GO
INSERT [dbo].[IdentityServerApiResources] ([Id], [Name], [DisplayName], [Description], [Enabled], [AllowedAccessTokenSigningAlgorithms], [ShowInDiscoveryDocument], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'9262537e-4956-bf0b-0e0d-3a0cdc343691', N'SignalRDemo', N'SignalRDemo API', NULL, 1, NULL, 1, N'{}', N'9777ff0d51a14b828eb63cda47b70958', CAST(N'2023-08-06T16:47:07.9485150' AS DateTime2), NULL, CAST(N'2023-08-06T16:47:08.0153470' AS DateTime2), NULL, 0, NULL, NULL)
GO
INSERT [dbo].[IdentityServerApiResourceScopes] ([ApiResourceId], [Scope]) VALUES (N'9262537e-4956-bf0b-0e0d-3a0cdc343691', N'SignalRDemo')
GO
INSERT [dbo].[IdentityServerClientGrantTypes] ([ClientId], [GrantType]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'hybrid')
INSERT [dbo].[IdentityServerClientGrantTypes] ([ClientId], [GrantType]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'client_credentials')
INSERT [dbo].[IdentityServerClientGrantTypes] ([ClientId], [GrantType]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'password')
GO
INSERT [dbo].[IdentityServerClientPostLogoutRedirectUris] ([ClientId], [PostLogoutRedirectUri]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'https://localhost:44379/signout-callback-oidc')
GO
INSERT [dbo].[IdentityServerClientRedirectUris] ([ClientId], [RedirectUri]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'https://localhost:44379/signin-oidc')
GO
INSERT [dbo].[IdentityServerClients] ([Id], [ClientId], [ClientName], [Description], [ClientUri], [LogoUri], [Enabled], [ProtocolType], [RequireClientSecret], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [RequireRequestObject], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AllowedIdentityTokenSigningAlgorithms], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'SignalRDemo_Web', N'SignalRDemo_Web', N'SignalRDemo_Web', NULL, NULL, 1, N'oidc', 1, 0, 1, 1, 1, 0, 0, 0, NULL, 1, NULL, 1, 1, 300, NULL, 31536000, 300, NULL, 31536000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, NULL, NULL, 300, N'{}', N'1d04e8d039ae4457be056e26078d80be', CAST(N'2023-08-06T16:47:08.1388131' AS DateTime2), NULL, CAST(N'2023-08-06T16:47:08.1687282' AS DateTime2), NULL, 0, NULL, NULL)
INSERT [dbo].[IdentityServerClients] ([Id], [ClientId], [ClientName], [Description], [ClientUri], [LogoUri], [Enabled], [ProtocolType], [RequireClientSecret], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [RequireRequestObject], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AllowedIdentityTokenSigningAlgorithms], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'SignalRDemo_App', N'SignalRDemo_App', N'SignalRDemo_App', NULL, NULL, 1, N'oidc', 1, 0, 1, 1, 1, 0, 0, 0, NULL, 1, NULL, 1, 1, 300, NULL, 31536000, 300, NULL, 31536000, 1296000, 1, 0, 1, 0, 1, 0, 0, N'client_', NULL, NULL, NULL, 300, N'{}', N'ac6c18b46bc94934819ac3303e314952', CAST(N'2023-08-06T16:47:08.1766176' AS DateTime2), NULL, CAST(N'2023-08-06T16:47:08.2251781' AS DateTime2), NULL, 0, NULL, NULL)
GO
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'address')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'email')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'openid')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'phone')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'profile')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'role')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', N'SignalRDemo')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'address')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'email')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'openid')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'phone')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'profile')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'role')
INSERT [dbo].[IdentityServerClientScopes] ([ClientId], [Scope]) VALUES (N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', N'SignalRDemo')
GO
INSERT [dbo].[IdentityServerClientSecrets] ([Type], [Value], [ClientId], [Description], [Expiration]) VALUES (N'SharedSecret', N'E5Xd4yMqjP5kjWFKrYgySBju6JVfCzMyFp7n2QmMrME=', N'b658bda3-3904-d8ee-4e2e-3a0cdc343720', NULL, NULL)
INSERT [dbo].[IdentityServerClientSecrets] ([Type], [Value], [ClientId], [Description], [Expiration]) VALUES (N'SharedSecret', N'E5Xd4yMqjP5kjWFKrYgySBju6JVfCzMyFp7n2QmMrME=', N'b5e5a967-1f29-bd95-c62f-3a0cdc343790', NULL, NULL)
GO
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'sub', N'da545960-83ec-c31d-d72e-3a0cdc343622')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'birthdate', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'family_name', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'gender', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'given_name', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'locale', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'middle_name', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'name', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'nickname', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'picture', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'preferred_username', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'profile', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'updated_at', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'website', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'zoneinfo', N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'email', N'343a370e-fb5c-e5e7-c0ca-3a0cdc343665')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'email_verified', N'343a370e-fb5c-e5e7-c0ca-3a0cdc343665')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'address', N'9562309e-6fe8-90e5-e41f-3a0cdc343668')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'phone_number', N'4705138d-9161-aef3-4e7f-3a0cdc34366b')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'phone_number_verified', N'4705138d-9161-aef3-4e7f-3a0cdc34366b')
INSERT [dbo].[IdentityServerIdentityResourceClaims] ([Type], [IdentityResourceId]) VALUES (N'role', N'11bd08c3-eeac-833e-8c1e-3a0cdc343673')
GO
INSERT [dbo].[IdentityServerIdentityResources] ([Id], [Name], [DisplayName], [Description], [Enabled], [Required], [Emphasize], [ShowInDiscoveryDocument], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'da545960-83ec-c31d-d72e-3a0cdc343622', N'openid', N'Your user identifier', NULL, 1, 1, 0, 1, N'{}', N'5d2f65803b1d4420a2ee8b3eae213dd0', CAST(N'2023-08-06T16:47:07.8391830' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IdentityServerIdentityResources] ([Id], [Name], [DisplayName], [Description], [Enabled], [Required], [Emphasize], [ShowInDiscoveryDocument], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'fd6dcc61-0fe6-954e-7784-3a0cdc34365e', N'profile', N'User profile', N'Your user profile information (first name, last name, etc.)', 1, 0, 1, 1, N'{}', N'4677b3543b894937a33cdd7b4e00f0e5', CAST(N'2023-08-06T16:47:07.8726131' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IdentityServerIdentityResources] ([Id], [Name], [DisplayName], [Description], [Enabled], [Required], [Emphasize], [ShowInDiscoveryDocument], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'343a370e-fb5c-e5e7-c0ca-3a0cdc343665', N'email', N'Your email address', NULL, 1, 0, 1, 1, N'{}', N'561c34afb2784b8cb891270d8475c6e0', CAST(N'2023-08-06T16:47:07.8775389' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IdentityServerIdentityResources] ([Id], [Name], [DisplayName], [Description], [Enabled], [Required], [Emphasize], [ShowInDiscoveryDocument], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'9562309e-6fe8-90e5-e41f-3a0cdc343668', N'address', N'Your postal address', NULL, 1, 0, 1, 1, N'{}', N'c049ff5370084beaa614f8dedd48b8b8', CAST(N'2023-08-06T16:47:07.8803032' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IdentityServerIdentityResources] ([Id], [Name], [DisplayName], [Description], [Enabled], [Required], [Emphasize], [ShowInDiscoveryDocument], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'4705138d-9161-aef3-4e7f-3a0cdc34366b', N'phone', N'Your phone number', NULL, 1, 0, 1, 1, N'{}', N'f817637086964d86a5db4fb9ec8b1e6a', CAST(N'2023-08-06T16:47:07.8840868' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IdentityServerIdentityResources] ([Id], [Name], [DisplayName], [Description], [Enabled], [Required], [Emphasize], [ShowInDiscoveryDocument], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'11bd08c3-eeac-833e-8c1e-3a0cdc343673', N'role', N'Roles of the user', NULL, 1, 0, 0, 1, N'{}', N'1a0c4a11a33a4781899d5f4e242f9579', CAST(N'2023-08-06T16:47:07.8913189' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[notification_message] ([Id], [Status], [Type], [SendTime], [Content], [TestName]) VALUES (N'd420c97a-25cd-8e8c-e1fe-3a0cdc4e1de7', 0, 1, N'2023-08-06 17:15:25.5376415', N'hai.huang: nihao ', NULL)
INSERT [dbo].[notification_message] ([Id], [Status], [Type], [SendTime], [Content], [TestName]) VALUES (N'03f30156-ed28-7762-bde8-3a0cdc4ecf0b', 0, 1, N'2023-08-06 17:16:10.8899497', N'hai.huang: 我是黄海', NULL)
GO
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD  DEFAULT (CONVERT([smallint],(0))) FOR [TryCount]
GO
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAbandoned]
GO
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD  DEFAULT (CONVERT([tinyint],(15))) FOR [Priority]
GO
ALTER TABLE [dbo].[AbpOrganizationUnits] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpTenants] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [EmailConfirmed]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsExternal]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [PhoneNumberConfirmed]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [TwoFactorEnabled]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [LockoutEnabled]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT ((0)) FOR [AccessFailedCount]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[IdentityServerApiResources] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[IdentityServerApiScopes] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[IdentityServerClients] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[IdentityServerIdentityResources] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpAuditLogActions]  WITH CHECK ADD  CONSTRAINT [FK_AbpAuditLogActions_AbpAuditLogs_AuditLogId] FOREIGN KEY([AuditLogId])
REFERENCES [dbo].[AbpAuditLogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpAuditLogActions] CHECK CONSTRAINT [FK_AbpAuditLogActions_AbpAuditLogs_AuditLogId]
GO
ALTER TABLE [dbo].[AbpEntityChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityChanges_AbpAuditLogs_AuditLogId] FOREIGN KEY([AuditLogId])
REFERENCES [dbo].[AbpAuditLogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityChanges] CHECK CONSTRAINT [FK_AbpEntityChanges_AbpAuditLogs_AuditLogId]
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId] FOREIGN KEY([EntityChangeId])
REFERENCES [dbo].[AbpEntityChanges] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges] CHECK CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpOrganizationUnits_OrganizationUnitId] FOREIGN KEY([OrganizationUnitId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles] CHECK CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpOrganizationUnits_OrganizationUnitId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles] CHECK CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
GO
ALTER TABLE [dbo].[AbpOrganizationUnits] CHECK CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId]
GO
ALTER TABLE [dbo].[AbpRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpRoleClaims] CHECK CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpTenantConnectionStrings]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenantConnectionStrings_AbpTenants_TenantId] FOREIGN KEY([TenantId])
REFERENCES [dbo].[AbpTenants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpTenantConnectionStrings] CHECK CONSTRAINT [FK_AbpTenantConnectionStrings_AbpTenants_TenantId]
GO
ALTER TABLE [dbo].[AbpUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserClaims] CHECK CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserLogins] CHECK CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserOrganizationUnits_AbpOrganizationUnits_OrganizationUnitId] FOREIGN KEY([OrganizationUnitId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits] CHECK CONSTRAINT [FK_AbpUserOrganizationUnits_AbpOrganizationUnits_OrganizationUnitId]
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserOrganizationUnits_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits] CHECK CONSTRAINT [FK_AbpUserOrganizationUnits_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserRoles_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserRoles] CHECK CONSTRAINT [FK_AbpUserRoles_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserRoles] CHECK CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserTokens] CHECK CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[IdentityServerApiResourceClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerApiResourceClaims_IdentityServerApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[IdentityServerApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerApiResourceClaims] CHECK CONSTRAINT [FK_IdentityServerApiResourceClaims_IdentityServerApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[IdentityServerApiResourceProperties]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerApiResourceProperties_IdentityServerApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[IdentityServerApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerApiResourceProperties] CHECK CONSTRAINT [FK_IdentityServerApiResourceProperties_IdentityServerApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[IdentityServerApiResourceScopes]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerApiResourceScopes_IdentityServerApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[IdentityServerApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerApiResourceScopes] CHECK CONSTRAINT [FK_IdentityServerApiResourceScopes_IdentityServerApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[IdentityServerApiResourceSecrets]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerApiResourceSecrets_IdentityServerApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [dbo].[IdentityServerApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerApiResourceSecrets] CHECK CONSTRAINT [FK_IdentityServerApiResourceSecrets_IdentityServerApiResources_ApiResourceId]
GO
ALTER TABLE [dbo].[IdentityServerApiScopeClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerApiScopeClaims_IdentityServerApiScopes_ApiScopeId] FOREIGN KEY([ApiScopeId])
REFERENCES [dbo].[IdentityServerApiScopes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerApiScopeClaims] CHECK CONSTRAINT [FK_IdentityServerApiScopeClaims_IdentityServerApiScopes_ApiScopeId]
GO
ALTER TABLE [dbo].[IdentityServerApiScopeProperties]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerApiScopeProperties_IdentityServerApiScopes_ApiScopeId] FOREIGN KEY([ApiScopeId])
REFERENCES [dbo].[IdentityServerApiScopes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerApiScopeProperties] CHECK CONSTRAINT [FK_IdentityServerApiScopeProperties_IdentityServerApiScopes_ApiScopeId]
GO
ALTER TABLE [dbo].[IdentityServerClientClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerClientClaims_IdentityServerClients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[IdentityServerClients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerClientClaims] CHECK CONSTRAINT [FK_IdentityServerClientClaims_IdentityServerClients_ClientId]
GO
ALTER TABLE [dbo].[IdentityServerClientCorsOrigins]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerClientCorsOrigins_IdentityServerClients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[IdentityServerClients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerClientCorsOrigins] CHECK CONSTRAINT [FK_IdentityServerClientCorsOrigins_IdentityServerClients_ClientId]
GO
ALTER TABLE [dbo].[IdentityServerClientGrantTypes]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerClientGrantTypes_IdentityServerClients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[IdentityServerClients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerClientGrantTypes] CHECK CONSTRAINT [FK_IdentityServerClientGrantTypes_IdentityServerClients_ClientId]
GO
ALTER TABLE [dbo].[IdentityServerClientIdPRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerClientIdPRestrictions_IdentityServerClients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[IdentityServerClients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerClientIdPRestrictions] CHECK CONSTRAINT [FK_IdentityServerClientIdPRestrictions_IdentityServerClients_ClientId]
GO
ALTER TABLE [dbo].[IdentityServerClientPostLogoutRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerClientPostLogoutRedirectUris_IdentityServerClients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[IdentityServerClients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerClientPostLogoutRedirectUris] CHECK CONSTRAINT [FK_IdentityServerClientPostLogoutRedirectUris_IdentityServerClients_ClientId]
GO
ALTER TABLE [dbo].[IdentityServerClientProperties]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerClientProperties_IdentityServerClients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[IdentityServerClients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerClientProperties] CHECK CONSTRAINT [FK_IdentityServerClientProperties_IdentityServerClients_ClientId]
GO
ALTER TABLE [dbo].[IdentityServerClientRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerClientRedirectUris_IdentityServerClients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[IdentityServerClients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerClientRedirectUris] CHECK CONSTRAINT [FK_IdentityServerClientRedirectUris_IdentityServerClients_ClientId]
GO
ALTER TABLE [dbo].[IdentityServerClientScopes]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerClientScopes_IdentityServerClients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[IdentityServerClients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerClientScopes] CHECK CONSTRAINT [FK_IdentityServerClientScopes_IdentityServerClients_ClientId]
GO
ALTER TABLE [dbo].[IdentityServerClientSecrets]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerClientSecrets_IdentityServerClients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[IdentityServerClients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerClientSecrets] CHECK CONSTRAINT [FK_IdentityServerClientSecrets_IdentityServerClients_ClientId]
GO
ALTER TABLE [dbo].[IdentityServerIdentityResourceClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerIdentityResourceClaims_IdentityServerIdentityResources_IdentityResourceId] FOREIGN KEY([IdentityResourceId])
REFERENCES [dbo].[IdentityServerIdentityResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerIdentityResourceClaims] CHECK CONSTRAINT [FK_IdentityServerIdentityResourceClaims_IdentityServerIdentityResources_IdentityResourceId]
GO
ALTER TABLE [dbo].[IdentityServerIdentityResourceProperties]  WITH CHECK ADD  CONSTRAINT [FK_IdentityServerIdentityResourceProperties_IdentityServerIdentityResources_IdentityResourceId] FOREIGN KEY([IdentityResourceId])
REFERENCES [dbo].[IdentityServerIdentityResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IdentityServerIdentityResourceProperties] CHECK CONSTRAINT [FK_IdentityServerIdentityResourceProperties_IdentityServerIdentityResources_IdentityResourceId]
GO
