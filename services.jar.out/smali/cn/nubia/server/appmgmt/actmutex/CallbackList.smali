.class public Lcn/nubia/server/appmgmt/actmutex/CallbackList;
.super Landroid/os/RemoteCallbackList;
.source "CallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcn/nubia/mutex/IMutexCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

.field private mCallbacksMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    return-void
.end method

.method private removeCallbacksMapByCallback(Lcn/nubia/mutex/IMutexCallback;)Ljava/lang/String;
    .locals 2
    .param p1, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .line 26
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcn/nubia/mutex/IMutexCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatch(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 7
    .param p2, "nextact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->beginBroadcast()I

    move-result v0

    .line 57
    .local v0, "N":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 59
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcn/nubia/mutex/IMutexCallback;

    .line 60
    .local v2, "cb":Lcn/nubia/mutex/IMutexCallback;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    invoke-interface {v2}, Lcn/nubia/mutex/IMutexCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 61
    .local v3, "pck":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 62
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcn/nubia/mutex/IMutexCallback;

    invoke-interface {v5, v4, p2}, Lcn/nubia/mutex/IMutexCallback;->showResult(Ljava/util/List;Ljava/lang/String;)V

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to show "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_1

    .line 66
    :catch_0
    move-exception v5

    .line 58
    .end local v2    # "cb":Lcn/nubia/mutex/IMutexCallback;
    .end local v3    # "pck":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->finishBroadcast()V

    .line 72
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 13
    check-cast p1, Lcn/nubia/mutex/IMutexCallback;

    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->onCallbackDied(Lcn/nubia/mutex/IMutexCallback;)V

    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcn/nubia/mutex/IMutexCallback;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->onCallbackDied(Lcn/nubia/mutex/IMutexCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Lcn/nubia/mutex/IMutexCallback;)V
    .locals 2
    .param p1, "cb"    # Lcn/nubia/mutex/IMutexCallback;

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->removeCallbacksMapByCallback(Lcn/nubia/mutex/IMutexCallback;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "pckname":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->l:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->l:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    invoke-interface {v1, v0}, Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;->removeList(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public onCallbackDied(Lcn/nubia/mutex/IMutexCallback;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callback"    # Lcn/nubia/mutex/IMutexCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 36
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallbackDied callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/appmgmt/actmutex/ALOG;->e(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public register(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)Z
    .locals 2
    .param p1, "pckName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcn/nubia/mutex/IMutexCallback;

    .line 41
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    invoke-interface {p2}, Lcn/nubia/mutex/IMutexCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, p2}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;)V
    .locals 0
    .param p1, "c"    # Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->l:Lcn/nubia/server/appmgmt/actmutex/CallbackList$CallbackDied;

    .line 32
    return-void
.end method

.method public bridge synthetic unregister(Landroid/os/IInterface;)Z
    .locals 0

    .line 13
    check-cast p1, Lcn/nubia/mutex/IMutexCallback;

    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->unregister(Lcn/nubia/mutex/IMutexCallback;)Z

    move-result p1

    return p1
.end method

.method public unregister(Lcn/nubia/mutex/IMutexCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcn/nubia/mutex/IMutexCallback;

    .line 47
    iget-object v0, p0, Lcn/nubia/server/appmgmt/actmutex/CallbackList;->mCallbacksMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcn/nubia/mutex/IMutexCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
