.class public abstract Landroid/telephony/NetworkService;
.super Landroid/app/Service;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkService$INetworkServiceWrapper;,
        Landroid/telephony/NetworkService$NetworkServiceHandler;,
        Landroid/telephony/NetworkService$NetworkServiceProvider;
    }
.end annotation


# static fields
.field private static final NETWORK_SERVICE_CREATE_NETWORK_SERVICE_PROVIDER:I = 0x1

.field public static final NETWORK_SERVICE_EXTRA_SLOT_ID:Ljava/lang/String; = "android.telephony.extra.SLOT_ID"

.field private static final NETWORK_SERVICE_GET_REGISTRATION_STATE:I = 0x4

.field private static final NETWORK_SERVICE_INDICATION_NETWORK_STATE_CHANGED:I = 0x7

.field public static final NETWORK_SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.NetworkService"

.field private static final NETWORK_SERVICE_REGISTER_FOR_STATE_CHANGE:I = 0x5

.field private static final NETWORK_SERVICE_REMOVE_ALL_NETWORK_SERVICE_PROVIDERS:I = 0x3

.field private static final NETWORK_SERVICE_REMOVE_NETWORK_SERVICE_PROVIDER:I = 0x2

.field private static final NETWORK_SERVICE_UNREGISTER_FOR_STATE_CHANGE:I = 0x6


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final mBinder:Landroid/telephony/NetworkService$INetworkServiceWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/NetworkService$NetworkServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 210
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    const-class v0, Landroid/telephony/NetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mServiceMap:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Landroid/telephony/NetworkService$INetworkServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/NetworkService$INetworkServiceWrapper;-><init>(Landroid/telephony/NetworkService;Landroid/telephony/NetworkService$1;)V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mBinder:Landroid/telephony/NetworkService$INetworkServiceWrapper;

    .line 211
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 212
    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 214
    new-instance v0, Landroid/telephony/NetworkService$NetworkServiceHandler;

    iget-object v1, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/NetworkService$NetworkServiceHandler;-><init>(Landroid/telephony/NetworkService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

    .line 215
    const-string/jumbo v0, "network service created"

    invoke-direct {p0, v0}, Landroid/telephony/NetworkService;->log(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method static synthetic access$100(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/NetworkService;

    .line 49
    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/NetworkService;

    .line 49
    iget-object v0, p0, Landroid/telephony/NetworkService;->mServiceMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method private final loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method


# virtual methods
.method protected abstract createNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 231
    if-eqz p1, :cond_1

    const-string v0, "android.telephony.NetworkService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/telephony/NetworkService;->mBinder:Landroid/telephony/NetworkService$INetworkServiceWrapper;

    return-object v0

    .line 232
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/NetworkService;->loge(Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 252
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 242
    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 245
    return v1
.end method
