.class public Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.super Ljava/lang/Object;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$Callback;,
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$ImsRegistrationTech;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsRegistrationImplBase"

.field private static final REGISTRATION_STATE_NOT_REGISTERED:I = 0x0

.field private static final REGISTRATION_STATE_REGISTERED:I = 0x2

.field private static final REGISTRATION_STATE_REGISTERING:I = 0x1

.field private static final REGISTRATION_STATE_UNKNOWN:I = -0x1

.field public static final REGISTRATION_TECH_IWLAN:I = 0x1

.field public static final REGISTRATION_TECH_LTE:I = 0x0

.field public static final REGISTRATION_TECH_NONE:I = -0x1


# instance fields
.field private final mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionType:I

.field private mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

.field private final mLock:Ljava/lang/Object;

.field private mRegistrationState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 151
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mConnectionType:I

    .line 158
    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 160
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .param p1, "x1"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .param p1, "x1"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 41
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method private addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 171
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 172
    return-void
.end method

.method static synthetic lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4
    .param p0, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 234
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onRegistrationDisconnected() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$onRegistered$0(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4
    .param p0, "imsRadioTech"    # I
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 188
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onRegistrationConnected() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$onRegistering$1(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4
    .param p0, "imsRadioTech"    # I
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 206
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onRegistrationProcessing() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$onSubscriberAssociatedUriChanged$4([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4
    .param p0, "uris"    # [Landroid/net/Uri;
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 269
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onSubscriberAssociatedUriChanged() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$onTechnologyChangeFailed$3(ILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 4
    .param p0, "imsRadioTech"    # I
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 253
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsRegistrationImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onRegistrationChangeFailed() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 175
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 176
    return-void
.end method

.method private updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 318
    .local v1, "state":I
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 319
    .local v2, "disconnectInfo":Landroid/telephony/ims/ImsReasonInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 330
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->getConnectionType()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(I)V

    .line 331
    goto :goto_0

    .line 326
    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->getConnectionType()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(I)V

    .line 327
    goto :goto_0

    .line 322
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 323
    nop

    .line 338
    :goto_0
    return-void

    .line 319
    .end local v1    # "state":I
    .end local v2    # "disconnectInfo":Landroid/telephony/ims/ImsReasonInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 286
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(II)V

    .line 288
    if-eqz p1, :cond_0

    .line 289
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 291
    :cond_0
    const-string v1, "ImsRegistrationImplBase"

    const-string/jumbo v2, "updateToDisconnectedState: no ImsReasonInfo provided."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 294
    :goto_0
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateToState(II)V
    .locals 2
    .param p1, "connType"    # I
    .param p2, "newState"    # I

    .line 278
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iput p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mConnectionType:I

    .line 280
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 281
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0
.end method

.method public final getConnectionType()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 304
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mConnectionType:I

    monitor-exit v0

    return v1

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 231
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 232
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$s7PspXVbCf1Q_WSzodP2glP9TjI;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$s7PspXVbCf1Q_WSzodP2glP9TjI;-><init>(Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 240
    return-void
.end method

.method public final onRegistered(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    .line 185
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(II)V

    .line 186
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$cWwTXSDsk-bWPbsDJYI--DUBMnE;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$cWwTXSDsk-bWPbsDJYI--DUBMnE;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 194
    return-void
.end method

.method public final onRegistering(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(II)V

    .line 204
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$sbjuTvW-brOSWMR74UInSZEIQB0;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$sbjuTvW-brOSWMR74UInSZEIQB0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 212
    return-void
.end method

.method public final onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 267
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$wwtkoeOtGwMjG5I0-ZTfjNpGU-s;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$wwtkoeOtGwMjG5I0-ZTfjNpGU-s;-><init>([Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 275
    return-void
.end method

.method public final onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 251
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$wDtW65cPmn_jF6dfimhBTfdg1kI;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/stub/-$$Lambda$ImsRegistrationImplBase$wDtW65cPmn_jF6dfimhBTfdg1kI;-><init>(ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 259
    return-void
.end method
