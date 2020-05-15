.class public Lorg/codeaurora/ims/ImsMultiIdentityManager;
.super Ljava/lang/Object;
.source "ImsMultiIdentityManager.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final REGISTRATION_RESPONSE_FAILURE:I = 0x0

.field public static final REGISTRATION_RESPONSE_SUCCESS:I = 0x1


# instance fields
.field private volatile mInterface:Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

.field private mPhoneId:I

.field private mQtiImsExtMgr:Lorg/codeaurora/ims/QtiImsExtManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "ImsMultiIdentityManager"

    sput-object v0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILorg/codeaurora/ims/QtiImsExtManager;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imsExtMgr"    # Lorg/codeaurora/ims/QtiImsExtManager;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mPhoneId:I

    .line 51
    iput-object p2, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mQtiImsExtMgr:Lorg/codeaurora/ims/QtiImsExtManager;

    .line 52
    return-void
.end method

.method private getMultiIdentityInterface()Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mInterface:Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    .line 60
    .local v0, "intf":Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    if-eqz v0, :cond_0

    .line 61
    return-object v0

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mQtiImsExtMgr:Lorg/codeaurora/ims/QtiImsExtManager;

    iget v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QtiImsExtManager;->validateInvariants(I)V

    .line 64
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mQtiImsExtMgr:Lorg/codeaurora/ims/QtiImsExtManager;

    iget v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QtiImsExtManager;->getMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 69
    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mInterface:Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    .line 70
    invoke-interface {v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 72
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_0
    new-instance v2, Lorg/codeaurora/ims/-$$Lambda$ImsMultiIdentityManager$3dvlNMVMgotYzZoawqPgTpooQ8Q;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/-$$Lambda$ImsMultiIdentityManager$3dvlNMVMgotYzZoawqPgTpooQ8Q;-><init>(Lorg/codeaurora/ims/ImsMultiIdentityManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .line 77
    return-object v0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lorg/codeaurora/ims/ImsMultiIdentityManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Unable to listen for Server Process death"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v3, Lorg/codeaurora/ims/QtiImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote linkToDeath Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/ImsMultiIdentityManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mInterface is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    const-string v2, "Remote Interface is NULL"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic lambda$getMultiIdentityInterface$0(Lorg/codeaurora/ims/ImsMultiIdentityManager;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityManager;->onServiceDied()V

    return-void
.end method

.method private onServiceDied()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mInterface:Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    .line 56
    return-void
.end method


# virtual methods
.method public queryVirtualLineInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mQtiImsExtMgr:Lorg/codeaurora/ims/QtiImsExtManager;

    iget v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/QtiImsExtManager;->validateInvariants(I)V

    .line 120
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityManager;->getMultiIdentityInterface()Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;->queryVirtualLineInfo(Ljava/lang/String;)V
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

    const-string v3, "Remote ImsService queryVirtualLineInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "queryVirtualLineInfo :: invalid msisdn"

    .line 115
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lorg/codeaurora/ims/ImsMultiIdentityManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMultiIdentityListener(Lorg/codeaurora/ims/ImsMultiIdentityListenerBase;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsMultiIdentityListenerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mQtiImsExtMgr:Lorg/codeaurora/ims/QtiImsExtManager;

    iget v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/QtiImsExtManager;->validateInvariants(I)V

    .line 89
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityManager;->getMultiIdentityInterface()Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsMultiIdentityListenerBase;->getListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;->setMultiIdentityListener(Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 94
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService setMultiIdentityListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "setMultiIdentityListener :: listener is NULL"

    .line 84
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lorg/codeaurora/ims/ImsMultiIdentityManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateRegistrationStatus(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 98
    .local p1, "linesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mQtiImsExtMgr:Lorg/codeaurora/ims/QtiImsExtManager;

    iget v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/QtiImsExtManager;->validateInvariants(I)V

    .line 105
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityManager;->getMultiIdentityInterface()Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;->updateRegistrationStatus(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    nop

    .line 110
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote ImsService updateRegistrationStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "updateRegistrationStatus :: linesInfo is NULL"

    .line 100
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lorg/codeaurora/ims/ImsMultiIdentityManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
