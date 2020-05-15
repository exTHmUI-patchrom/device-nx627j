.class public abstract Landroid/telephony/data/DataService;
.super Landroid/app/Service;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataService$IDataServiceWrapper;,
        Landroid/telephony/data/DataService$DataServiceHandler;,
        Landroid/telephony/data/DataService$DataCallListChangedIndication;,
        Landroid/telephony/data/DataService$SetDataProfileRequest;,
        Landroid/telephony/data/DataService$SetInitialAttachApnRequest;,
        Landroid/telephony/data/DataService$DeactivateDataCallRequest;,
        Landroid/telephony/data/DataService$SetupDataCallRequest;,
        Landroid/telephony/data/DataService$DataServiceProvider;,
        Landroid/telephony/data/DataService$DeactivateDataReason;,
        Landroid/telephony/data/DataService$SetupDataReason;
    }
.end annotation


# static fields
.field private static final DATA_SERVICE_CREATE_DATA_SERVICE_PROVIDER:I = 0x1

.field public static final DATA_SERVICE_EXTRA_SLOT_ID:Ljava/lang/String; = "android.telephony.data.extra.SLOT_ID"

.field private static final DATA_SERVICE_INDICATION_DATA_CALL_LIST_CHANGED:I = 0xb

.field public static final DATA_SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.data.DataService"

.field private static final DATA_SERVICE_REMOVE_ALL_DATA_SERVICE_PROVIDERS:I = 0x3

.field private static final DATA_SERVICE_REMOVE_DATA_SERVICE_PROVIDER:I = 0x2

.field private static final DATA_SERVICE_REQUEST_DEACTIVATE_DATA_CALL:I = 0x5

.field private static final DATA_SERVICE_REQUEST_GET_DATA_CALL_LIST:I = 0x8

.field private static final DATA_SERVICE_REQUEST_REGISTER_DATA_CALL_LIST_CHANGED:I = 0x9

.field private static final DATA_SERVICE_REQUEST_SETUP_DATA_CALL:I = 0x4

.field private static final DATA_SERVICE_REQUEST_SET_DATA_PROFILE:I = 0x7

.field private static final DATA_SERVICE_REQUEST_SET_INITIAL_ATTACH_APN:I = 0x6

.field private static final DATA_SERVICE_REQUEST_UNREGISTER_DATA_CALL_LIST_CHANGED:I = 0xa

.field public static final REQUEST_REASON_HANDOVER:I = 0x3

.field public static final REQUEST_REASON_NORMAL:I = 0x1

.field public static final REQUEST_REASON_SHUTDOWN:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mBinder:Landroid/telephony/data/DataService$IDataServiceWrapper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/telephony/data/DataService$DataServiceHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/data/DataService$DataServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Landroid/telephony/data/DataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/DataService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 433
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataService;->mServiceMap:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Landroid/telephony/data/DataService$IDataServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/DataService$IDataServiceWrapper;-><init>(Landroid/telephony/data/DataService;Landroid/telephony/data/DataService$1;)V

    iput-object v0, p0, Landroid/telephony/data/DataService;->mBinder:Landroid/telephony/data/DataService$IDataServiceWrapper;

    .line 434
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Landroid/telephony/data/DataService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/data/DataService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 435
    iget-object v0, p0, Landroid/telephony/data/DataService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 437
    new-instance v0, Landroid/telephony/data/DataService$DataServiceHandler;

    iget-object v1, p0, Landroid/telephony/data/DataService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/DataService$DataServiceHandler;-><init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/data/DataService;->mHandler:Landroid/telephony/data/DataService$DataServiceHandler;

    .line 438
    const-string v0, "Data service created"

    invoke-direct {p0, v0}, Landroid/telephony/data/DataService;->log(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method static synthetic access$100(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/DataService;

    .line 57
    iget-object v0, p0, Landroid/telephony/data/DataService;->mHandler:Landroid/telephony/data/DataService$DataServiceHandler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/data/DataService;

    .line 57
    iget-object v0, p0, Landroid/telephony/data/DataService;->mServiceMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Landroid/telephony/data/DataService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/data/DataService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Landroid/telephony/data/DataService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 555
    sget-object v0, Landroid/telephony/data/DataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 559
    sget-object v0, Landroid/telephony/data/DataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method


# virtual methods
.method public abstract createDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 454
    if-eqz p1, :cond_1

    const-string v0, "android.telephony.data.DataService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataService;->mBinder:Landroid/telephony/data/DataService$IDataServiceWrapper;

    return-object v0

    .line 455
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/data/DataService;->loge(Ljava/lang/String;)V

    .line 456
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 471
    iget-object v0, p0, Landroid/telephony/data/DataService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 472
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 464
    iget-object v0, p0, Landroid/telephony/data/DataService;->mHandler:Landroid/telephony/data/DataService$DataServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 465
    const/4 v0, 0x0

    return v0
.end method
