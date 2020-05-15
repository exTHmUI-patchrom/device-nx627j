.class public Lcom/android/internal/telephony/euicc/EuiccController;
.super Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.source "EuiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;
    }
.end annotation


# static fields
.field private static final ERROR:I = 0x2

.field private static final EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

.field static final EXTRA_OPERATION:Ljava/lang/String; = "operation"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final OK:I = 0x0

.field private static final RESOLVABLE_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EuiccController"

.field private static sInstance:Lcom/android/internal/telephony/euicc/EuiccController;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    .line 110
    const-string v0, "econtroller"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/android/internal/telephony/euicc/EuiccConnector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 117
    const-string v0, "telephony_subscription_service"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 119
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccController;

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageActiveSubscription(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/euicc/EuiccController;

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    .locals 2
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1067
    .local p1, "resultRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    goto :goto_0

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1071
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blockingGetEidFromEuiccService()Ljava/lang/String;
    .locals 4

    .line 1010
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1011
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1012
    .local v1, "eidRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$9;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEid(Lcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;)V

    .line 1024
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private blockingGetEuiccInfoFromEuiccService()Landroid/telephony/euicc/EuiccInfo;
    .locals 4

    .line 1048
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1049
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1050
    .local v1, "euiccInfoRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/telephony/euicc/EuiccInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEuiccInfo(Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccInfoCommandCallback;)V

    .line 1062
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/EuiccInfo;

    return-object v2
.end method

.method private blockingGetOtaStatusFromEuiccService()I
    .locals 4

    .line 1028
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1029
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1030
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1031
    .local v1, "statusRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getOtaStatus(Lcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;)V

    .line 1043
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private callerCanReadPhoneStatePrivileged()Z
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private callerCanWriteEmbeddedSubscriptions()Z
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private callerHasCarrierPrivilegesForActiveSubscription()Z
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 1108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1109
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges()Z

    move-result v1

    return v1
.end method

.method private canManageActiveSubscription(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 1077
    .local v0, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1078
    return v1

    .line 1080
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1081
    .local v2, "size":I
    move v3, v1

    .local v3, "subIndex":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1082
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 1084
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1085
    invoke-virtual {v5, v4, p1}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1086
    const/4 v1, 0x1

    return v1

    .line 1081
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1089
    .end local v3    # "subIndex":I
    :cond_2
    return v1
.end method

.method public static get()Lcom/android/internal/telephony/euicc/EuiccController;
    .locals 3

    .line 98
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v0, :cond_1

    .line 99
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccController;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-eqz v1, :cond_0

    .line 103
    monitor-exit v0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "get() called before init()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object v0
.end method

.method private getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "subscriptionId"    # I

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 998
    .local v0, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 999
    .local v1, "subCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1000
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1001
    .local v3, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 1002
    return-object v3

    .line 999
    .end local v3    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static init(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccController;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    goto :goto_0

    .line 90
    :cond_0
    const-string v1, "EuiccController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times! sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object v0

    .line 92
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$refreshSubscriptionsAndSendResult$0(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p2, "resultCode"    # I
    .param p3, "extrasIntent"    # Landroid/content/Intent;

    .line 940
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccOperation;)V
    .locals 4
    .param p1, "extrasIntent"    # Landroid/content/Intent;
    .param p2, "resolutionAction"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "confirmationCodeRetried"    # Z
    .param p5, "op"    # Lcom/android/internal/telephony/euicc/EuiccOperation;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 957
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.RESOLVE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 958
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v1, "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const-string v1, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE_RETRIED"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 963
    const-string v1, "operation"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 964
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 966
    .local v1, "resolutionIntent":Landroid/app/PendingIntent;
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 968
    return-void
.end method

.method public blockingGetEuiccProfileInfoList()Landroid/service/euicc/GetEuiccProfileInfoListResult;
    .locals 4

    .line 512
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 513
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 514
    .local v1, "resultRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/service/euicc/GetEuiccProfileInfoListResult;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEuiccProfileInfoList(Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;)V

    .line 528
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    goto :goto_0

    .line 529
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 532
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/euicc/GetEuiccProfileInfoListResult;

    return-object v2
.end method

.method public continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "resolutionIntent"    # Landroid/content/Intent;
    .param p2, "resolutionExtras"    # Landroid/os/Bundle;

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 144
    .local v0, "token":J
    :try_start_0
    const-string v2, "operation"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/euicc/EuiccOperation;

    .line 145
    .local v2, "op":Lcom/android/internal/telephony/euicc/EuiccOperation;
    if-eqz v2, :cond_0

    .line 149
    const-string v3, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    .line 150
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 152
    .local v3, "callbackIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, p2, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->continueOperation(Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v2    # "op":Lcom/android/internal/telephony/euicc/EuiccOperation;
    .end local v3    # "callbackIntent":Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    nop

    .line 156
    return-void

    .line 146
    .restart local v2    # "op":Lcom/android/internal/telephony/euicc/EuiccOperation;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid resolution intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v2    # "op":Lcom/android/internal/telephony/euicc/EuiccOperation;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 139
    .end local v0    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to continue operation"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "subscriptionId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 632
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    .line 633
    .local v0, "callerCanWriteEmbeddedSubscriptions":Z
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 635
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 637
    .local v1, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 638
    .local v3, "sub":Landroid/telephony/SubscriptionInfo;
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v3, :cond_0

    .line 639
    const-string v6, "EuiccController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot delete nonexistent subscription: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0, p3, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    return-void

    .line 644
    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    .line 645
    invoke-virtual {v3, v6, p2}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 646
    const-string v6, "EuiccController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No permissions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {p0, p3, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    return-void

    .line 651
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->deleteSubscriptionPrivileged(Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    .end local v3    # "sub":Landroid/telephony/SubscriptionInfo;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 654
    nop

    .line 655
    return-void

    .line 653
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method deleteSubscriptionPrivileged(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$4;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->deleteSubscription(Ljava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;)V

    .line 687
    return-void
.end method

.method public downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "switchAfterDownload"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 305
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;)V

    .line 307
    return-void
.end method

.method downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;)V
    .locals 16
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "switchAfterDownload"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "forceDeactivateSim"    # Z
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;

    move-object/from16 v10, p0

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v11

    .line 313
    .local v11, "callerCanWriteEmbeddedSubscriptions":Z
    iget-object v0, v10, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v12, p3

    invoke-virtual {v0, v1, v12}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    .line 317
    .local v13, "token":J
    if-eqz v11, :cond_0

    .line 320
    move-object v1, v10

    move-wide v2, v13

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move-object v7, v12

    move-object/from16 v8, p5

    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(JLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    return-void

    .line 332
    :catchall_0
    move-exception v0

    move-object/from16 v1, p1

    move/from16 v2, p4

    goto :goto_0

    .line 326
    :cond_0
    :try_start_1
    iget-object v0, v10, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v15, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;

    move-object v1, v15

    move-object v2, v10

    move-wide v3, v13

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p1

    move/from16 v2, p4

    :try_start_2
    invoke-virtual {v0, v1, v2, v15}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    nop

    .line 334
    return-void

    .line 332
    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method downloadSubscriptionPrivileged(JLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "callingToken"    # J
    .param p3, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p4, "switchAfterDownload"    # Z
    .param p5, "forceDeactivateSim"    # Z
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 434
    move-object v8, p0

    iget-object v9, v8, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v10, Lcom/android/internal/telephony/euicc/EuiccController$2;

    move-object v0, v10

    move-object v1, v8

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;Ljava/lang/String;J)V

    move-object v0, p3

    move v1, p4

    move/from16 v2, p5

    invoke-virtual {v9, v0, v1, v2, v10}, Lcom/android/internal/telephony/euicc/EuiccConnector;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZZLcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;)V

    .line 503
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "Requires DUMP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 975
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 978
    nop

    .line 979
    return-void

    .line 977
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public eraseSubscriptions(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 859
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 865
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$7;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->eraseSubscriptions(Lcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    nop

    .line 895
    return-void

    .line 893
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 860
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to erase subscriptions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultDownloadableSubscriptionList(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->getDefaultDownloadableSubscriptionList(ZLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 540
    return-void
.end method

.method getDefaultDownloadableSubscriptionList(ZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "forceDeactivateSim"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 544
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    .local v0, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v9, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;

    move-object v2, v9

    move-object v3, p0

    move-wide v4, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v8, p1, v9}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDefaultDownloadableSubscriptionList(ZLcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 556
    nop

    .line 557
    return-void

    .line 555
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 545
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get default list"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 224
    return-void
.end method

.method getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "forceDeactivateSim"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    .local v0, "token":J
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v10, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;

    move-object v2, v10

    move-object v3, p0

    move-wide v4, v0

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v9, p1, p2, v10}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    nop

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 229
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get metadata"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEid()Ljava/lang/String;
    .locals 3

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanReadPhoneStatePrivileged()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerHasCarrierPrivilegesForActiveSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have carrier privileges on active subscription to read EID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 174
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEidFromEuiccService()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    return-object v2

    .line 176
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;
    .locals 3

    .line 621
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 623
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEuiccInfoFromEuiccService()Landroid/telephony/euicc/EuiccInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    return-object v2

    .line 625
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getOtaStatus()I
    .locals 3

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 193
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetOtaStatusFromEuiccService()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    return v2

    .line 195
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 189
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get OTA status"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p2, "resultCode"    # I
    .param p3, "extrasIntent"    # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 938
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 939
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->requestEmbeddedSubscriptionInfoListRefresh(Ljava/lang/Runnable;)V

    .line 941
    return-void
.end method

.method public retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MASTER_CLEAR"

    const-string v2, "Must have MASTER_CLEAR to retain subscriptions for factory reset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 903
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$8;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->retainSubscriptions(Lcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    nop

    .line 932
    return-void

    .line 930
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public sendOtaStatusChangedBroadcast()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 987
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.OTA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 988
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    .line 989
    .local v1, "bestComponent":Landroid/content/pm/ComponentInfo;
    if-eqz v1, :cond_0

    .line 990
    iget-object v2, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .locals 1
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p2, "resultCode"    # I
    .param p3, "extrasIntent"    # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 947
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 951
    :goto_0
    return-void
.end method

.method public startOtaUpdatingIfNecessary()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccController$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->startOtaIfNecessary(Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;)V

    .line 217
    return-void
.end method

.method public switchToSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 692
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 694
    return-void
.end method

.method switchToSubscription(IZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 18
    .param p1, "subscriptionId"    # I
    .param p2, "forceDeactivateSim"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p3

    .line 698
    move-object/from16 v12, p4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v16

    .line 699
    .local v16, "callerCanWriteEmbeddedSubscriptions":Z
    iget-object v0, v15, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, v13}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 701
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v8, v0

    .line 703
    .local v8, "token":J
    if-eqz v16, :cond_0

    .line 707
    const/4 v0, 0x1

    .line 711
    .end local p2    # "forceDeactivateSim":Z
    .local v0, "forceDeactivateSim":Z
    move/from16 v17, v0

    goto :goto_0

    .end local v0    # "forceDeactivateSim":Z
    .restart local p2    # "forceDeactivateSim":Z
    :cond_0
    move/from16 v17, p2

    .end local p2    # "forceDeactivateSim":Z
    .local v17, "forceDeactivateSim":Z
    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v14, v0, :cond_2

    .line 713
    if-nez v16, :cond_1

    .line 714
    :try_start_0
    const-string v0, "EuiccController"

    const-string v3, "Not permitted to switch to empty subscription"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {v15, v12, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    return-void

    .line 752
    :catchall_0
    move-exception v0

    move-wide v1, v8

    goto/16 :goto_2

    .line 718
    :cond_1
    const/4 v0, 0x0

    .line 732
    .local v0, "iccid":Ljava/lang/String;
    move-object v11, v0

    goto :goto_1

    .line 720
    .end local v0    # "iccid":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 721
    .local v0, "sub":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_3

    .line 722
    :try_start_2
    const-string v3, "EuiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch to nonexistent subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v15, v12, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    return-void

    .line 726
    :cond_3
    if-nez v16, :cond_4

    :try_start_3
    iget-object v3, v15, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 727
    invoke-virtual {v3, v0, v13}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 728
    const-string v3, "EuiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not permitted to switch to subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {v15, v12, v2, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 752
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    return-void

    .line 732
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v0    # "sub":Landroid/telephony/SubscriptionInfo;
    move-object v11, v1

    .line 735
    .local v11, "iccid":Ljava/lang/String;
    :goto_1
    if-nez v16, :cond_5

    .line 736
    :try_start_5
    invoke-direct {v15, v13}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageActiveSubscription(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 738
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 739
    .local v0, "extrasIntent":Landroid/content/Intent;
    const-string v3, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    const/4 v5, 0x0

    .line 743
    invoke-static {v8, v9, v14, v13}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forSwitchNoPrivileges(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    .line 739
    move-object v1, v15

    move-object v2, v0

    move-object v4, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccOperation;)V

    .line 745
    const/4 v1, 0x1

    invoke-virtual {v15, v12, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 752
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    return-void

    .line 749
    .end local v0    # "extrasIntent":Landroid/content/Intent;
    :cond_5
    move-object v7, v15

    move-wide v1, v8

    .end local v8    # "token":J
    .local v1, "token":J
    move v10, v14

    move/from16 v12, v17

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    :try_start_6
    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(JILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 752
    .end local v11    # "iccid":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    nop

    .line 754
    return-void

    .line 752
    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v1    # "token":J
    .restart local v8    # "token":J
    :catchall_2
    move-exception v0

    move-wide v1, v8

    .end local v8    # "token":J
    .restart local v1    # "token":J
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method switchToSubscriptionPrivileged(JILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "callingToken"    # J
    .param p3, "subscriptionId"    # I
    .param p4, "iccid"    # Ljava/lang/String;
    .param p5, "forceDeactivateSim"    # Z
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 771
    move-object v7, p0

    iget-object v8, v7, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v9, Lcom/android/internal/telephony/euicc/EuiccController$5;

    move-object v0, v9

    move-object v1, v7

    move-object/from16 v2, p6

    move-wide v3, p1

    move v5, p3

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/EuiccController$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/lang/String;JILandroid/app/PendingIntent;)V

    move-object v0, p4

    move v1, p5

    invoke-virtual {v8, v0, v1, v9}, Lcom/android/internal/telephony/euicc/EuiccConnector;->switchToSubscription(Ljava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;)V

    .line 808
    return-void
.end method

.method switchToSubscriptionPrivileged(JIZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "callingToken"    # J
    .param p3, "subscriptionId"    # I
    .param p4, "forceDeactivateSim"    # Z
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, "iccid":Ljava/lang/String;
    move-object v9, p0

    move v10, p3

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    .line 761
    .local v11, "sub":Landroid/telephony/SubscriptionInfo;
    if-eqz v11, :cond_0

    .line 762
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 764
    :cond_0
    move-object v1, v9

    move-wide v2, p1

    move v4, v10

    move-object v5, v0

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(JILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 766
    return-void
.end method

.method public updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "subscriptionId"    # I
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 813
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 819
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 820
    .local v2, "sub":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_0

    .line 821
    const-string v3, "EuiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update nickname to nonexistent subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, p3, v3, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    return-void

    .line 825
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 826
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/euicc/EuiccController$6;

    invoke-direct {v5, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    .line 825
    invoke-virtual {v3, v4, p2, v5}, Lcom/android/internal/telephony/euicc/EuiccConnector;->updateSubscriptionNickname(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    .end local v2    # "sub":Landroid/telephony/SubscriptionInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 854
    nop

    .line 855
    return-void

    .line 853
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 814
    .end local v0    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to update nickname"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
