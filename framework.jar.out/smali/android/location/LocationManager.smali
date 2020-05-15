.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GnssStatusListenerTransport;,
        Landroid/location/LocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field private static final CTA_TAG:Ljava/lang/String; = "CTA"

.field public static final EXTRA_GPS_ENABLED:Ljava/lang/String; = "enabled"

.field public static final FUSED_PROVIDER:Ljava/lang/String; = "fused"

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final HIGH_POWER_REQUEST_CHANGE_ACTION:Ljava/lang/String; = "android.location.HIGH_POWER_REQUEST_CHANGE"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final METADATA_SETTINGS_FOOTER_STRING:Ljava/lang/String; = "com.android.settings.location.FOOTER_STRING"

.field public static final MODE_CHANGED_ACTION:Ljava/lang/String; = "android.location.MODE_CHANGED"

.field public static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings.location.MODE_CHANGING"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field public static final PROVIDERS_CHANGED_ACTION:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field public static final SETTINGS_FOOTER_DISPLAYED_ACTION:Ljava/lang/String; = "com.android.settings.location.DISPLAYED_FOOTER"

.field public static final SETTINGS_FOOTER_REMOVED_ACTION:Ljava/lang/String; = "com.android.settings.location.REMOVED_FOOTER"

.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field private final mBatchedLocationCallbackTransport:Landroid/location/BatchedLocationCallbackTransport;

.field private final mContext:Landroid/content/Context;

.field private final mGnssMeasurementCallbackTransport:Landroid/location/GnssMeasurementCallbackTransport;

.field private final mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

.field private final mGnssNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/location/OnNmeaMessageListener;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mGnssStatus:Landroid/location/GnssStatus;

.field private final mGnssStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/location/GnssStatus$Callback;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mGpsNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/location/GpsStatus$NmeaListener;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/location/GpsStatus$Listener;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/location/LocationListener;",
            "Landroid/location/LocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/location/ILocationManager;

.field private mTimeToFirstFix:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/location/ILocationManager;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGnssStatusListeners:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGnssNmeaListeners:Ljava/util/HashMap;

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    .line 417
    iput-object p2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 418
    iput-object p1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 419
    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, v1, v2}, Landroid/location/GnssMeasurementCallbackTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager;->mGnssMeasurementCallbackTransport:Landroid/location/GnssMeasurementCallbackTransport;

    .line 421
    new-instance v0, Landroid/location/GnssNavigationMessageCallbackTransport;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, v1, v2}, Landroid/location/GnssNavigationMessageCallbackTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager;->mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

    .line 423
    new-instance v0, Landroid/location/BatchedLocationCallbackTransport;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, v1, v2}, Landroid/location/BatchedLocationCallbackTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager;->mBatchedLocationCallbackTransport:Landroid/location/BatchedLocationCallbackTransport;

    .line 426
    return-void
.end method

.method static synthetic access$100(Landroid/location/LocationManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/location/LocationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->logGetLocationInfoForCta(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/location/LocationManager;)Landroid/location/ILocationManager;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager;

    .line 73
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/location/LocationManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager;

    .line 73
    iget v0, p0, Landroid/location/LocationManager;->mTimeToFirstFix:I

    return v0
.end method

.method static synthetic access$602(Landroid/location/LocationManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/LocationManager;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Landroid/location/LocationManager;->mTimeToFirstFix:I

    return p1
.end method

.method static synthetic access$700(Landroid/location/LocationManager;)Landroid/location/GnssStatus;
    .locals 1
    .param p0, "x0"    # Landroid/location/LocationManager;

    .line 73
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssStatus:Landroid/location/GnssStatus;

    return-object v0
.end method

.method static synthetic access$702(Landroid/location/LocationManager;Landroid/location/GnssStatus;)Landroid/location/GnssStatus;
    .locals 0
    .param p0, "x0"    # Landroid/location/LocationManager;
    .param p1, "x1"    # Landroid/location/GnssStatus;

    .line 73
    iput-object p1, p0, Landroid/location/LocationManager;->mGnssStatus:Landroid/location/GnssStatus;

    return-object p1
.end method

.method private static checkCriteria(Landroid/location/Criteria;)V
    .locals 3
    .param p0, "criteria"    # Landroid/location/Criteria;

    .line 2396
    if-eqz p0, :cond_0

    .line 2399
    return-void

    .line 2397
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkGeofence(Landroid/location/Geofence;)V
    .locals 3
    .param p0, "fence"    # Landroid/location/Geofence;

    .line 2423
    if-eqz p0, :cond_0

    .line 2426
    return-void

    .line 2424
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid geofence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkListener(Landroid/location/LocationListener;)V
    .locals 3
    .param p0, "listener"    # Landroid/location/LocationListener;

    .line 2402
    if-eqz p0, :cond_0

    .line 2405
    return-void

    .line 2403
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 2408
    if-eqz p1, :cond_2

    .line 2411
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pending intent must be targeted to package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2414
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    .line 2417
    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2417
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 2415
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    throw v0

    .line 2420
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-void

    .line 2409
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "provider"    # Ljava/lang/String;

    .line 2390
    if-eqz p0, :cond_0

    .line 2393
    return-void

    .line 2391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .line 429
    new-instance v0, Landroid/location/LocationProvider;

    invoke-direct {v0, p1, p2}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    return-object v0
.end method

.method private logGetLocationInfoForCta(Ljava/lang/String;)V
    .locals 3
    .param p1, "func"    # Ljava/lang/String;

    .line 2431
    const-string v0, "CTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@\u8bfb\u53d6\u5b9a\u4f4d\u4fe1\u606f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    return-void
.end method

.method private logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 2435
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2436
    const-string v0, "CTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@\u4f7f\u7528\u5b9a\u4f4d..GPS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_0
    return-void
.end method

.method private requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .line 1047
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1049
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Landroid/location/LocationManager;->wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;

    move-result-object v1

    .line 1055
    .local v1, "transport":Landroid/location/LocationManager$ListenerTransport;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, p1, v1, p4, v0}, Landroid/location/ILocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    nop

    .line 1059
    return-void

    .line 1056
    :catch_0
    move-exception v2

    .line 1057
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;
    .locals 3
    .param p1, "listener"    # Landroid/location/LocationListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1034
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1035
    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 1036
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$ListenerTransport;

    .line 1037
    .local v1, "transport":Landroid/location/LocationManager$ListenerTransport;
    if-nez v1, :cond_1

    .line 1038
    new-instance v2, Landroid/location/LocationManager$ListenerTransport;

    invoke-direct {v2, p0, p1, p2}, Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    move-object v1, v2

    .line 1040
    :cond_1
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    monitor-exit v0

    return-object v1

    .line 1042
    .end local v1    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "fence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 1207
    invoke-direct {p0, p3}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1208
    invoke-static {p2}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1211
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    nop

    .line 1215
    return-void

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2097
    const/4 v0, 0x0

    return v0
.end method

.method public addGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2156
    const/4 v0, 0x0

    return v0
.end method

.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 3
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1875
    const/16 v0, 0x2b

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1878
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1880
    const/4 v0, 0x1

    return v0

    .line 1883
    :cond_0
    :try_start_0
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V

    .line 1884
    .local v0, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1885
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1886
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    .end local v0    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :cond_1
    nop

    .line 1889
    move v0, v1

    .line 1892
    .end local v1    # "result":Z
    .local v0, "result":Z
    return v0

    .line 1888
    .end local v0    # "result":Z
    :catch_0
    move-exception v0

    .line 1889
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .locals 3
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1987
    const/16 v0, 0x2c

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1990
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1992
    const/4 v0, 0x1

    return v0

    .line 1995
    :cond_0
    :try_start_0
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V

    .line 1996
    .local v0, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1997
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1998
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    .end local v0    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :cond_1
    nop

    .line 2001
    move v0, v1

    .line 2004
    .end local v1    # "result":Z
    .local v0, "result":Z
    return v0

    .line 2000
    .end local v0    # "result":Z
    :catch_0
    move-exception v0

    .line 2001
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;

    .line 2036
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z
    .locals 3
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2053
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2055
    const/4 v0, 0x1

    return v0

    .line 2058
    :cond_0
    :try_start_0
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v0, p0, p1, p2}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V

    .line 2060
    .local v0, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 2061
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 2062
    iget-object v2, p0, Landroid/location/LocationManager;->mGnssNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2066
    .end local v0    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :cond_1
    nop

    .line 2065
    move v0, v1

    .line 2068
    .end local v1    # "result":Z
    .local v0, "result":Z
    return v0

    .line 2064
    .end local v0    # "result":Z
    :catch_0
    move-exception v0

    .line 2065
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expiration"    # J
    .param p8, "intent"    # Landroid/app/PendingIntent;

    .line 1156
    const/16 v0, 0x2d

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1157
    invoke-direct {p0, p8}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1158
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gez v0, :cond_0

    const-wide p6, 0x7fffffffffffffffL

    .line 1160
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/location/Geofence;->createCircle(DDF)Landroid/location/Geofence;

    move-result-object v0

    .line 1161
    .local v0, "fence":Landroid/location/Geofence;
    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v1, p6, p7}, Landroid/location/LocationRequest;->setExpireIn(J)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1163
    .local v1, "request":Landroid/location/LocationRequest;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v0, p8, v3}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    nop

    .line 1167
    return-void

    .line 1164
    :catch_0
    move-exception v2

    .line 1165
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requiresNetwork"    # Z
    .param p3, "requiresSatellite"    # Z
    .param p4, "requiresCell"    # Z
    .param p5, "hasMonetaryCost"    # Z
    .param p6, "supportsAltitude"    # Z
    .param p7, "supportsSpeed"    # Z
    .param p8, "supportsBearing"    # Z
    .param p9, "powerRequirement"    # I
    .param p10, "accuracy"    # I

    move-object v1, p0

    move-object v2, p1

    .line 1499
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move-object v3, v0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v3 .. v12}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 1502
    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    const-string v0, "[^a-zA-Z0-9]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    :try_start_0
    iget-object v0, v1, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, v1, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    nop

    .line 1511
    return-void

    .line 1508
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1503
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "provider name contains illegal character: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 1618
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    nop

    .line 1622
    return-void

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 1580
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    nop

    .line 1584
    return-void

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 1659
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    nop

    .line 1663
    return-void

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public flushGnssBatch()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2327
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->flushGnssBatch(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2330
    nop

    .line 2331
    return-void

    .line 2328
    :catch_0
    move-exception v0

    .line 2329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 441
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .locals 2

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .line 528
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 530
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGnssBatchSize()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2276
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->getGnssBatchSize(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2277
    :catch_0
    move-exception v0

    .line 2278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .locals 2

    .line 2259
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2260
    :catch_0
    move-exception v0

    .line 2261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGnssYearOfHardware()I
    .locals 2

    .line 2241
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssYearOfHardware()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2242
    :catch_0
    move-exception v0

    .line 2243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 2
    .param p1, "status"    # Landroid/location/GpsStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2221
    if-nez p1, :cond_0

    .line 2222
    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    move-object p1, v0

    .line 2226
    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssStatus:Landroid/location/GnssStatus;

    if-eqz v0, :cond_1

    .line 2227
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssStatus:Landroid/location/GnssStatus;

    iget v1, p0, Landroid/location/LocationManager;->mTimeToFirstFix:I

    invoke-virtual {p1, v0, v1}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GnssStatus;I)V

    .line 2229
    :cond_1
    return-object p1
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 1467
    const-string v0, "getLastKnownLocation"

    invoke-direct {p0, v0}, Landroid/location/LocationManager;->logGetLocationInfoForCta(Ljava/lang/String;)V

    .line 1469
    const/16 v0, 0x2e

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1470
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "packageName":Ljava/lang/String;
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1476
    .local v1, "request":Landroid/location/LocationRequest;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1, v0}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1477
    :catch_0
    move-exception v2

    .line 1478
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 3

    .line 1436
    const-string v0, "getLastLocation"

    invoke-direct {p0, v0}, Landroid/location/LocationManager;->logGetLocationInfoForCta(Ljava/lang/String;)V

    .line 1438
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1441
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1442
    :catch_0
    move-exception v1

    .line 1443
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 474
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 476
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    .line 477
    .local v0, "properties":Lcom/android/internal/location/ProviderProperties;
    if-nez v0, :cond_0

    .line 478
    const/4 v1, 0x0

    return-object v1

    .line 480
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/location/LocationManager;->createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 481
    .end local v0    # "properties":Lcom/android/internal/location/ProviderProperties;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 2
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 497
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 499
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 2
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public injectLocation(Landroid/location/Location;)Z
    .locals 2
    .param p1, "newLocation"    # Landroid/location/Location;

    .line 1027
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->injectLocation(Landroid/location/Location;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isLocationEnabled()Z
    .locals 1

    .line 1300
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isLocationEnabledForUser(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1332
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->isLocationEnabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 1359
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->isProviderEnabledForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1386
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1389
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerGnssBatchedLocationCallback(JZLandroid/location/BatchedLocationCallback;Landroid/os/Handler;)Z
    .locals 2
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z
    .param p4, "callback"    # Landroid/location/BatchedLocationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2307
    iget-object v0, p0, Landroid/location/LocationManager;->mBatchedLocationCallbackTransport:Landroid/location/BatchedLocationCallbackTransport;

    invoke-virtual {v0, p4, p5}, Landroid/location/BatchedLocationCallbackTransport;->add(Ljava/lang/Object;Landroid/os/Handler;)Z

    .line 2310
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/location/ILocationManager;->startGnssBatch(JZLjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2311
    :catch_0
    move-exception v0

    .line 2312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 2108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2121
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssMeasurementCallbackTransport:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-virtual {v0, p1, p2}, Landroid/location/GnssMeasurementCallbackTransport;->add(Ljava/lang/Object;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 2181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;Landroid/os/Handler;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2194
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

    invoke-virtual {v0, p1, p2}, Landroid/location/GnssNavigationMessageCallbackTransport;->add(Ljava/lang/Object;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;

    .line 1924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z
    .locals 3
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1940
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1942
    const/4 v0, 0x1

    return v0

    .line 1945
    :cond_0
    :try_start_0
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v0, p0, p1, p2}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V

    .line 1947
    .local v0, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1948
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1949
    iget-object v2, p0, Landroid/location/LocationManager;->mGnssStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    .end local v0    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :cond_1
    nop

    .line 1952
    move v0, v1

    .line 1955
    .end local v1    # "result":Z
    .local v0, "result":Z
    return v0

    .line 1951
    .end local v0    # "result":Z
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeAllGeofences(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 1284
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1285
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1288
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, v0}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    nop

    .line 1292
    return-void

    .line 1289
    :catch_0
    move-exception v1

    .line 1290
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 1261
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1262
    invoke-static {p1}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1263
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    nop

    .line 1270
    return-void

    .line 1267
    :catch_0
    move-exception v1

    .line 1268
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2135
    return-void
.end method

.method public removeGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2171
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1904
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1905
    .local v0, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v0, :cond_0

    .line 1906
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, v0}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    .end local v0    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :cond_0
    nop

    .line 1911
    return-void

    .line 1908
    :catch_0
    move-exception v0

    .line 1909
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2016
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 2017
    .local v0, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v0, :cond_0

    .line 2018
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, v0}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    .end local v0    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :cond_0
    nop

    .line 2023
    return-void

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;

    .line 2078
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 2079
    .local v0, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v0, :cond_0

    .line 2080
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, v0}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2084
    .end local v0    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :cond_0
    nop

    .line 2085
    return-void

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 1234
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1235
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, v0}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    nop

    .line 1242
    return-void

    .line 1239
    :catch_0
    move-exception v1

    .line 1240
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 1525
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    nop

    .line 1529
    return-void

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 1096
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1097
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, v0}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    nop

    .line 1104
    return-void

    .line 1101
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/LocationListener;

    .line 1071
    invoke-static {p1}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 1072
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 1076
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$ListenerTransport;

    .line 1077
    .local v2, "transport":Landroid/location/LocationManager$ListenerTransport;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    if-nez v2, :cond_0

    return-void

    .line 1081
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1084
    nop

    .line 1085
    return-void

    .line 1082
    :catch_0
    move-exception v1

    .line 1083
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1077
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 770
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 771
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 772
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 774
    const/4 v0, 0x0

    invoke-static {p4, p1, p2, p3, v0}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 777
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "requestLocationUpdates"

    invoke-direct {p0, v1, v2}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 780
    return-void
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 3
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .line 632
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 633
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 634
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 636
    const/4 v0, 0x0

    invoke-static {p4, p1, p2, p3, v0}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 639
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "requestLocationUpdates"

    invoke-direct {p0, v1, v2}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 642
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 998
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string/jumbo v1, "requestLocationUpdates"

    invoke-direct {p0, v0, v1}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1001
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1002
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 1003
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 966
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string/jumbo v1, "requestLocationUpdates"

    invoke-direct {p0, v0, v1}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 969
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 970
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 971
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 665
    const-string/jumbo v0, "requestLocationUpdates"

    invoke-direct {p0, p1, v0}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 668
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 669
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 671
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 673
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 674
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;

    .line 560
    const-string/jumbo v0, "requestLocationUpdates"

    invoke-direct {p0, p1, v0}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 563
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 564
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 566
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 568
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, v1, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 569
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .line 596
    const-string/jumbo v0, "requestLocationUpdates"

    invoke-direct {p0, p1, v0}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/16 v0, 0x2f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 599
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 600
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 602
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 604
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 605
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 892
    const/16 v0, 0x40

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 893
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 894
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 896
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 899
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "requestSingleUpdate"

    invoke-direct {p0, v1, v2}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 902
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 4
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 837
    const/16 v0, 0x40

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 838
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 839
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 841
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 844
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "requestSingleUpdate"

    invoke-direct {p0, v1, v2}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 847
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 865
    const-string/jumbo v0, "requestSingleUpdate"

    invoke-direct {p0, p1, v0}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const/16 v0, 0x40

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 868
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 869
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 871
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 873
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 874
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 804
    const-string/jumbo v0, "requestSingleUpdate"

    invoke-direct {p0, p1, v0}, Landroid/location/LocationManager;->logUseGpsForCtaIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/16 v0, 0x40

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 807
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 808
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 810
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 812
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 813
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2367
    const/16 v0, 0x30

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2369
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2370
    :catch_0
    move-exception v0

    .line 2371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 2
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .line 2383
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->sendNiResponse(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2384
    :catch_0
    move-exception v0

    .line 2385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setLocationEnabledForUser(ZLandroid/os/UserHandle;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1315
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->setLocationEnabledForUser(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    nop

    .line 1319
    return-void

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setProviderEnabledForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1410
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1413
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 1414
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1413
    invoke-interface {v0, p1, p2, v1}, Landroid/location/ILocationManager;->setProviderEnabledForUser(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1415
    :catch_0
    move-exception v0

    .line 1416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1600
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    nop

    .line 1604
    return-void

    .line 1601
    :catch_0
    move-exception v0

    .line 1602
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;

    .line 1548
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete location object, missing timestamp or accuracy? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    .line 1553
    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1554
    invoke-virtual {p2}, Landroid/location/Location;->makeComplete()V

    goto :goto_0

    .line 1557
    :cond_0
    throw v0

    .line 1562
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    nop

    .line 1566
    return-void

    .line 1563
    :catch_0
    move-exception v0

    .line 1564
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J

    .line 1640
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 1641
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1640
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/location/ILocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    nop

    .line 1645
    return-void

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterGnssBatchedLocationCallback(Landroid/location/BatchedLocationCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/location/BatchedLocationCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2346
    iget-object v0, p0, Landroid/location/LocationManager;->mBatchedLocationCallbackTransport:Landroid/location/BatchedLocationCallbackTransport;

    invoke-virtual {v0, p1}, Landroid/location/BatchedLocationCallbackTransport;->remove(Ljava/lang/Object;)V

    .line 2349
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->stopGnssBatch()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2350
    :catch_0
    move-exception v0

    .line 2351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 2143
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssMeasurementCallbackTransport:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-virtual {v0, p1}, Landroid/location/GnssMeasurementCallbackTransport;->remove(Ljava/lang/Object;)V

    .line 2144
    return-void
.end method

.method public unregisterGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 2204
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

    invoke-virtual {v0, p1}, Landroid/location/GnssNavigationMessageCallbackTransport;->remove(Ljava/lang/Object;)V

    .line 2205
    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;

    .line 1965
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1966
    .local v0, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v0, :cond_0

    .line 1967
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, v0}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1971
    .end local v0    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :cond_0
    nop

    .line 1972
    return-void

    .line 1969
    :catch_0
    move-exception v0

    .line 1970
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
