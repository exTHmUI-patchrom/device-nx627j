.class public Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
.super Ljava/lang/Object;
.source "ImsExternalCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;
    }
.end annotation


# static fields
.field private static final EVENT_VIDEO_CAPABILITIES_CHANGED:I = 0x1

.field public static final EXTRA_IMS_EXTERNAL_CALL_ID:Ljava/lang/String; = "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

.field public static final TAG:Ljava/lang/String; = "ImsExternalCallTracker"


# instance fields
.field private mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

.field private final mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

.field private mExternalCallPullableState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

.field private final mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

.field private mExternalConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasActiveCalls:Z

.field private mIsVideoCapable:Z

.field private final mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    .line 127
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 162
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    .line 173
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->registerForNotifications()V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPullCall;Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p2, "callPuller"    # Lcom/android/internal/telephony/imsphone/ImsPullCall;
    .param p3, "callNotifier"    # Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    .line 127
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 155
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    .line 156
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    .line 157
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->handleVideoCapabilitiesChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method private containsCallId(Ljava/util/List;I)Z
    .locals 4
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;I)Z"
        }
    .end annotation

    .line 417
    .local p1, "externalCallStates":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 418
    return v0

    .line 421
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsExternalCallState;

    .line 422
    .local v2, "state":Landroid/telephony/ims/ImsExternalCallState;
    invoke-virtual {v2}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 423
    const/4 v0, 0x1

    return v0

    .line 425
    .end local v2    # "state":Landroid/telephony/ims/ImsExternalCallState;
    :cond_1
    goto :goto_0

    .line 427
    :cond_2
    return v0
.end method

.method private createExternalConnection(Landroid/telephony/ims/ImsExternalCallState;)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ims/ImsExternalCallState;

    .line 304
    const-string v0, "ImsExternalCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createExternalConnection : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->getCallType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    .line 308
    .local v0, "videoState":I
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    move-result v1

    .line 309
    .local v1, "isCallPullPermitted":Z
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 310
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v4

    .line 311
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->getAddress()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;-><init>(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;Z)V

    .line 313
    .local v2, "connection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setVideoState(I)V

    .line 314
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    .line 316
    const-string v3, "ImsExternalCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createExternalConnection - pullable state : externalCallId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ; isPullable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ; networkPullable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ; isVideo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ; videoEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ; hasActiveCalls = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 334
    return-void
.end method

.method private handleVideoCapabilitiesChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 437
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    .line 438
    const-string v0, "ImsExternalCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleVideoCapabilitiesChanged : isVideoCapable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshCallPullState()V

    .line 442
    return-void
.end method

.method private isCallPullPermitted(ZI)Z
    .locals 2
    .param p1, "isNetworkPullable"    # Z
    .param p2, "videoState"    # I

    .line 454
    invoke-static {p2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    if-nez v0, :cond_0

    .line 457
    return v1

    .line 460
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    if-eqz v0, :cond_1

    .line 462
    return v1

    .line 465
    :cond_1
    return p1
.end method

.method private refreshCallPullState()V
    .locals 7

    .line 388
    const-string v0, "ImsExternalCallTracker"

    const-string v1, "refreshCallPullState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    .line 391
    .local v1, "imsExternalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    .line 392
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 393
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 394
    .local v2, "isNetworkPullable":Z
    nop

    .line 395
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    move-result v3

    .line 396
    .local v3, "isCallPullPermitted":Z
    const-string v4, "ImsExternalCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshCallPullState : externalCallId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ; isPullable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; networkPullable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; isVideo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; videoEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; hasActiveCalls = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setIsPullable(Z)V

    .line 405
    .end local v1    # "imsExternalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    .end local v2    # "isNetworkPullable":Z
    .end local v3    # "isCallPullPermitted":Z
    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method

.method private registerForNotifications()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "ImsExternalCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 220
    :cond_0
    return-void
.end method

.method private unregisterForNotifications()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "ImsExternalCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V

    .line 230
    :cond_0
    return-void
.end method

.method private updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Landroid/telephony/ims/ImsExternalCallState;)V
    .locals 7
    .param p1, "connection"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    .param p2, "state"    # Landroid/telephony/ims/ImsExternalCallState;

    .line 346
    const-string v0, "ImsExternalCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExistingConnection : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 348
    .local v0, "existingState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 349
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 351
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    if-eq v0, v1, :cond_2

    .line 352
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 353
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    .line 356
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    .line 357
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    .line 363
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallType()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v2

    .line 364
    .local v2, "newVideoState":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 365
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setVideoState(I)V

    .line 368
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallPullableState:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->isCallPullPermitted(ZI)Z

    move-result v3

    .line 370
    .local v3, "isCallPullPermitted":Z
    const-string v4, "ImsExternalCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateExistingConnection - pullable state : externalCallId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ; isPullable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; networkPullable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {p2}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; isVideo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; videoEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mIsVideoCapable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ; hasActiveCalls = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setIsPullable(Z)V

    .line 381
    return-void
.end method


# virtual methods
.method public getConnectionById(I)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "callId"    # I

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    return-object v0
.end method

.method public onPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/internal/telephony/PhoneConstants$State;
    .param p2, "newState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 205
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    .line 206
    const-string v0, "ImsExternalCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged : hasActiveCalls = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mHasActiveCalls:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshCallPullState()V

    .line 209
    return-void
.end method

.method public refreshExternalCallState(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p1, "externalCallStates":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    const-string v0, "ImsExternalCallTracker"

    const-string v1, "refreshExternalCallState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    .line 247
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 248
    .local v0, "connectionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;>;>;"
    const/4 v1, 0x0

    .line 249
    .local v1, "wasCallRemoved":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 251
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 253
    .local v3, "callId":I
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->containsCallId(Ljava/util/List;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    .line 255
    .local v4, "externalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    .line 256
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 258
    const/4 v1, 0x1

    .line 260
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;>;"
    .end local v3    # "callId":I
    .end local v4    # "externalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    :cond_0
    goto :goto_0

    .line 263
    :cond_1
    if-eqz v1, :cond_2

    .line 264
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallStateNotifier:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;

    invoke-interface {v2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;->notifyPreciseCallStateChanged()V

    .line 268
    :cond_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsExternalCallState;

    .line 270
    .local v3, "callState":Landroid/telephony/ims/ImsExternalCallState;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 271
    const-string v4, "ImsExternalCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshExternalCallState: got = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 275
    goto :goto_1

    .line 277
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->createExternalConnection(Landroid/telephony/ims/ImsExternalCallState;)V

    goto :goto_2

    .line 279
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Landroid/telephony/ims/ImsExternalCallState;)V

    .line 282
    .end local v3    # "callState":Landroid/telephony/ims/ImsExternalCallState;
    :goto_2
    goto :goto_1

    .line 284
    :cond_5
    return-void
.end method

.method public setCallPuller(Lcom/android/internal/telephony/imsphone/ImsPullCall;)V
    .locals 0
    .param p1, "callPuller"    # Lcom/android/internal/telephony/imsphone/ImsPullCall;

    .line 190
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    .line 191
    return-void
.end method

.method public tearDown()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->unregisterForNotifications()V

    .line 182
    return-void
.end method
