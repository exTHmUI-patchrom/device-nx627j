.class Lcn/nubia/server/appmgmt/freezer/FreezerProxy;
.super Ljava/lang/Object;
.source "FreezerProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;
    }
.end annotation


# static fields
.field private static final FREEZERD:Ljava/lang/String; = "nubia.os.IFreezerDaemon"

.field private static final TAG:Ljava/lang/String; = "ApplicationFreeze"


# instance fields
.field private mDaemon:Lnubia/os/IFreezerDaemon;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/FreezerProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/FreezerProxy;

    .line 11
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 42
    const-string v0, "ApplicationFreeze"

    const-string v1, "freezerd died"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    .line 44
    return-void
.end method

.method declared-synchronized freeze([II)Z
    .locals 2
    .param p1, "tid"    # [I
    .param p2, "pid"    # I

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->getFreezerDaemon()Lnubia/os/IFreezerDaemon;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v0, "daemon":Lnubia/os/IFreezerDaemon;
    if-eqz v0, :cond_0

    .line 82
    :try_start_1
    invoke-interface {v0, p1, p2}, Lnubia/os/IFreezerDaemon;->freeze([II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 77
    .end local v0    # "daemon":Lnubia/os/IFreezerDaemon;
    .end local p1    # "tid":[I
    .end local p2    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/FreezerProxy;
    throw p1
.end method

.method getFreezerDaemon()Lnubia/os/IFreezerDaemon;
    .locals 2

    .line 47
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    if-nez v0, :cond_1

    .line 48
    const-string/jumbo v0, "nubia.os.IFreezerDaemon"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IFreezerDaemon$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IFreezerDaemon;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    .line 49
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    invoke-interface {v0}, Lnubia/os/IFreezerDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 56
    :cond_0
    const-string v0, "ApplicationFreeze"

    const-string v1, "freezerd not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->mDaemon:Lnubia/os/IFreezerDaemon;

    return-object v0
.end method

.method makeSureUnfreeze([II)V
    .locals 1
    .param p1, "tid"    # [I
    .param p2, "pid"    # I

    .line 93
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;-><init>(Lcn/nubia/server/appmgmt/freezer/FreezerProxy;[II)V

    .line 94
    .local v0, "runnable":Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy$MakSureUnfreezeRunnalbe;->run()V

    .line 95
    return-void
.end method

.method declared-synchronized unfreeze([II)Z
    .locals 2
    .param p1, "tid"    # [I
    .param p2, "pid"    # I

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/freezer/FreezerProxy;->getFreezerDaemon()Lnubia/os/IFreezerDaemon;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .local v0, "daemon":Lnubia/os/IFreezerDaemon;
    if-eqz v0, :cond_0

    .line 67
    :try_start_1
    invoke-interface {v0, p1, p2}, Lnubia/os/IFreezerDaemon;->unfreeze([II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 62
    .end local v0    # "daemon":Lnubia/os/IFreezerDaemon;
    .end local p1    # "tid":[I
    .end local p2    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcn/nubia/server/appmgmt/freezer/FreezerProxy;
    throw p1
.end method
