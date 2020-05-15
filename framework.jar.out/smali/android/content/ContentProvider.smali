.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$PipeDataWriter;,
        Landroid/content/ContentProvider$Transport;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private final mCallingPackage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExported:Z

.field private mMyUid:I

.field private mNoPerms:Z

.field private mPathPermissions:[Landroid/content/pm/PathPermission;

.field private mReadPermission:Ljava/lang/String;

.field private mSingleUser:Z

.field private mTransport:Landroid/content/ContentProvider$Transport;

.field private mWritePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-string v0, "ContentProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/content/ContentProvider;->D:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 128
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 128
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 166
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 169
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 170
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 101
    sget-boolean v0, Landroid/content/ContentProvider;->D:Z

    return v0
.end method

.method static synthetic access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentProvider;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 101
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/ContentProvider;Landroid/net/Uri;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentProvider;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider;->haveReadInnerPermission(Landroid/net/Uri;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/ContentProvider;Landroid/net/Uri;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentProvider;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider;->haveWriteInnerPermission(Landroid/net/Uri;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method private attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "testing"    # Z

    .line 2001
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    .line 2007
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 2008
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2009
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2013
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 2014
    if-eqz p2, :cond_2

    .line 2015
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 2016
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 2017
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 2018
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 2019
    iget v0, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    .line 2020
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setAuthorities(Ljava/lang/String;)V

    .line 2022
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 2024
    :cond_3
    return-void
.end method

.method private checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;

    .line 646
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const/4 v0, 0x2

    return v0

    .line 651
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 652
    .local v0, "permOp":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 653
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v1

    return v1

    .line 656
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .locals 1
    .param p0, "abstractInterface"    # Landroid/content/IContentProvider;

    .line 187
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    .line 188
    move-object v0, p0

    check-cast v0, Landroid/content/ContentProvider$Transport;

    invoke-virtual {v0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "auth"    # Ljava/lang/String;

    .line 2197
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2198
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2199
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2204
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2205
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2206
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2207
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;)I
    .locals 1
    .param p0, "auth"    # Ljava/lang/String;

    .line 2176
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;I)I
    .locals 5
    .param p0, "auth"    # Ljava/lang/String;
    .param p1, "defaultUserId"    # I

    .line 2162
    if-nez p0, :cond_0

    return p1

    .line 2163
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2164
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p1

    .line 2165
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, "userIdString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 2168
    :catch_0
    move-exception v2

    .line 2169
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ContentProvider"

    const-string v4, "Error parsing userId."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2170
    const/16 v3, -0x2710

    return v3
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2187
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;I)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "defaultUserId"    # I

    .line 2181
    if-nez p0, :cond_0

    return p1

    .line 2182
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private haveReadInnerPermission(Landroid/net/Uri;Landroid/os/IBinder;)Z
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callerToken"    # Landroid/os/IBinder;

    move-object/from16 v0, p0

    .line 592
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 593
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 594
    .local v3, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 595
    .local v4, "uid":I
    const/4 v5, 0x0

    .line 596
    .local v5, "missingPerm":Ljava/lang/String;
    const/4 v6, 0x0

    .line 598
    .local v6, "strongestMode":I
    iget v7, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v4, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 599
    return v8

    .line 602
    :cond_0
    iget-boolean v7, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v7, :cond_4

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 603
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, "componentPerm":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 605
    invoke-virtual {v2, v7, v3, v4, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v10

    if-nez v10, :cond_1

    .line 607
    return v8

    .line 613
    :cond_1
    if-nez v7, :cond_2

    move v10, v8

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 615
    .local v10, "allowDefaultWrite":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v11

    .line 616
    .local v11, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v11, :cond_4

    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 618
    .local v12, "path":Ljava/lang/String;
    array-length v13, v11

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_4

    aget-object v15, v11, v14

    .line 619
    .local v15, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v9

    .line 620
    .local v9, "pathPerm":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v15, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 621
    invoke-virtual {v2, v9, v3, v4, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v16

    if-nez v16, :cond_3

    .line 623
    return v8

    .line 618
    .end local v9    # "pathPerm":Ljava/lang/String;
    .end local v15    # "pp":Landroid/content/pm/PathPermission;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 629
    .end local v7    # "componentPerm":Ljava/lang/String;
    .end local v10    # "allowDefaultWrite":Z
    .end local v11    # "pps":[Landroid/content/pm/PathPermission;
    .end local v12    # "path":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    return v7
.end method

.method private haveWriteInnerPermission(Landroid/net/Uri;Landroid/os/IBinder;)Z
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callerToken"    # Landroid/os/IBinder;

    move-object/from16 v0, p0

    .line 551
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 552
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 553
    .local v3, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 554
    .local v4, "uid":I
    const/4 v5, 0x0

    .line 555
    .local v5, "missingPerm":Ljava/lang/String;
    const/4 v6, 0x0

    .line 557
    .local v6, "strongestMode":I
    iget v7, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v4, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 558
    return v8

    .line 561
    :cond_0
    iget-boolean v7, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v7, :cond_4

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v7

    .line 563
    .local v7, "componentPerm":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 564
    invoke-virtual {v2, v7, v3, v4, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v10

    if-nez v10, :cond_1

    .line 566
    return v8

    .line 572
    :cond_1
    if-nez v7, :cond_2

    move v10, v8

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 574
    .local v10, "allowDefaultWrite":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v11

    .line 575
    .local v11, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v11, :cond_4

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 577
    .local v12, "path":Ljava/lang/String;
    array-length v13, v11

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_4

    aget-object v15, v11, v14

    .line 578
    .local v15, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v9

    .line 579
    .local v9, "pathPerm":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v15, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 580
    invoke-virtual {v2, v9, v3, v4, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v16

    if-nez v16, :cond_3

    .line 582
    return v8

    .line 577
    .end local v9    # "pathPerm":Ljava/lang/String;
    .end local v15    # "pp":Landroid/content/pm/PathPermission;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 588
    .end local v7    # "componentPerm":Ljava/lang/String;
    .end local v10    # "allowDefaultWrite":Z
    .end local v11    # "pps":[Landroid/content/pm/PathPermission;
    .end local v12    # "path":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    return v7
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 2218
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2219
    :cond_0
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const-string v0, "content"

    .line 2220
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2221
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2223
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2224
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2225
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2228
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_1
    return-object p0
.end method

.method private maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2154
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v0, :cond_0

    .line 2155
    return-object p1

    .line 2157
    :cond_0
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 829
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 830
    .local v0, "original":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 831
    return-object v0
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2212
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2213
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 2046
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2047
    .local v0, "numOperations":I
    new-array v1, v0, [Landroid/content/ContentProviderResult;

    .line 2048
    .local v1, "results":[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2049
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v1, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2048
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2051
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 1997
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1998
    return-void
.end method

.method public attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 1986
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1987
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 1407
    array-length v0, p2

    .line 1408
    .local v0, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1409
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2074
    const/4 v0, 0x0

    return-object v0
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    .line 1312
    const/4 v0, 0x0

    return-object v0
.end method

.method checkUser(IILandroid/content/Context;)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 634
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 636
    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 634
    :goto_1
    return v0
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2114
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    return-void
.end method

.method protected enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 662
    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 663
    .local v10, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 664
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 665
    .local v12, "uid":I
    const/4 v3, 0x0

    .line 666
    .local v3, "missingPerm":Ljava/lang/String;
    const/4 v4, 0x0

    .line 668
    .local v4, "strongestMode":I
    iget v5, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v12, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_0

    .line 669
    return v13

    .line 672
    :cond_0
    iget-boolean v5, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v5, :cond_8

    invoke-virtual {v0, v11, v12, v10}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v5

    .line 674
    .local v5, "componentPerm":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 675
    invoke-direct {v0, v5, v2, v9}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v6

    .line 676
    .local v6, "mode":I
    if-nez v6, :cond_1

    .line 677
    return v13

    .line 679
    :cond_1
    move-object v3, v5

    .line 680
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 686
    .end local v6    # "mode":I
    :cond_2
    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v13

    .line 688
    .local v6, "allowDefaultRead":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v7

    .line 689
    .local v7, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v7, :cond_7

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 691
    .local v8, "path":Ljava/lang/String;
    array-length v15, v7

    move/from16 v16, v6

    move v6, v4

    move-object v4, v3

    move v3, v13

    .end local v3    # "missingPerm":Ljava/lang/String;
    .local v4, "missingPerm":Ljava/lang/String;
    .local v6, "strongestMode":I
    .local v16, "allowDefaultRead":Z
    :goto_1
    if-ge v3, v15, :cond_6

    aget-object v14, v7, v3

    .line 692
    .local v14, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v13

    .line 693
    .local v13, "pathPerm":Ljava/lang/String;
    if-eqz v13, :cond_5

    invoke-virtual {v14, v8}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 694
    move-object/from16 v18, v4

    invoke-direct {v0, v13, v2, v9}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    .line 695
    .local v4, "mode":I
    .local v18, "missingPerm":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 696
    const/4 v3, 0x0

    return v3

    .line 700
    :cond_4
    const/16 v16, 0x0

    .line 701
    move-object/from16 v17, v13

    .line 702
    .end local v18    # "missingPerm":Ljava/lang/String;
    .local v17, "missingPerm":Ljava/lang/String;
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 691
    .end local v6    # "strongestMode":I
    .end local v13    # "pathPerm":Ljava/lang/String;
    .end local v14    # "pp":Landroid/content/pm/PathPermission;
    .local v4, "strongestMode":I
    move v6, v4

    move-object/from16 v4, v17

    goto :goto_2

    .end local v17    # "missingPerm":Ljava/lang/String;
    .local v4, "missingPerm":Ljava/lang/String;
    .restart local v6    # "strongestMode":I
    :cond_5
    move-object/from16 v18, v4

    .end local v4    # "missingPerm":Ljava/lang/String;
    .restart local v18    # "missingPerm":Ljava/lang/String;
    move-object/from16 v4, v18

    .end local v18    # "missingPerm":Ljava/lang/String;
    .restart local v4    # "missingPerm":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    goto :goto_1

    .line 710
    .end local v8    # "path":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v4

    move v4, v6

    move-object/from16 v3, v18

    .end local v4    # "missingPerm":Ljava/lang/String;
    .restart local v18    # "missingPerm":Ljava/lang/String;
    goto :goto_3

    .end local v16    # "allowDefaultRead":Z
    .end local v18    # "missingPerm":Ljava/lang/String;
    .restart local v3    # "missingPerm":Ljava/lang/String;
    .local v4, "strongestMode":I
    .local v6, "allowDefaultRead":Z
    :cond_7
    move/from16 v16, v6

    .end local v6    # "allowDefaultRead":Z
    .restart local v16    # "allowDefaultRead":Z
    :goto_3
    if-eqz v16, :cond_8

    const/4 v6, 0x0

    return v6

    .line 714
    .end local v5    # "componentPerm":Ljava/lang/String;
    .end local v7    # "pps":[Landroid/content/pm/PathPermission;
    .end local v16    # "allowDefaultRead":Z
    :cond_8
    move-object v13, v3

    move v14, v4

    .end local v3    # "missingPerm":Ljava/lang/String;
    .end local v4    # "strongestMode":I
    .local v13, "missingPerm":Ljava/lang/String;
    .local v14, "strongestMode":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 715
    .local v15, "callingUserId":I
    iget-boolean v3, v0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v3, :cond_9

    iget v3, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v3, v12}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_9

    .line 716
    invoke-static {v1, v15}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v3

    goto :goto_4

    :cond_9
    move-object v4, v1

    .line 717
    .local v4, "userUri":Landroid/net/Uri;
    :goto_4
    const/4 v7, 0x1

    move-object v3, v10

    move v5, v11

    move v6, v12

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    move-result v3

    if-nez v3, :cond_a

    .line 719
    const/4 v3, 0x0

    return v3

    .line 724
    :cond_a
    const/4 v3, 0x1

    if-ne v14, v3, :cond_b

    .line 725
    return v3

    .line 729
    :cond_b
    const-string v3, "android.permission.MANAGE_DOCUMENTS"

    iget-object v5, v0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 731
    iget-boolean v3, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v3, :cond_c

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", or grantUriPermission()"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 734
    :cond_c
    const-string v3, " requires the provider be exported, or grantUriPermission()"

    goto :goto_5

    .line 730
    :cond_d
    const-string v3, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    .line 734
    .local v3, "suffix":Ljava/lang/String;
    :goto_5
    nop

    .line 736
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 744
    move-object/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 745
    .local v9, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 746
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 747
    .local v11, "uid":I
    const/4 v2, 0x0

    .line 748
    .local v2, "missingPerm":Ljava/lang/String;
    const/4 v3, 0x0

    .line 750
    .local v3, "strongestMode":I
    iget v4, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v11, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    .line 751
    return v12

    .line 754
    :cond_0
    iget-boolean v4, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v4, :cond_8

    invoke-virtual {v0, v10, v11, v9}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 755
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v4

    .line 756
    .local v4, "componentPerm":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 757
    invoke-direct {v0, v4, v1, v8}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v5

    .line 758
    .local v5, "mode":I
    if-nez v5, :cond_1

    .line 759
    return v12

    .line 761
    :cond_1
    move-object v2, v4

    .line 762
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 768
    .end local v5    # "mode":I
    :cond_2
    if-nez v4, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v12

    .line 770
    .local v5, "allowDefaultWrite":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v6

    .line 771
    .local v6, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v6, :cond_7

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 773
    .local v7, "path":Ljava/lang/String;
    array-length v14, v6

    move v15, v5

    move v5, v3

    move-object v3, v2

    move v2, v12

    .end local v2    # "missingPerm":Ljava/lang/String;
    .local v3, "missingPerm":Ljava/lang/String;
    .local v5, "strongestMode":I
    .local v15, "allowDefaultWrite":Z
    :goto_1
    if-ge v2, v14, :cond_6

    aget-object v13, v6, v2

    .line 774
    .local v13, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v12

    .line 775
    .local v12, "pathPerm":Ljava/lang/String;
    if-eqz v12, :cond_5

    invoke-virtual {v13, v7}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 776
    move-object/from16 v17, v3

    invoke-direct {v0, v12, v1, v8}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    .line 777
    .local v3, "mode":I
    .local v17, "missingPerm":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 778
    const/4 v2, 0x0

    return v2

    .line 782
    :cond_4
    const/4 v15, 0x0

    .line 783
    move-object/from16 v16, v12

    .line 784
    .end local v17    # "missingPerm":Ljava/lang/String;
    .local v16, "missingPerm":Ljava/lang/String;
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 773
    .end local v5    # "strongestMode":I
    .end local v12    # "pathPerm":Ljava/lang/String;
    .end local v13    # "pp":Landroid/content/pm/PathPermission;
    .local v3, "strongestMode":I
    move v5, v3

    move-object/from16 v3, v16

    goto :goto_2

    .end local v16    # "missingPerm":Ljava/lang/String;
    .local v3, "missingPerm":Ljava/lang/String;
    .restart local v5    # "strongestMode":I
    :cond_5
    move-object/from16 v17, v3

    .end local v3    # "missingPerm":Ljava/lang/String;
    .restart local v17    # "missingPerm":Ljava/lang/String;
    move-object/from16 v3, v17

    .end local v17    # "missingPerm":Ljava/lang/String;
    .restart local v3    # "missingPerm":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x0

    goto :goto_1

    .line 792
    .end local v7    # "path":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v3

    move v3, v5

    move-object/from16 v2, v17

    .end local v3    # "missingPerm":Ljava/lang/String;
    .restart local v17    # "missingPerm":Ljava/lang/String;
    goto :goto_3

    .end local v15    # "allowDefaultWrite":Z
    .end local v17    # "missingPerm":Ljava/lang/String;
    .restart local v2    # "missingPerm":Ljava/lang/String;
    .local v3, "strongestMode":I
    .local v5, "allowDefaultWrite":Z
    :cond_7
    move v15, v5

    .end local v5    # "allowDefaultWrite":Z
    .restart local v15    # "allowDefaultWrite":Z
    :goto_3
    if-eqz v15, :cond_8

    const/4 v5, 0x0

    return v5

    .line 796
    .end local v4    # "componentPerm":Ljava/lang/String;
    .end local v6    # "pps":[Landroid/content/pm/PathPermission;
    .end local v15    # "allowDefaultWrite":Z
    :cond_8
    move-object v12, v2

    move v13, v3

    .end local v2    # "missingPerm":Ljava/lang/String;
    .end local v3    # "strongestMode":I
    .local v12, "missingPerm":Ljava/lang/String;
    .local v13, "strongestMode":I
    const/4 v6, 0x2

    move-object v2, v9

    move-object/from16 v3, p1

    move v4, v10

    move v5, v11

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    move-result v2

    if-nez v2, :cond_9

    .line 798
    const/4 v2, 0x0

    return v2

    .line 803
    :cond_9
    const/4 v2, 0x1

    if-ne v13, v2, :cond_a

    .line 804
    return v2

    .line 807
    :cond_a
    iget-boolean v2, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v2, :cond_b

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", or grantUriPermission()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 809
    :cond_b
    const-string v2, " requires the provider be exported, or grantUriPermission()"

    .line 810
    .local v2, "failReason":Ljava/lang/String;
    :goto_4
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .line 966
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 3

    .line 849
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 850
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 851
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 853
    :cond_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 821
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    .line 1977
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final getPathPermissions()[Landroid/content/pm/PathPermission;
    .locals 1

    .line 953
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final getReadPermission()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 1776
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final getWritePermission()Ljava/lang/String;
    .locals 1

    .line 931
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .locals 1

    .line 1967
    const/4 v0, 0x0

    return v0
.end method

.method protected final matchesOurAuthorities(Ljava/lang/String;)Z
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;

    .line 877
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 880
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    .line 882
    .local v0, "length":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 883
    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    .line 882
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 886
    .end local v0    # "length":I
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1008
    return-void
.end method

.method public abstract onCreate()Z
.end method

.method public onLowMemory()V
    .locals 0

    .line 1020
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 1024
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1648
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1649
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_0

    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1711
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1522
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1592
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1730
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1731
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1732
    .local v1, "count":I
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 1735
    if-eqz v0, :cond_1

    .line 1736
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1738
    :cond_1
    if-nez v1, :cond_2

    .line 1739
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1741
    :cond_2
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple items at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1744
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1745
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1746
    .local v2, "i":I
    if-ltz v2, :cond_4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 1747
    .local v3, "path":Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1748
    if-eqz v3, :cond_5

    .line 1752
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v4

    .line 1753
    .local v4, "modeBits":I
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    return-object v5

    .line 1749
    .end local v4    # "modeBits":I
    :cond_5
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "Column _data not found."

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1940
    .local p4, "args":Ljava/lang/Object;, "TT;"
    .local p5, "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1942
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v9, Landroid/content/ContentProvider$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p5

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v1, v9

    .line 1954
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1956
    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1957
    .end local v0    # "fds":[Landroid/os/ParcelFileDescriptor;
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 1958
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "failure making pipe"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1826
    const-string v0, "*/*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    const-string/jumbo v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1830
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1831
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1834
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    .line 1836
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1894
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1243
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    move-object p3, v0

    .line 1247
    const-string v0, "android:query-arg-sql-sort-order"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1248
    .local v0, "sortClause":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v1, "android:query-arg-sort-columns"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1249
    invoke-static {p3}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    :cond_1
    const-string v1, "android:query-arg-sql-selection"

    .line 1255
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "android:query-arg-sql-selection-args"

    .line 1256
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1252
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v0

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1160
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1357
    const/4 v0, 0x0

    return v0
.end method

.method public rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1374
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final setAppOps(II)V
    .locals 1
    .param p1, "readOp"    # I
    .param p2, "writeOp"    # I

    .line 958
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_0

    .line 959
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 960
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 962
    :cond_0
    return-void
.end method

.method protected final setAuthorities(Ljava/lang/String;)V
    .locals 3
    .param p1, "authorities"    # Ljava/lang/String;

    .line 864
    if-eqz p1, :cond_1

    .line 865
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 866
    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 867
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    goto :goto_0

    .line 869
    :cond_0
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 870
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    .line 873
    :cond_1
    :goto_0
    return-void
.end method

.method protected final setPathPermissions([Landroid/content/pm/PathPermission;)V
    .locals 0
    .param p1, "permissions"    # [Landroid/content/pm/PathPermission;

    .line 942
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 943
    return-void
.end method

.method protected final setReadPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .line 898
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 899
    return-void
.end method

.method protected final setWritePermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .line 920
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 921
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 2100
    const-string v0, "ContentProvider"

    const-string v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    return-void
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p1, "url"    # Landroid/net/Uri;

    .line 1330
    return-object p1
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2119
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2120
    .local v0, "auth":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v1, :cond_1

    .line 2121
    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v2

    .line 2122
    .local v2, "userId":I
    if-eq v2, v1, :cond_1

    iget-object v1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 2122
    .end local v2    # "userId":I
    goto :goto_0

    .line 2123
    .restart local v2    # "userId":I
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to query a ContentProvider in user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2124
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with a uri belonging to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2127
    .end local v2    # "userId":I
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The authority of the uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not match the one of the contentProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2130
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2133
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2135
    :goto_1
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2140
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, "encodedPath":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 2142
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "//+"

    const-string v4, "/"

    .line 2143
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2144
    .local v2, "normalized":Landroid/net/Uri;
    const-string v3, "ContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normalized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to avoid possible security issues"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    return-object v2

    .line 2148
    .end local v2    # "normalized":Landroid/net/Uri;
    :cond_4
    return-object p1
.end method
