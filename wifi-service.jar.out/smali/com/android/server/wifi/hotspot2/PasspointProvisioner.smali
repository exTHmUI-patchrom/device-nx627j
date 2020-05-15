.class public Lcom/android/server/wifi/hotspot2/PasspointProvisioner;
.super Ljava/lang/Object;
.source "PasspointProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuServerCallbacks;,
        Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;,
        Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;
    }
.end annotation


# static fields
.field private static final PROVISIONING_FAILURE:I = 0x1

.field private static final PROVISIONING_STATUS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PasspointProvisioner"

.field private static final TLS_VERSION:Ljava/lang/String; = "TLSv1"


# instance fields
.field private mCallingUid:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentSessionId:I

.field private final mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

.field private final mOsuNetworkCallbacks:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;

.field private final mOsuNetworkConnection:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

.field private final mOsuServerConnection:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

.field private final mProvisioningStateMachine:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

.field private mVerboseLoggingEnabled:Z

.field private final mWfaKeyStore:Lcom/android/server/wifi/hotspot2/WfaKeyStore;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectFactory"    # Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mCurrentSessionId:I

    .line 54
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mVerboseLoggingEnabled:Z

    .line 57
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p2, p1}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makeOsuNetworkConnection(Landroid/content/Context;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuNetworkConnection:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    .line 59
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;-><init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mProvisioningStateMachine:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    .line 60
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;-><init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuNetworkCallbacks:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;

    .line 61
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makeOsuServerConnection()Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuServerConnection:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    .line 62
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makeWfaKeyStore()Lcom/android/server/wifi/hotspot2/WfaKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mWfaKeyStore:Lcom/android/server/wifi/hotspot2/WfaKeyStore;

    .line 63
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 34
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuServerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 34
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuServerConnection:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 34
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuNetworkCallbacks:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$OsuNetworkCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 34
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuNetworkConnection:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 34
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mCurrentSessionId:I

    return v0
.end method

.method static synthetic access$404(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 34
    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mCurrentSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mCurrentSessionId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot2/PasspointProvisioner;

    .line 34
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mProvisioningStateMachine:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    return-object v0
.end method

.method public static synthetic lambda$init$0(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mWfaKeyStore:Lcom/android/server/wifi/hotspot2/WfaKeyStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->load()V

    .line 76
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuServerConnection:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    const-string v2, "TLSv1"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mWfaKeyStore:Lcom/android/server/wifi/hotspot2/WfaKeyStore;

    .line 77
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/WfaKeyStore;->get()Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->getTrustManagerImpl(Ljava/security/KeyStore;)Lcom/android/org/conscrypt/TrustManagerImpl;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->init(Ljavax/net/ssl/SSLContext;Lcom/android/org/conscrypt/TrustManagerImpl;)V

    .line 78
    return-void
.end method

.method public static synthetic lambda$startSubscriptionProvisioning$1(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V
    .locals 1
    .param p1, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p2, "callback"    # Landroid/net/wifi/hotspot2/IProvisioningCallback;

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mProvisioningStateMachine:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->startProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V

    .line 108
    return-void
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "level"    # I

    .line 86
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mVerboseLoggingEnabled:Z

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuNetworkConnection:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->enableVerboseLogging(I)V

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuServerConnection:Lcom/android/server/wifi/hotspot2/OsuServerConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/OsuServerConnection;->enableVerboseLogging(I)V

    .line 89
    return-void
.end method

.method public init(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mProvisioningStateMachine:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->start(Landroid/os/Handler;)V

    .line 72
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mOsuNetworkConnection:Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mProvisioningStateMachine:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/OsuNetworkConnection;->init(Landroid/os/Handler;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mProvisioningStateMachine:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$D6b75X8GL55-AmCExPWESj54yLE;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$D6b75X8GL55-AmCExPWESj54yLE;-><init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method public startSubscriptionProvisioning(ILandroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "provider"    # Landroid/net/wifi/hotspot2/OsuProvider;
    .param p3, "callback"    # Landroid/net/wifi/hotspot2/IProvisioningCallback;

    .line 102
    iput p1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mCallingUid:I

    .line 104
    const-string v0, "PasspointProvisioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning started with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/OsuProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvisioner;->mProvisioningStateMachine:Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvisioner$ProvisioningStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/wifi/hotspot2/-$$Lambda$PasspointProvisioner$GTqDpkw3tIstQq22m_peruc6pA4;-><init>(Lcom/android/server/wifi/hotspot2/PasspointProvisioner;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    const/4 v0, 0x1

    return v0
.end method
