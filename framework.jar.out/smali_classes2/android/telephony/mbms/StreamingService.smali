.class public Landroid/telephony/mbms/StreamingService;
.super Ljava/lang/Object;
.source "StreamingService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/StreamingService$StreamingStateChangeReason;,
        Landroid/telephony/mbms/StreamingService$StreamingState;
    }
.end annotation


# static fields
.field public static final BROADCAST_METHOD:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsStreamingService"

.field public static final REASON_BY_USER_REQUEST:I = 0x1

.field public static final REASON_END_OF_SESSION:I = 0x2

.field public static final REASON_FREQUENCY_CONFLICT:I = 0x3

.field public static final REASON_LEFT_MBMS_BROADCAST_AREA:I = 0x6

.field public static final REASON_NONE:I = 0x0

.field public static final REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE:I = 0x5

.field public static final REASON_OUT_OF_MEMORY:I = 0x4

.field public static final STATE_STALLED:I = 0x3

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final UNICAST_METHOD:I = 0x2


# instance fields
.field private final mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field private final mParentSession:Landroid/telephony/MbmsStreamingSession;

.field private mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

.field private final mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

.field private final mSubscriptionId:I


# direct methods
.method public constructor <init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .param p2, "service"    # Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .param p3, "session"    # Landroid/telephony/MbmsStreamingSession;
    .param p4, "streamingServiceInfo"    # Landroid/telephony/mbms/StreamingServiceInfo;
    .param p5, "callback"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    .line 122
    iput-object p3, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    .line 123
    iput-object p2, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 124
    iput-object p4, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    .line 125
    iput-object p5, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 126
    return-void
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 193
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 167
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v2}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->stopStreaming(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v0, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 179
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MbmsStreamingService"

    const-string v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 176
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 180
    :goto_1
    return-void

    .line 178
    :goto_2
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    throw v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No streaming service attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    return-object v0
.end method

.method public getInfo()Landroid/telephony/mbms/StreamingServiceInfo;
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    return-object v0
.end method

.method public getPlaybackUri()Landroid/net/Uri;
    .locals 3

    .line 137
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v2}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MbmsStreamingService"

    const-string v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 146
    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v2, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 147
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V

    .line 148
    return-object v1

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No streaming service attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
