.class public Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;
.super Ljava/lang/Object;
.source "FreezeStatusNotifier.java"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnubia/os/IFreezeChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 15
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private fillListByInfo(Ljava/util/HashSet;[I[I)V
    .locals 4
    .param p2, "pids"    # [I
    .param p3, "uids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;[I[I)V"
        }
    .end annotation

    .line 55
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 57
    .local v2, "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    iget v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    aput v3, p2, v0

    .line 58
    iget v3, v2, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    aput v3, p3, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .end local v2    # "info":Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method notifyChange(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "freezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p2, "unfreezeList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    .local p3, "quitList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 29
    .local v0, "unfreeze":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcn/nubia/server/appmgmt/freezer/ProcessInfo;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 38
    .local v1, "fPids":[I
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 39
    .local v2, "fUids":[I
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 40
    .local v3, "uPids":[I
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 41
    .local v4, "uUids":[I
    invoke-direct {p0, p1, v1, v2}, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->fillListByInfo(Ljava/util/HashSet;[I[I)V

    .line 42
    invoke-direct {p0, v0, v3, v4}, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->fillListByInfo(Ljava/util/HashSet;[I[I)V

    .line 44
    iget-object v5, p0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 45
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 46
    iget-object v7, p0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lnubia/os/IFreezeChangeCallback;

    .line 48
    .local v7, "callback":Lnubia/os/IFreezeChangeCallback;
    :try_start_0
    invoke-interface {v7, v4, v3}, Lnubia/os/IFreezeChangeCallback;->updateFreezeChanged([I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    :catch_0
    move-exception v8

    .line 45
    .end local v7    # "callback":Lnubia/os/IFreezeChangeCallback;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 51
    .end local v6    # "i":I
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 52
    return-void
.end method

.method public registerFreezeChangeCallback(Lnubia/os/IFreezeChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/IFreezeChangeCallback;

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeStatusNotifier;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 22
    :cond_0
    return-void
.end method
