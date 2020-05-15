.class public Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "LinkFreezeStrategy.java"


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mSpecialLinkAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Ljava/util/HashSet;)V
    .locals 1
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    .local p2, "linkAppList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mSpecialLinkAppList:Ljava/util/HashSet;

    .line 12
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 13
    if-eqz p2, :cond_0

    .line 14
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mSpecialLinkAppList:Ljava/util/HashSet;

    .line 16
    :cond_0
    return-void
.end method

.method private isAllLinkWillFreeze(Ljava/util/HashSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)Z"
        }
    .end annotation

    .line 33
    .local p1, "linkList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 34
    .local v1, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->preCheckOnProcessWithoutLink(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 35
    .end local v1    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    :cond_0
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private makeLinkList(Ljava/util/HashSet;I)Z
    .locals 4
    .param p2, "reasonPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 40
    .local p1, "linkList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v0, :cond_3

    .line 41
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->findProcess(I)Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    move-result-object v0

    .line 42
    .local v0, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPackageName()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "reasonPkg":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mSpecialLinkAppList:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 45
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 46
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result p2

    .line 48
    .end local v0    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .end local v2    # "reasonPkg":Ljava/lang/String;
    goto :goto_0

    .line 49
    :cond_3
    return v1
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 5
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 19
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPid()I

    move-result v0

    .line 20
    .local v0, "reasonPid":I
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getReasonPackageName()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "reasonPkg":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->mSpecialLinkAppList:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 23
    .local v3, "linkList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-direct {p0, v3, v0}, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->makeLinkList(Ljava/util/HashSet;I)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 24
    .local v2, "outOfManager":Z
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    return v4

    .line 25
    :cond_1
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/freezer/LinkFreezeStrategy;->isAllLinkWillFreeze(Ljava/util/HashSet;)Z

    move-result v4

    return v4

    .line 21
    .end local v2    # "outOfManager":Z
    .end local v3    # "linkList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    :cond_2
    :goto_0
    return v2
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
