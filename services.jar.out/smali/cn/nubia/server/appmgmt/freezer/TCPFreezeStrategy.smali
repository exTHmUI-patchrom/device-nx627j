.class public Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "TCPFreezeStrategy.java"


# static fields
.field private static DEBUG:Z


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 9
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 10
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 11
    return-void
.end method

.method private static hasTCPConnect(I)Z
    .locals 6
    .param p0, "uid"    # I

    .line 33
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/Process;

    const-string v2, "hasTCPConnect"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 34
    .local v1, "hasTCPConnect":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 35
    .end local v1    # "hasTCPConnect":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 18
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getStandbyAppList()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 19
    return v1

    .line 21
    :cond_0
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsInTCPWhiteList:Z

    if-eqz v0, :cond_1

    .line 22
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-static {v0}, Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;->hasTCPConnect(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 24
    :cond_1
    return v1
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .line 5
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public resetArgs()V
    .locals 1

    .line 14
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/TCPFreezeStrategy;->DEBUG:Z

    .line 15
    return-void
.end method
