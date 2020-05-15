.class public Lcn/nubia/server/enterprisecustom/UninstallApp;
.super Ljava/lang/Object;
.source "UninstallApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/enterprisecustom/UninstallApp$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllUsers:Z

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mRebootReason:Ljava/lang/String;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "rebootReason"    # Ljava/lang/String;
    .param p5, "allUsers"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "enterprisecustom_UninstallAppService"

    iput-object v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mRebootReason:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mPackageName:Ljava/lang/String;

    .line 28
    iput-boolean p5, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mAllUsers:Z

    .line 29
    iput-object p3, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mUser:Landroid/os/UserHandle;

    .line 30
    iput-object p4, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mRebootReason:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/enterprisecustom/UninstallApp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/enterprisecustom/UninstallApp;

    .line 15
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/enterprisecustom/UninstallApp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/enterprisecustom/UninstallApp;

    .line 15
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public StartUninstallApp()Z
    .locals 6

    .line 35
    iget-boolean v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mAllUsers:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only admin user can request uninstall for all users"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mUser:Landroid/os/UserHandle;

    if-nez v0, :cond_2

    .line 39
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mUser:Landroid/os/UserHandle;

    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 42
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v2, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mUser:Landroid/os/UserHandle;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 48
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :goto_1
    new-instance v0, Lcn/nubia/server/enterprisecustom/UninstallApp$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcn/nubia/server/enterprisecustom/UninstallApp$PackageDeleteObserver;-><init>(Lcn/nubia/server/enterprisecustom/UninstallApp;)V

    .line 50
    .local v0, "observer":Lcn/nubia/server/enterprisecustom/UninstallApp$PackageDeleteObserver;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/server/enterprisecustom/PackageUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51
    iget-object v2, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mPackageName:Ljava/lang/String;

    .line 52
    iget-boolean v4, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mAllUsers:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    iget-object v5, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 51
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v1, 0x1

    return v1

    .line 55
    :cond_4
    return v1

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "enterprisecustom_UninstallAppService"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return v1

    .line 44
    .end local v2    # "e":Ljava/lang/Exception;
    .local v0, "userManager":Landroid/os/UserManager;
    .restart local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_5
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " can\'t request uninstall for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/enterprisecustom/UninstallApp;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
