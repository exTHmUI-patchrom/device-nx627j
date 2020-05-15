.class public Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "AdjUnfreezeStrategy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-string v0, "ApplicationFreeze_Adj"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 10
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 12
    return-void
.end method

.method private isForeground(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getApplicationUtils()Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationUtils;->getForegroundPackageName()Ljava/util/List;

    move-result-object v0

    .line 27
    .local v0, "visibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 28
    .local v1, "isTopApp":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 29
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 32
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 33
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private isImportance(I)Z
    .locals 1
    .param p1, "adj"    # I

    .line 22
    if-gez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVisible(I)Z
    .locals 1
    .param p1, "adj"    # I

    .line 37
    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 15
    iget-object v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->isForeground(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->isImportance(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 17
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/freezer/AdjUnfreezeStrategy;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 18
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 6
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .line 6
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .line 6
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
