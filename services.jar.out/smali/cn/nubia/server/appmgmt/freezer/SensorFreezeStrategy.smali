.class public Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "SensorFreezeStrategy.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mIsScreenOff:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-string v0, "ApplicationFreeze_Sensor"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->TAG:Ljava/lang/String;

    .line 7
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/SensorCheck;)V
    .locals 1
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .param p2, "check"    # Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    .line 13
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->mIsScreenOff:Z

    .line 14
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 15
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->mCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    .line 16
    return-void
.end method

.method private isBg(I)Z
    .locals 1
    .param p1, "adj"    # I

    .line 19
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 32
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->mCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->hasUnfreezeSensor(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 33
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->mIsScreenOff:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->isBg(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 34
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public preCheck()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->mIsScreenOff:Z

    .line 24
    return-void
.end method

.method public resetArgs()V
    .locals 1

    .line 27
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->DEBUG:Z

    .line 28
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/SensorFreezeStrategy;->mCheck:Lcn/nubia/server/appmgmt/freezer/SensorCheck;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/SensorCheck;->resetArgs()V

    .line 29
    return-void
.end method
