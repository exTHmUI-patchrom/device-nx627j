.class public Lcom/android/server/wifi/ScanRequestProxy;
.super Ljava/lang/Object;
.source "ScanRequestProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field public static final SCAN_REQUEST_THROTTLE_INTERVAL_BG_APPS_MS:I = 0x1b7740
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCAN_REQUEST_THROTTLE_MAX_IN_TIME_WINDOW_FG_APPS:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCAN_REQUEST_THROTTLE_TIME_WINDOW_FG_APPS_MS:I = 0x1d4c0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiScanRequestProxy"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private mIsScanProcessingComplete:Z

.field private final mLastScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScanTimestampForBgApps:J

.field private final mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScanningForHiddenNetworksEnabled:Z

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/app/ActivityManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/Clock;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p3, "activityManager"    # Landroid/app/ActivityManager;
    .param p4, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p5, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p6, "wifiPermissionUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p7, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p8, "clock"    # Lcom/android/server/wifi/Clock;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mScanningForHiddenNetworksEnabled:Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mIsScanProcessingComplete:Z

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampForBgApps:J

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanResults:Ljava/util/List;

    .line 153
    iput-object p1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mAppOps:Landroid/app/AppOpsManager;

    .line 155
    iput-object p3, p0, Lcom/android/server/wifi/ScanRequestProxy;->mActivityManager:Landroid/app/ActivityManager;

    .line 156
    iput-object p4, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 157
    iput-object p5, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 158
    iput-object p6, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 159
    iput-object p7, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 160
    iput-object p8, p0, Lcom/android/server/wifi/ScanRequestProxy;->mClock:Lcom/android/server/wifi/Clock;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/ScanRequestProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanRequestProxy;

    .line 66
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/ScanRequestProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/ScanRequestProxy;
    .param p1, "x1"    # Z

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScanRequestProxy;->sendScanResultBroadcastIfScanProcessingNotComplete(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/ScanRequestProxy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/ScanRequestProxy;

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanResults:Ljava/util/List;

    return-object v0
.end method

.method private getOrCreateScanRequestTimestampsForForegroundApp(ILjava/lang/String;)Ljava/util/LinkedList;
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 257
    .local v0, "uidAndPackageNamePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    .line 258
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 259
    .local v1, "scanRequestTimestamps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    if-nez v1, :cond_0

    .line 260
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 261
    iget-object v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_0
    return-object v1
.end method

.method private isRequestFromBackground(ILjava/lang/String;)Z
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 313
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x7d

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 316
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    return v2

    .line 316
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private retrieveWifiScannerIfNecessary()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendScanResultBroadcast(Z)V
    .locals 5
    .param p1, "scanSucceeded"    # Z

    .line 209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 211
    .local v0, "callingIdentity":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    const-string v3, "resultsUpdated"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    iget-object v3, p0, Lcom/android/server/wifi/ScanRequestProxy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    nop

    .line 219
    return-void

    .line 217
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendScanResultBroadcastIfScanProcessingNotComplete(Z)V
    .locals 2
    .param p1, "scanSucceeded"    # Z

    .line 196
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mIsScanProcessingComplete:Z

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "WifiScanRequestProxy"

    const-string v1, "No ongoing scan request. Don\'t send scan broadcast."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScanRequestProxy;->sendScanResultBroadcast(Z)V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mIsScanProcessingComplete:Z

    .line 202
    return-void
.end method

.method private sendScanResultFailureBroadcastToPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 228
    .local v0, "callingIdentity":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    const-string v3, "resultsUpdated"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v3, p0, Lcom/android/server/wifi/ScanRequestProxy;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 236
    nop

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private shouldScanRequestBeThrottledForApp(ILjava/lang/String;)Z
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/ScanRequestProxy;->isRequestFromBackground(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/android/server/wifi/ScanRequestProxy;->shouldScanRequestBeThrottledForBackgroundApp()Z

    move-result v0

    .line 328
    .local v0, "isThrottled":Z
    if-eqz v0, :cond_3

    .line 329
    iget-boolean v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 330
    const-string v1, "WifiScanRequestProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background scan app request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementExternalBackgroundAppOneshotScanRequestsThrottledCount()V

    goto :goto_0

    .line 336
    .end local v0    # "isThrottled":Z
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/ScanRequestProxy;->shouldScanRequestBeThrottledForForegroundApp(ILjava/lang/String;)Z

    move-result v0

    .line 337
    .restart local v0    # "isThrottled":Z
    if-eqz v0, :cond_3

    .line 338
    iget-boolean v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_2

    .line 339
    const-string v1, "WifiScanRequestProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foreground scan app request ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementExternalForegroundAppOneshotScanRequestsThrottledCount()V

    .line 345
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementExternalAppOneshotScanRequestsCount()V

    .line 346
    return v0
.end method

.method private shouldScanRequestBeThrottledForBackgroundApp()Z
    .locals 8

    .line 291
    iget-wide v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampForBgApps:J

    .line 292
    .local v0, "lastScanMs":J
    iget-object v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    .line 293
    .local v2, "elapsedRealtime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    sub-long v4, v2, v0

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 295
    const/4 v4, 0x1

    return v4

    .line 298
    :cond_0
    iput-wide v2, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampForBgApps:J

    .line 299
    const/4 v4, 0x0

    return v4
.end method

.method private shouldScanRequestBeThrottledForForegroundApp(ILjava/lang/String;)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 274
    nop

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/ScanRequestProxy;->getOrCreateScanRequestTimestampsForForegroundApp(ILjava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 276
    .local v0, "scanRequestTimestamps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 278
    .local v1, "currentTimeMillis":J
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/ScanRequestProxy;->trimPastScanRequestTimesForForegroundApp(Ljava/util/List;J)V

    .line 279
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 280
    const/4 v3, 0x1

    return v3

    .line 283
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 284
    const/4 v3, 0x0

    return v3
.end method

.method private trimPastScanRequestTimesForForegroundApp(Ljava/util/List;J)V
    .locals 6
    .param p2, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 241
    .local p1, "scanRequestTimestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 242
    .local v0, "timestampsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 244
    .local v1, "scanRequestTimeMillis":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 251
    .end local v1    # "scanRequestTimeMillis":Ljava/lang/Long;
    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public clearScanRequestTimestampsForApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 421
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "WifiScanRequestProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing scan request timestamps for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void
.end method

.method public clearScanResults()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampForBgApps:J

    .line 411
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanTimestampsForFgApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 412
    return-void
.end method

.method public enableScanningForHiddenNetworks(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 175
    iget-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "WifiScanRequestProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanning for hidden networks is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mScanningForHiddenNetworksEnabled:Z

    .line 179
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 167
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mVerboseLoggingEnabled:Z

    .line 168
    return-void
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mLastScanResults:Ljava/util/List;

    return-object v0
.end method

.method public startScan(ILjava/lang/String;)Z
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 356
    invoke-direct {p0}, Lcom/android/server/wifi/ScanRequestProxy;->retrieveWifiScannerIfNecessary()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 357
    const-string v0, "WifiScanRequestProxy"

    const-string v2, "Failed to retrieve wifiscanner"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ScanRequestProxy;->sendScanResultFailureBroadcastToPackage(Ljava/lang/String;)V

    .line 359
    return v1

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 362
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSettingsPermission(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 363
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkNetworkSetupWizardPermission(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 365
    .local v0, "fromSettingsOrSetupWizard":Z
    :goto_1
    if-nez v0, :cond_3

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/ScanRequestProxy;->shouldScanRequestBeThrottledForApp(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    const-string v2, "WifiScanRequestProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan request from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " throttled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ScanRequestProxy;->sendScanResultFailureBroadcastToPackage(Ljava/lang/String;)V

    .line 369
    return v1

    .line 372
    :cond_3
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, p1}, Landroid/os/WorkSource;-><init>(I)V

    .line 375
    .local v3, "workSource":Landroid/os/WorkSource;
    new-instance v4, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v4}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 377
    .local v4, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-eqz v0, :cond_4

    .line 378
    const/4 v5, 0x2

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 381
    :cond_4
    const/4 v5, 0x7

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 382
    const/4 v5, 0x3

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 384
    iget-boolean v5, p0, Lcom/android/server/wifi/ScanRequestProxy;->mScanningForHiddenNetworksEnabled:Z

    if-eqz v5, :cond_5

    .line 386
    iget-object v5, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 387
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->retrieveHiddenNetworkList()Ljava/util/List;

    move-result-object v5

    .line 388
    .local v5, "hiddenNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    nop

    .line 389
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 388
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iput-object v6, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 391
    .end local v5    # "hiddenNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;>;"
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/ScanRequestProxy;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    new-instance v6, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/wifi/ScanRequestProxy$ScanRequestProxyScanListener;-><init>(Lcom/android/server/wifi/ScanRequestProxy;Lcom/android/server/wifi/ScanRequestProxy$1;)V

    invoke-virtual {v5, v4, v6, v3}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 392
    iput-boolean v1, p0, Lcom/android/server/wifi/ScanRequestProxy;->mIsScanProcessingComplete:Z

    .line 393
    return v2
.end method
