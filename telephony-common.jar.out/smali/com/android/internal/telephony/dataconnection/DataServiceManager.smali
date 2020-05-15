.class public Lcom/android/internal/telephony/dataconnection/DataServiceManager;
.super Ljava/lang/Object;
.source "DataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;,
        Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;,
        Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;
    }
.end annotation


# static fields
.field static final DATA_CALL_RESPONSE:Ljava/lang/String; = "data_call_response"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBound:Z

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

.field private mDeathRecipient:Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

.field private mIDataService:Landroid/telephony/data/IDataService;

.field private final mMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

.field private final mTransportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "transportType"    # I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    .line 86
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 234
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    .line 236
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 238
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 239
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 240
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->bindDataService()V

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 62
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/telephony/data/IDataService;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/telephony/data/IDataService;)Landroid/telephony/data/IDataService;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p1, "x1"    # Landroid/telephony/data/IDataService;

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDeathRecipient:Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDeathRecipient:Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method private bindDataService()V
    .locals 5

    .line 245
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->revokePermissionsFromUnusedDataServices()V

    .line 247
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "Can\'t find the binding package"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 250
    return-void

    .line 253
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->grantPermissionsToService(Ljava/lang/String;)V

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.data.DataService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    const/4 v4, 0x1

    .line 256
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    const-string v1, "Cannot bind to the data service."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_1
    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot bind to the data service. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getAllDataServicePackageNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 274
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.data.DataService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "dataPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 278
    .local v1, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 279
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_0

    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 280
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 282
    :cond_1
    return-object v1
.end method

.method private getDataServicePackageName()Ljava/lang/String;
    .locals 1

    .line 291
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getDataServicePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataServicePackageName(I)Ljava/lang/String;
    .locals 5
    .param p1, "transportType"    # I

    .line 309
    packed-switch p1, :pswitch_data_0

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport type not WWAN or WLAN. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :pswitch_0
    const v0, 0x1040173

    .line 317
    .local v0, "resourceId":I
    const-string v1, "carrier_data_service_wlan_package_override_string"

    .line 319
    .local v1, "carrierConfig":Ljava/lang/String;
    goto :goto_0

    .line 311
    .end local v0    # "resourceId":I
    .end local v1    # "carrierConfig":Ljava/lang/String;
    :pswitch_1
    const v0, 0x1040175

    .line 312
    .restart local v0    # "resourceId":I
    const-string v1, "carrier_data_service_wwan_package_override_string"

    .line 314
    .restart local v1    # "carrierConfig":Ljava/lang/String;
    nop

    .line 321
    :goto_0
    nop

    .line 326
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 330
    .local v3, "b":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {v3, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    :cond_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private grantPermissionsToService(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 103
    .local v0, "pkgToGrant":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 103
    invoke-interface {v2, v0, v3}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 105
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x4b

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    aget-object v5, v0, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    nop

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Binder to package manager died, permission grant for DataService failed."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 583
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 587
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method private revokePermissionsFromUnusedDataServices()V
    .locals 8

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getAllDataServicePackageNames()Ljava/util/Set;

    move-result-object v0

    .line 120
    .local v0, "dataServices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 121
    .local v5, "transportType":I
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getDataServicePackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 120
    .end local v5    # "transportType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 126
    .local v2, "dataServicesArray":[Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 128
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 127
    invoke-interface {v3, v2, v4}, Landroid/content/pm/IPackageManager;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 129
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x4b

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 131
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 130
    invoke-virtual {v5, v6, v7, v4, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_1

    .line 137
    .end local v2    # "dataServicesArray":[Ljava/lang/String;
    :cond_1
    nop

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Binder to package manager died; failed to revoke DataService permissions."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private sendCompleteMessage(Landroid/os/Message;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "code"    # I

    .line 339
    if-eqz p1, :cond_0

    .line 340
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 5
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "onCompleteMessage"    # Landroid/os/Message;

    .line 404
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 405
    const-string v0, "Data service not bound."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 407
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    .line 411
    .local v0, "callback":Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;
    if-eqz p3, :cond_1

    .line 412
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    move-object v0, v2

    .line 413
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, v0}, Landroid/telephony/data/IDataService;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    goto :goto_0

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Cannot invoke deactivateDataCall on data service."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 419
    if-eqz v0, :cond_2

    .line 420
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 424
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 5
    .param p1, "onCompleteMessage"    # Landroid/os/Message;

    .line 503
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 504
    const-string v0, "Data service not bound."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 506
    return-void

    .line 509
    :cond_0
    const/4 v0, 0x0

    .line 510
    .local v0, "callback":Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;
    if-eqz p1, :cond_1

    .line 511
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    move-object v0, v2

    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, v0}, Landroid/telephony/data/IDataService;->getDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_0

    .line 516
    :catch_0
    move-exception v2

    .line 517
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Cannot invoke getDataCallList on data service."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 518
    if-eqz v0, :cond_2

    .line 519
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 523
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getTransportType()I
    .locals 1

    .line 579
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    return v0
.end method

.method public registerForDataCallListChanged(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 535
    :cond_0
    return-void
.end method

.method public registerForServiceBindingChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 556
    if-eqz p1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 560
    :cond_0
    return-void
.end method

.method public setDataProfile(Ljava/util/List;ZLandroid/os/Message;)V
    .locals 5
    .param p2, "isRoaming"    # Z
    .param p3, "onCompleteMessage"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 473
    .local p1, "dps":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 474
    const-string v0, "Data service not bound."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 476
    return-void

    .line 479
    :cond_0
    const/4 v0, 0x0

    .line 480
    .local v0, "callback":Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;
    if-eqz p3, :cond_1

    .line 481
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    move-object v0, v2

    .line 482
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, v0}, Landroid/telephony/data/IDataService;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    goto :goto_0

    .line 486
    :catch_0
    move-exception v2

    .line 487
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Cannot invoke setDataProfile on data service."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 488
    if-eqz v0, :cond_2

    .line 489
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 493
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 5
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "onCompleteMessage"    # Landroid/os/Message;

    .line 437
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 438
    const-string v0, "Data service not bound."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 439
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 440
    return-void

    .line 443
    :cond_0
    const/4 v0, 0x0

    .line 444
    .local v0, "callback":Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;
    if-eqz p3, :cond_1

    .line 445
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    move-object v0, v2

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, v0}, Landroid/telephony/data/IDataService;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    goto :goto_0

    .line 451
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Cannot invoke setInitialAttachApn on data service."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 453
    if-eqz v0, :cond_2

    .line 454
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 458
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 15
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "onCompleteMessage"    # Landroid/os/Message;

    move-object v1, p0

    .line 366
    move-object/from16 v2, p7

    iget-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v3, 0x4

    if-nez v0, :cond_0

    .line 367
    const-string v0, "Data service not bound."

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 368
    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 369
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    .line 373
    .local v0, "callback":Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;
    if-eqz v2, :cond_1

    .line 374
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    move-object v0, v4

    .line 375
    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .end local v0    # "callback":Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;
    .local v4, "callback":Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;
    :cond_1
    move-object v4, v0

    :try_start_0
    iget-object v6, v1, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object v14, v4

    invoke-interface/range {v6 .. v14}, Landroid/telephony/data/IDataService;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "Cannot invoke setupDataCall on data service."

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 382
    if-eqz v4, :cond_2

    .line 383
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_2
    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 543
    if-eqz p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 546
    :cond_0
    return-void
.end method

.method public unregisterForServiceBindingChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 568
    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 571
    :cond_0
    return-void
.end method
