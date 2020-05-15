.class public Lcom/android/internal/telephony/ims/ImsResolver;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;,
        Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    }
.end annotation


# static fields
.field private static final DELAY_DYNAMIC_QUERY_MS:I = 0x1388

.field private static final HANDLER_ADD_PACKAGE:I = 0x0

.field private static final HANDLER_CONFIG_CHANGED:I = 0x2

.field private static final HANDLER_DYNAMIC_FEATURE_CHANGE:I = 0x4

.field private static final HANDLER_OVERRIDE_IMS_SERVICE_CONFIG:I = 0x5

.field private static final HANDLER_REMOVE_PACKAGE:I = 0x1

.field private static final HANDLER_START_DYNAMIC_FEATURE_QUERY:I = 0x3

.field public static final METADATA_EMERGENCY_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"

.field public static final METADATA_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.MMTEL_FEATURE"

.field private static final METADATA_OVERRIDE_PERM_CHECK:Ljava/lang/String; = "override_bind_check"

.field public static final METADATA_RCS_FEATURE:Ljava/lang/String; = "android.telephony.ims.RCS_FEATURE"

.field private static final TAG:Ljava/lang/String; = "ImsResolver"


# instance fields
.field private mActiveControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private mAppChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mBoundImsServicesByFeature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBoundServicesLock:Ljava/lang/Object;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierServices:[Ljava/lang/String;

.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceService:Ljava/lang/String;

.field private mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

.field private mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

.field private mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

.field private mHandler:Landroid/os/Handler;

.field private mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private mImsServiceControllerFactoryStaticBindingCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private mInstalledServicesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDynamicBinding:Z

.field private final mNumSlots:I

.field private final mStaticComponent:Landroid/content/ComponentName;

.field private mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultImsPackageName"    # Ljava/lang/String;
    .param p3, "numSlots"    # I
    .param p4, "isDynamicBinding"    # Z

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$1;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$2;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$3;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    .line 275
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$4;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 299
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$5;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 313
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$6;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryStaticBindingCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 328
    sget-object v0, Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;->INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    .line 335
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$pNx4XUM9FmR6cV_MCAGiEt8F4pg;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$pNx4XUM9FmR6cV_MCAGiEt8F4pg;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    .line 411
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$7;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    .line 435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    .line 444
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    .line 445
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    .line 446
    iput p3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    .line 447
    iput-boolean p4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsDynamicBinding:Z

    .line 448
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mStaticComponent:Landroid/content/ComponentName;

    .line 449
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsDynamicBinding:Z

    if-nez v0, :cond_0

    .line 450
    const-string v0, "ImsResolver"

    const-string v1, "ImsResolver initialized with static binding."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mStaticComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 455
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    .line 456
    sget-object v0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$WVd6ghNMbVDukmkxia3ZwNeZzEY;->INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$WVd6ghNMbVDukmkxia3ZwNeZzEY;

    invoke-static {v0}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    int-to-long v1, v1

    .line 457
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    .line 460
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsDynamicBinding:Z

    if-eqz v0, :cond_1

    .line 461
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 462
    .local v0, "appChangedFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 470
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    .end local v0    # "appChangedFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsResolver;

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsResolver;
    .param p1, "x1"    # Ljava/util/Set;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsResolver;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Ljava/util/Set;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsResolver;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Landroid/content/ComponentName;I)V

    return-void
.end method

.method private bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 867
    if-nez p1, :cond_0

    .line 868
    return-void

    .line 870
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;

    move-result-object v0

    .line 871
    .local v0, "features":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/util/HashSet;)V

    .line 872
    return-void
.end method

.method private bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/util/HashSet;)V
    .locals 5
    .param p1, "info"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 877
    .local p2, "features":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->shouldFeaturesCauseBind(Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 880
    .local v0, "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    if-eqz v0, :cond_0

    .line 881
    const-string v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService connection exists, updating features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/HashSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    goto :goto_1

    .line 886
    :catch_0
    move-exception v1

    .line 887
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindImsService: error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 890
    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v1, v2, v3, p0}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->create(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 891
    const-string v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with features: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Ljava/util/HashSet;)Z

    .line 895
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .end local v0    # "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    :cond_1
    return-void
.end method

.method private calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;
    .locals 8
    .param p1, "info"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation

    .line 923
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 925
    .local v0, "imsFeaturesBySlot":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSlotForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)I

    move-result v1

    .line 926
    .local v1, "slotId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 927
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$-jFhgP_NotuFSwzjQBXWuvls4x4;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$-jFhgP_NotuFSwzjQBXWuvls4x4;-><init>(I)V

    .line 929
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 930
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 927
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 931
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 934
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v2, v3, :cond_2

    .line 935
    move v3, v2

    .line 936
    .local v3, "currSlotId":I
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v4

    .line 937
    .local v4, "carrierImsInfo":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    if-nez v4, :cond_1

    .line 939
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$VfY5To_kbbTJevLzywTg-_S1JhA;

    invoke-direct {v6, v3}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$VfY5To_kbbTJevLzywTg-_S1JhA;-><init>(I)V

    .line 940
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 941
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 939
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 945
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    .line 946
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 947
    .local v5, "deviceFeatures":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-virtual {v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 949
    invoke-virtual {v5}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$kF808g2NWzNL8H1SwzDc1FxiQdQ;

    invoke-direct {v7, v3}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$kF808g2NWzNL8H1SwzDc1FxiQdQ;-><init>(I)V

    .line 950
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 951
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    .line 950
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 949
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 934
    .end local v3    # "currSlotId":I
    .end local v4    # "carrierImsInfo":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .end local v5    # "deviceFeatures":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method private carrierConfigChanged(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;->getSubId(I)I

    move-result v0

    .line 1022
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1023
    .local v1, "config":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 1024
    const-string v2, "config_ims_package_override_string"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1026
    .local v2, "newPackageName":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRebindService(ILjava/lang/String;)V

    .line 1027
    .end local v2    # "newPackageName":Ljava/lang/String;
    goto :goto_0

    .line 1028
    :cond_0
    const-string v2, "ImsResolver"

    const-string v3, "carrierConfigChanged: CarrierConfig is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    return-void
.end method

.method private dynamicQueryComplete(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1120
    .local p2, "features":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    .line 1121
    .local v0, "service":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    if-nez v0, :cond_0

    .line 1122
    const-string v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFeaturesChanged: Couldn\'t find cached info for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    return-void

    .line 1127
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    .line 1128
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1131
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1133
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_0

    .line 1134
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1136
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1138
    :cond_2
    :goto_0
    return-void
.end method

.method private getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 2
    .param p2, "matchValue"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsServiceController;"
        }
    .end annotation

    .line 807
    .local p1, "searchMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$aWLlEvfonhYSfDR8cVsM6A5pmqI;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$aWLlEvfonhYSfDR8cVsM6A5pmqI;-><init>(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 808
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 809
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 807
    return-object v0
.end method

.method private getImsServiceControllers(I)Landroid/util/SparseArray;
    .locals 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation

    .line 610
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 615
    .local v2, "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    if-nez v2, :cond_1

    .line 616
    monitor-exit v1

    return-object v0

    .line 618
    :cond_1
    monitor-exit v1

    return-object v2

    .line 619
    .end local v2    # "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 611
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;>;"
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsDynamicBinding:Z

    if-nez v1, :cond_0

    .line 1179
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->getStaticImsService()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1184
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1186
    :goto_0
    return-object v0
.end method

.method private getInfoByComponentName(Ljava/util/Map;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .locals 1
    .param p2, "matchValue"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;"
        }
    .end annotation

    .line 821
    .local p1, "searchMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-object v0
.end method

.method private getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .locals 2
    .param p2, "matchValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;"
        }
    .end annotation

    .line 814
    .local p1, "searchMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$rPjfocpARQ2sab24iic4o3kTTgw;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$rPjfocpARQ2sab24iic4o3kTTgw;-><init>(Ljava/lang/String;)V

    .line 815
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 816
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 814
    return-object v0
.end method

.method private getSlotForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)I
    .locals 3
    .param p1, "info"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 797
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, v1, :cond_1

    .line 798
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    return v0

    .line 797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getStaticImsService()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;>;"
    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;-><init>(I)V

    .line 1193
    .local v1, "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mStaticComponent:Landroid/content/ComponentName;

    iput-object v2, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 1194
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryStaticBindingCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    iput-object v2, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 1195
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    .line 1196
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    .line 1197
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    return-object v0
.end method

.method private handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1099
    .local p2, "features":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1100
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1101
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1102
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1103
    return-void
.end method

.method private isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 784
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v1, v2, :cond_1

    .line 785
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    const/4 v0, 0x1

    return v0

    .line 784
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY()Landroid/util/SparseArray;
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$calculateFeaturesToCreate$3(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 1
    .param p0, "slotId"    # I
    .param p1, "feature"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 929
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$calculateFeaturesToCreate$4(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 1
    .param p0, "currSlotId"    # I
    .param p1, "feature"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 940
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$calculateFeaturesToCreate$5(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 1
    .param p0, "currSlotId"    # I
    .param p1, "feature"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 950
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getControllerByServiceInfo$1(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .locals 2
    .param p0, "matchValue"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .param p1, "c"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 808
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getInfoByPackageName$2(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 1
    .param p0, "matchValue"    # Ljava/lang/String;
    .param p1, "i"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 815
    iget-object v0, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 344
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 405
    return v1

    .line 375
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 377
    .local v0, "slotId":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    .line 378
    .local v1, "isCarrierImsService":Z
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 379
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 380
    const-string v4, "ImsResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overriding carrier ImsService - slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRebindService(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 384
    :cond_1
    const-string v4, "ImsResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overriding device ImsService -  packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 386
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 388
    :cond_3
    iput-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    .line 389
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v4

    .line 390
    .local v4, "deviceInfo":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    if-nez v4, :cond_4

    .line 392
    goto :goto_1

    .line 394
    :cond_4
    iget-boolean v5, v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v5, :cond_5

    .line 395
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_0

    .line 399
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 402
    .end local v4    # "deviceInfo":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    :goto_0
    goto :goto_1

    .line 366
    .end local v0    # "slotId":I
    .end local v1    # "isCarrierImsService":Z
    .end local v3    # "packageName":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 367
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 368
    .local v1, "name":Landroid/content/ComponentName;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    .line 370
    .local v3, "features":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 371
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->dynamicQueryComplete(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 372
    goto :goto_1

    .line 361
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v3    # "features":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 362
    .local v0, "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->startDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 363
    goto :goto_1

    .line 356
    .end local v0    # "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 357
    .local v0, "slotId":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->carrierConfigChanged(I)V

    .line 358
    goto :goto_1

    .line 351
    .end local v0    # "slotId":I
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 352
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRemovedImsService(Ljava/lang/String;)Z

    .line 353
    goto :goto_1

    .line 346
    .end local v0    # "packageName":Ljava/lang/String;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 347
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeAddedImsService(Ljava/lang/String;)V

    .line 348
    nop

    .line 407
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$shouldFeaturesCauseBind$6(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 1
    .param p0, "f"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 1001
    iget v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeAddedImsService(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 709
    const-string v0, "ImsResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeAddedImsService, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 711
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v1, "newlyAddedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 715
    .local v3, "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v5, v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByComponentName(Ljava/util/Map;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v4

    .line 716
    .local v4, "match":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    if-eqz v4, :cond_1

    .line 720
    iget-boolean v5, v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v5, :cond_0

    .line 722
    const-string v5, "ImsResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating features in cached ImsService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v5, "ImsResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating features - Old features: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " new features: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    .line 726
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_1

    .line 729
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_1

    .line 732
    :cond_1
    const-string v5, "ImsResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding newly added ImsService to cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v6, v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-boolean v5, v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v5, :cond_2

    .line 735
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 739
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 742
    .end local v3    # "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .end local v4    # "match":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    :goto_1
    goto/16 :goto_0

    .line 745
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 746
    .restart local v3    # "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 749
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 751
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_3

    .line 752
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 754
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 756
    .end local v3    # "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    :cond_5
    :goto_3
    goto :goto_2

    .line 757
    :cond_6
    return-void
.end method

.method private maybeRebindService(ILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "newPackageName"    # Ljava/lang/String;

    .line 1009
    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1011
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, v1, :cond_1

    .line 1012
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundCarrierServices(ILjava/lang/String;)V

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundCarrierServices(ILjava/lang/String;)V

    .line 1018
    :cond_1
    return-void
.end method

.method private maybeRemovedImsService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 766
    return v1

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    .line 770
    .local v0, "match":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    if-eqz v0, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 774
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 775
    const/4 v1, 0x1

    return v1

    .line 777
    :cond_1
    return v1
.end method

.method private printFeatures(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1141
    .local p1, "features":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    .local v0, "featureString":Ljava/lang/StringBuilder;
    const-string v1, "features: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    if-eqz p1, :cond_1

    .line 1144
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 1145
    .local v2, "feature":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    iget v3, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1147
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    iget v3, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    const-string v3, "} "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    .end local v2    # "feature":Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;
    goto :goto_0

    .line 1151
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private putImsController(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .param p3, "controller"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 665
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p1, v0, :cond_2

    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 673
    .local v1, "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    if-nez v1, :cond_1

    .line 674
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 675
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 677
    :cond_1
    const-string v2, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsServiceController added on slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with feature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " using package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 677
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    .end local v1    # "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    monitor-exit v0

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 667
    :cond_2
    :goto_0
    const-string v0, "ImsResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putImsController received invalid parameters - slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method private removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "feature"    # I

    .line 684
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p1, v1, :cond_3

    const/4 v1, -0x1

    if-le p2, v1, :cond_3

    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 692
    .local v2, "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    if-nez v2, :cond_1

    .line 693
    monitor-exit v1

    return-object v0

    .line 695
    :cond_1
    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 696
    .local v0, "c":Lcom/android/internal/telephony/ims/ImsServiceController;
    if-eqz v0, :cond_2

    .line 697
    const-string v3, "ImsResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsServiceController removed on slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with feature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " using package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 697
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 701
    :cond_2
    monitor-exit v1

    return-object v0

    .line 702
    .end local v0    # "c":Lcom/android/internal/telephony/ims/ImsServiceController;
    .end local v2    # "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 686
    :cond_3
    :goto_0
    const-string v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeImsController received invalid parameters - slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-object v0
.end method

.method private scheduleQueryForFeatures(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "delayMs"    # I

    .line 1082
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    .line 1083
    .local v0, "service":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    if-nez v0, :cond_0

    .line 1084
    const-string v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleQueryForFeatures: Couldn\'t find cached info for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    return-void

    .line 1087
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    .line 1088
    return-void
.end method

.method private scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 1
    .param p1, "service"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1091
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    .line 1092
    return-void
.end method

.method private scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V
    .locals 4
    .param p1, "service"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .param p2, "delayMs"    # I

    .line 1064
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSlotForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1066
    const-string v0, "ImsResolver"

    const-string v1, "scheduleQueryForFeatures: skipping query for ImsService that is not set as carrier/device ImsService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1071
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    const-string v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleQueryForFeatures: dynamic query for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already scheduled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-void

    .line 1076
    :cond_1
    const-string v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleQueryForFeatures: starting dynamic query for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1079
    return-void
.end method

.method private searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "controllerFactory"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-interface {p2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->getServiceInterface()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1209
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    .line 1212
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1209
    const/16 v4, 0x80

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1213
    .local v4, "entry":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1215
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_8

    .line 1216
    new-instance v6, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    iget v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;-><init>(I)V

    .line 1217
    .local v6, "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 1218
    iput-object p2, v6, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 1225
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-ne v7, p2, :cond_0

    goto :goto_1

    .line 1248
    :cond_0
    iput-boolean v8, v6, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    goto :goto_2

    .line 1227
    :cond_1
    :goto_1
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_4

    .line 1228
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1230
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    .line 1232
    :cond_2
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "android.telephony.ims.MMTEL_FEATURE"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1233
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    .line 1235
    :cond_3
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "android.telephony.ims.RCS_FEATURE"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1236
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    .line 1241
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-eq v7, p2, :cond_5

    .line 1242
    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1244
    iput-boolean v8, v6, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    .line 1250
    :cond_5
    :goto_2
    const-string v7, "ImsResolver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "service name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", manifest query: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v6, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v9, "android.permission.BIND_IMS_SERVICE"

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "override_bind_check"

    .line 1257
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    .line 1260
    :cond_6
    const-string v7, "ImsResolver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ImsService is not protected with BIND_IMS_SERVICE permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "entry":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    goto :goto_4

    .line 1258
    .restart local v4    # "entry":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    :cond_7
    :goto_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    .end local v4    # "entry":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "info":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    :cond_8
    :goto_4
    goto/16 :goto_0

    .line 1265
    :cond_9
    return-object v0
.end method

.method private shouldFeaturesCauseBind(Ljava/util/HashSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)Z"
        }
    .end annotation

    .line 999
    .local p1, "features":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;->INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;

    .line 1001
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    .line 1002
    .local v0, "bindableFeatures":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private startDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 3
    .param p1, "service"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 1108
    invoke-interface {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->getServiceInterface()Ljava/lang/String;

    move-result-object v2

    .line 1107
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->startQuery(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    .line 1109
    .local v0, "queryStarted":Z
    if-nez v0, :cond_0

    .line 1110
    const-string v1, "ImsResolver"

    const-string v2, "startDynamicQuery: service could not connect. Retrying after delay."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/16 v1, 0x1388

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    goto :goto_0

    .line 1113
    :cond_0
    const-string v1, "ImsResolver"

    const-string v2, "startDynamicQuery: Service queried, waiting for response."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_0
    return-void
.end method

.method private unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 901
    if-nez p1, :cond_0

    .line 902
    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 905
    .local v0, "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    if-eqz v0, :cond_1

    .line 908
    :try_start_0
    const-string v1, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    goto :goto_0

    .line 910
    :catch_0
    move-exception v1

    .line 911
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindImsService: Remote Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    :cond_1
    return-void
.end method

.method private updateBoundCarrierServices(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "newPackageName"    # Ljava/lang/String;

    .line 1033
    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p1, v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1035
    .local v0, "oldPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aput-object p2, v1, p1

    .line 1036
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1037
    const-string v1, "ImsResolver"

    const-string v2, "Carrier Config updated, binding new ImsService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1042
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v1

    .line 1045
    .local v1, "newInfo":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1052
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .end local v0    # "oldPackageName":Ljava/lang/String;
    .end local v1    # "newInfo":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    goto :goto_1

    .line 1046
    .restart local v0    # "oldPackageName":Ljava/lang/String;
    .restart local v1    # "newInfo":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1048
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1056
    .end local v0    # "oldPackageName":Ljava/lang/String;
    .end local v1    # "newInfo":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    :cond_2
    :goto_1
    return-void
.end method

.method private updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 6
    .param p1, "newInfo"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 828
    if-nez p1, :cond_0

    .line 829
    return-void

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 834
    .local v0, "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    nop

    .line 835
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;

    move-result-object v1

    .line 836
    .local v1, "features":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;>;"
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->shouldFeaturesCauseBind(Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 838
    if-eqz v0, :cond_1

    .line 839
    :try_start_0
    const-string v2, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating features for ImsService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 839
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v2, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating Features - New Features: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/HashSet;)V

    goto :goto_0

    .line 855
    :catch_0
    move-exception v2

    goto :goto_1

    .line 844
    :cond_1
    const-string v2, "ImsResolver"

    const-string v3, "updateImsServiceFeatures: unbound with active features, rebinding"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/util/HashSet;)V

    .line 849
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 851
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 852
    const-string v2, "ImsResolver"

    const-string v3, "Updating device default"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 855
    :goto_1
    nop

    .line 856
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ImsResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsServiceFeatures: Remote Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    goto :goto_3

    .line 859
    :cond_3
    if-eqz v0, :cond_4

    .line 860
    const-string v2, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbinding: features = 0 for ImsService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 863
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public disableIms(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 528
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllers(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 529
    .local v0, "controllers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    if-eqz v0, :cond_0

    .line 530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 531
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 532
    .local v2, "key":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->disableIms(I)V

    .line 530
    .end local v2    # "key":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public enableIms(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 514
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllers(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 515
    .local v0, "controllers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    if-eqz v0, :cond_0

    .line 516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 517
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 518
    .local v2, "key":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->enableIms(I)V

    .line 516
    .end local v2    # "key":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 587
    .local v0, "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    return-object v1

    .line 590
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 575
    .local v0, "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    return-object v1

    .line 578
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImsServiceConfiguration(IZ)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "isCarrierService"    # Z

    .line 656
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 661
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 657
    :cond_2
    :goto_1
    const-string v0, "ImsResolver"

    const-string v1, "getImsServiceConfiguration: invalid slotId!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v0, ""

    return-object v0
.end method

.method public getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 595
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 601
    .local v2, "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    if-nez v2, :cond_1

    .line 602
    monitor-exit v1

    return-object v0

    .line 604
    :cond_1
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 605
    .end local v2    # "services":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/telephony/ims/ImsServiceController;>;"
    .local v0, "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    monitor-exit v1

    .line 606
    return-object v0

    .line 605
    .end local v0    # "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 596
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getImsServiceControllerAndListen(IILcom/android/ims/internal/IImsServiceFeatureCallback;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .param p3, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 625
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 627
    .local v0, "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 629
    return-object v0

    .line 631
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1163
    return-object v1

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    .line 1166
    .local v0, "infoFilter":Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    if-eqz v0, :cond_1

    .line 1167
    return-object v0

    .line 1169
    :cond_1
    return-object v1
.end method

.method public getMmTelFeatureAndListen(ILcom/android/ims/internal/IImsServiceFeatureCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 548
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllerAndListen(IILcom/android/ims/internal/IImsServiceFeatureCallback;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 550
    .local v0, "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getRcsFeatureAndListen(ILcom/android/ims/internal/IImsServiceFeatureCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 564
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllerAndListen(IILcom/android/ims/internal/IImsServiceFeatureCallback;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 566
    .local v0, "controller":Lcom/android/internal/telephony/ims/ImsServiceController;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public imsServiceFeatureCreated(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .param p3, "controller"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 964
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->putImsController(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 965
    return-void
.end method

.method public imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .param p3, "controller"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 973
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 974
    return-void
.end method

.method public imsServiceFeaturesChanged(Landroid/telephony/ims/stub/ImsFeatureConfiguration;Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 3
    .param p1, "config"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .param p2, "controller"    # Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 983
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    const-string v0, "ImsResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsServiceFeaturesChanged: config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ComponentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 986
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 989
    return-void

    .line 984
    :cond_1
    :goto_0
    return-void
.end method

.method public initPopulateCacheAndStartBind()V
    .locals 3

    .line 500
    const-string v0, "ImsResolver"

    const-string v1, "Initializing cache and binding."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;->create(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    .line 504
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 503
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 507
    return-void
.end method

.method public overrideImsServiceConfiguration(IZLjava/lang/String;)Z
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isCarrierService"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 637
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    if-nez p3, :cond_1

    .line 643
    const-string v1, "ImsResolver"

    const-string v2, "overrideImsServiceConfiguration: null packageName!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return v0

    .line 648
    :cond_1
    move v0, p2

    .line 649
    .local v0, "carrierService":I
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2, p1, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 650
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 651
    const/4 v1, 0x1

    return v1

    .line 638
    .end local v0    # "carrierService":I
    :cond_2
    :goto_0
    const-string v1, "ImsResolver"

    const-string v2, "overrideImsServiceConfiguration: invalid slotId!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v0
.end method

.method public setImsDynamicQueryManagerFactory(Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;)V
    .locals 0
    .param p1, "m"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 492
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    .line 493
    return-void
.end method

.method public setImsServiceControllerFactory(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 482
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 483
    return-void
.end method

.method public setSubscriptionManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    .line 478
    return-void
.end method
