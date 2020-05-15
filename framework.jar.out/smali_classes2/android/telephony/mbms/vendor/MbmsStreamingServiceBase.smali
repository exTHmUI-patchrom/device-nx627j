.class public Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;
.super Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;
.source "MbmsStreamingServiceBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose(I)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    return-void
.end method

.method public getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public final initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I
    .locals 5
    .param p1, "callback"    # Landroid/telephony/mbms/IMbmsStreamingSessionCallback;
    .param p2, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    if-eqz p1, :cond_1

    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 76
    .local v0, "uid":I
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IMbmsStreamingSessionCallback;II)V

    invoke-virtual {p0, v1, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->initialize(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)I

    move-result v1

    .line 109
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 110
    invoke-interface {p1}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;

    invoke-direct {v3, p0, v0, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;II)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 118
    :cond_0
    return v1

    .line 71
    .end local v0    # "uid":I
    .end local v1    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)I
    .locals 1
    .param p1, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .param p2, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onAppCallbackDied(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "subscriptionId"    # I

    .line 296
    return-void
.end method

.method public requestUpdateStreamingServices(ILjava/util/List;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    .local p2, "serviceClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
    .locals 5
    .param p1, "subscriptionId"    # I
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/telephony/mbms/IStreamingServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    if-eqz p3, :cond_1

    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 176
    .local v0, "uid":I
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;

    invoke-direct {v1, p0, p3, v0, p1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V

    invoke-virtual {p0, p1, p2, v1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/StreamingServiceCallback;)I

    move-result v1

    .line 228
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 229
    invoke-interface {p3}, Landroid/telephony/mbms/IStreamingServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;

    invoke-direct {v3, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;II)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 237
    :cond_0
    return v1

    .line 171
    .end local v0    # "uid":I
    .end local v1    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startStreaming(ILjava/lang/String;Landroid/telephony/mbms/StreamingServiceCallback;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/telephony/mbms/StreamingServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public stopStreaming(ILjava/lang/String;)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .param p2, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    return-void
.end method
