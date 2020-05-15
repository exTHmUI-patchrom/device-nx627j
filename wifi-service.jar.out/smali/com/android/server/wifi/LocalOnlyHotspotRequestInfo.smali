.class public Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;
.super Ljava/lang/Object;
.source "LocalOnlyHotspotRequestInfo.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;
    }
.end annotation


# static fields
.field static final HOTSPOT_NO_ERROR:I = -0x1


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mCallback:Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mPid:I


# direct methods
.method constructor <init>(Landroid/os/IBinder;Landroid/os/Messenger;Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "callback"    # Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mPid:I

    .line 56
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 57
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mMessenger:Landroid/os/Messenger;

    .line 58
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;

    iput-object v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mCallback:Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->binderDied()V

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mCallback:Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;

    invoke-interface {v0, p0}, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;->onLocalOnlyHotspotRequestorDeath(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V

    .line 80
    return-void
.end method

.method public getPid()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mPid:I

    return v0
.end method

.method public sendHotspotFailedMessage(I)V
    .locals 2
    .param p1, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 91
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 92
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 93
    iget-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 94
    return-void
.end method

.method public sendHotspotStartedMessage(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 106
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 108
    return-void
.end method

.method public sendHotspotStoppedMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 118
    iget-object v1, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 119
    return-void
.end method

.method public unlinkDeathRecipient()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 72
    return-void
.end method
