.class public Lcn/nubia/server/appmgmt/freezer/ServiceFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "ServiceFreezeStrategy.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ApplicationFreeze_Service"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ServiceFreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 3
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 15
    if-nez p1, :cond_0

    .line 16
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ServiceFreezeStrategy;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 19
    const-string v0, "ApplicationFreeze_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " execServiceSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->IsExecService()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->IsExecService()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .line 4
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public resetArgs()V
    .locals 1

    .line 11
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_STRATEGY:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/ServiceFreezeStrategy;->DEBUG:Z

    .line 12
    return-void
.end method
