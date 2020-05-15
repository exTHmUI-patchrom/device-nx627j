.class public Lorg/codeaurora/ims/QtiImsExtManager;
.super Ljava/lang/Object;
.source "QtiImsExtManager.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final SERVICE_ID:Ljava/lang/String; = "qti.ims.ext"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "QtiImsExtManager"

    sput-object v0, Lorg/codeaurora/ims/QtiImsExtManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private checkFeatureStatus(I)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getImsServiceState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 291
    nop

    .line 292
    return-void

    .line 285
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/QtiImsExtManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature status for phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Lorg/codeaurora/ims/QtiImsException;

    const-string v1, "Feature state is NOT_READY"

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Lcom/android/ims/ImsException;
    sget-object v1, Lorg/codeaurora/ims/QtiImsExtManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ImsException for phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    const-string v2, "Feature state is NOT_READY"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/QtiImsException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 273
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    return-void

    .line 274
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/QtiImsExtManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Lorg/codeaurora/ims/QtiImsException;

    const-string v1, "invalid phoneId"

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createImsMultiIdentityManager(ILandroid/content/Context;)Lorg/codeaurora/ims/ImsMultiIdentityManager;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 363
    new-instance v0, Lorg/codeaurora/ims/QtiImsExtManager;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, "imsExtMgr":Lorg/codeaurora/ims/QtiImsExtManager;
    new-instance v1, Lorg/codeaurora/ims/ImsMultiIdentityManager;

    invoke-direct {v1, p0, v0}, Lorg/codeaurora/ims/ImsMultiIdentityManager;-><init>(ILorg/codeaurora/ims/QtiImsExtManager;)V

    return-object v1
.end method

.method private handleQtiImsExtServiceDeath()V
    .locals 2

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 269
    sget-object v0, Lorg/codeaurora/ims/QtiImsExtManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "qtiImsExtDeathListener QtiImsExt binder died"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public static synthetic lambda$obtainBinder$0(Lorg/codeaurora/ims/QtiImsExtManager;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->handleQtiImsExtServiceDeath()V

    return-void
.end method

.method private obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    if-nez v0, :cond_1

    .line 249
    const-string v0, "qti.ims.ext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 250
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExt;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 252
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    if-eqz v1, :cond_0

    .line 257
    :try_start_0
    new-instance v1, Lorg/codeaurora/ims/-$$Lambda$QtiImsExtManager$JZBJzzRO39aEEHSt3af1pa3tl_c;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/-$$Lambda$QtiImsExtManager$JZBJzzRO39aEEHSt3af1pa3tl_c;-><init>(Lorg/codeaurora/ims/QtiImsExtManager;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lorg/codeaurora/ims/QtiImsExtManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unable to listen for QtiImsExt service death"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    return-object v1

    .line 253
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    const-string v2, "ImsService is not running"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    return-object v0
.end method


# virtual methods
.method public getCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 95
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 96
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .line 102
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService getCallForwardUncondTimer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 222
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 223
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .line 229
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService getHandoverConfig : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 371
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 372
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 374
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve MultiIdentityInterface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 106
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 107
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService getPacketCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 118
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 119
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 125
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService getPacketErrorCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRcsAppConfig(I)I
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 309
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 310
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 311
    const/4 v0, -0x1

    .line 314
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getRcsAppConfig(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 317
    nop

    .line 319
    return v0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote ImsService getRcsAppConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getVvmAppConfig(I)I
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 347
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 348
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 349
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 350
    const/4 v0, -0x1

    .line 353
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1}, Lorg/codeaurora/ims/internal/IQtiImsExt;->getVvmAppConfig(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 356
    nop

    .line 358
    return v0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote ImsService getVvmAppConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isImsRegistered(I)Z
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 323
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 324
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 325
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 326
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 328
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    .line 329
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 330
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v3

    return v3
.end method

.method public querySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 175
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 176
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 178
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->querySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    nop

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService querySsacStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 211
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 212
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 214
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    nop

    .line 218
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService queryVoltePreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 164
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 165
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->queryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService queryVopsStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 187
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 188
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->registerForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    nop

    .line 194
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService registerForParticipantStatusInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resumePendingCall(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 129
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 130
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->resumePendingCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    nop

    .line 136
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService resumePendingCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 141
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 142
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/internal/IQtiImsExt;->sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService sendCallTransferRequest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 153
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 154
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->sendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .line 160
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService sendCancelModifyCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 13
    .param p1, "phoneId"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "condition"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 82
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 83
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 85
    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-interface/range {v2 .. v12}, Lorg/codeaurora/ims/internal/IQtiImsExt;->setCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    nop

    .line 90
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote ImsService setCallForwardUncondTimer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "hoConfig"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 234
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 235
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2, p3}, Lorg/codeaurora/ims/internal/IQtiImsExt;->setHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    nop

    .line 241
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService setHandoverConfig : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRcsAppConfig(II)I
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "defaultSmsApp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 296
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 297
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 298
    const/4 v0, -0x1

    .line 300
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->setRcsAppConfig(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 303
    nop

    .line 304
    return v0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote ImsService setRcsAppConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setVvmAppConfig(II)I
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "defaultVvmApp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 335
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 336
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 337
    const/4 v0, -0x1

    .line 339
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/internal/IQtiImsExt;->setVvmAppConfig(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 342
    nop

    .line 343
    return v0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote ImsService setVvmAppConfig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtManager;->obtainBinder()Lorg/codeaurora/ims/internal/IQtiImsExt;

    .line 199
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 200
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager;->mQtiImsExt:Lorg/codeaurora/ims/internal/IQtiImsExt;

    invoke-interface {v0, p1, p2, p3}, Lorg/codeaurora/ims/internal/IQtiImsExt;->updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    nop

    .line 206
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService updateVoltePreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method validateInvariants(I)V
    .locals 0
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkPhoneId(I)V

    .line 383
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/QtiImsExtManager;->checkFeatureStatus(I)V

    .line 384
    return-void
.end method
