.class public Landroid/net/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ServiceHandler;,
        Landroid/net/wifi/WifiScanner$OperationResult;,
        Landroid/net/wifi/WifiScanner$HotlistSettings;,
        Landroid/net/wifi/WifiScanner$BssidListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeSettings;,
        Landroid/net/wifi/WifiScanner$BssidInfo;,
        Landroid/net/wifi/WifiScanner$PnoScanListener;,
        Landroid/net/wifi/WifiScanner$ScanListener;,
        Landroid/net/wifi/WifiScanner$PnoSettings;,
        Landroid/net/wifi/WifiScanner$ParcelableScanResults;,
        Landroid/net/wifi/WifiScanner$ParcelableScanData;,
        Landroid/net/wifi/WifiScanner$ScanData;,
        Landroid/net/wifi/WifiScanner$ScanSettings;,
        Landroid/net/wifi/WifiScanner$ChannelSpec;,
        Landroid/net/wifi/WifiScanner$ActionListener;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27000

.field public static final CMD_DEREGISTER_SCAN_LISTENER:I = 0x2701c

.field public static final CMD_FULL_SCAN_RESULT:I = 0x27014

.field public static final CMD_GET_SCAN_RESULTS:I = 0x27004

.field public static final CMD_GET_SINGLE_SCAN_RESULTS:I = 0x2701d

.field public static final CMD_OP_FAILED:I = 0x27012

.field public static final CMD_OP_SUCCEEDED:I = 0x27011

.field public static final CMD_PNO_NETWORK_FOUND:I = 0x2701a

.field public static final CMD_REGISTER_SCAN_LISTENER:I = 0x2701b

.field public static final CMD_SCAN_RESULT:I = 0x27005

.field public static final CMD_SINGLE_SCAN_COMPLETED:I = 0x27017

.field public static final CMD_START_BACKGROUND_SCAN:I = 0x27002

.field public static final CMD_START_PNO_SCAN:I = 0x27018

.field public static final CMD_START_SINGLE_SCAN:I = 0x27015

.field public static final CMD_STOP_BACKGROUND_SCAN:I = 0x27003

.field public static final CMD_STOP_PNO_SCAN:I = 0x27019

.field public static final CMD_STOP_SINGLE_SCAN:I = 0x27016

.field private static final DBG:Z = false

.field public static final GET_AVAILABLE_CHANNELS_EXTRA:Ljava/lang/String; = "Channels"

.field private static final INVALID_KEY:I = 0x0

.field public static final MAX_SCAN_PERIOD_MS:I = 0xfa000

.field public static final MIN_SCAN_PERIOD_MS:I = 0x3e8

.field public static final PNO_PARAMS_PNO_SETTINGS_KEY:Ljava/lang/String; = "PnoSettings"

.field public static final PNO_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final REASON_DUPLICATE_REQEUST:I = -0x5

.field public static final REASON_INVALID_LISTENER:I = -0x2

.field public static final REASON_INVALID_REQUEST:I = -0x3

.field public static final REASON_NOT_AUTHORIZED:I = -0x4

.field public static final REASON_SUCCEEDED:I = 0x0

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final REPORT_EVENT_AFTER_BUFFER_FULL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_EVENT_AFTER_EACH_SCAN:I = 0x1

.field public static final REPORT_EVENT_FULL_SCAN_RESULT:I = 0x2

.field public static final REPORT_EVENT_NO_BATCH:I = 0x4

.field public static final SCAN_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final SCAN_PARAMS_WORK_SOURCE_KEY:Ljava/lang/String; = "WorkSource"

.field private static final TAG:Ljava/lang/String; = "WifiScanner"

.field public static final TYPE_HIGH_ACCURACY:I = 0x2

.field public static final TYPE_LOW_LATENCY:I = 0x0

.field public static final TYPE_LOW_POWER:I = 0x1

.field public static final WIFI_BAND_24_GHZ:I = 0x1

.field public static final WIFI_BAND_5_GHZ:I = 0x2

.field public static final WIFI_BAND_5_GHZ_DFS_ONLY:I = 0x4

.field public static final WIFI_BAND_5_GHZ_WITH_DFS:I = 0x6

.field public static final WIFI_BAND_BOTH:I = 0x3

.field public static final WIFI_BAND_BOTH_WITH_DFS:I = 0x7

.field public static final WIFI_BAND_UNSPECIFIED:I


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mContext:Landroid/content/Context;

.field private final mInternalHandler:Landroid/os/Handler;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mService:Landroid/net/wifi/IWifiScanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiScanner;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1172
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    .line 1174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    .line 1175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    .line 1191
    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 1192
    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    .line 1194
    const/4 v0, 0x0

    .line 1196
    .local v0, "messenger":Landroid/os/Messenger;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v1}, Landroid/net/wifi/IWifiScanner;->getMessenger()Landroid/os/Messenger;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1199
    nop

    .line 1201
    if-eqz v0, :cond_0

    .line 1205
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1207
    new-instance v1, Landroid/net/wifi/WifiScanner$ServiceHandler;

    invoke-direct {v1, p0, p3}, Landroid/net/wifi/WifiScanner$ServiceHandler;-><init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    .line 1208
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 1211
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x11001

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1212
    return-void

    .line 1202
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getMessenger() returned null!  This is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1197
    :catch_0
    move-exception v1

    .line 1198
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiScanner;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiScanner;
    .param p1, "x1"    # I

    .line 50
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiScanner;
    .param p1, "x1"    # I

    .line 50
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I
    .locals 7
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ActionListener;

    .line 1223
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1228
    .local v1, "keyExists":Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    move-result v3

    .line 1229
    .local v3, "key":I
    if-eqz v1, :cond_1

    .line 1231
    new-instance v4, Landroid/net/wifi/WifiScanner$OperationResult;

    const/4 v5, -0x5

    const-string v6, "Outstanding request with same key not stopped yet"

    invoke-direct {v4, v5, v6}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    .line 1233
    .local v4, "operationResult":Landroid/net/wifi/WifiScanner$OperationResult;
    iget-object v5, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    const v6, 0x27012

    invoke-static {v5, v6, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1235
    .local v5, "message":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1236
    monitor-exit v0

    return v2

    .line 1238
    .end local v4    # "operationResult":Landroid/net/wifi/WifiScanner$OperationResult;
    .end local v5    # "message":Landroid/os/Message;
    :cond_1
    monitor-exit v0

    return v3

    .line 1240
    .end local v1    # "keyExists":Z
    .end local v3    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I

    .line 1256
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1257
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1258
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1259
    .local v1, "listener":Ljava/lang/Object;
    monitor-exit v0

    return-object v1

    .line 1260
    .end local v1    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;

    .line 1264
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1265
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1266
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    .line 1267
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1268
    monitor-exit v1

    return v0

    .line 1270
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1272
    .end local v2    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .line 1244
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1246
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1248
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    .line 1249
    .local v1, "key":I
    if-eqz v1, :cond_1

    .line 1250
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1251
    monitor-exit v0

    .line 1252
    return v1

    .line 1251
    .end local v1    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .line 1285
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 1286
    .local v0, "key":I
    if-nez v0, :cond_0

    .line 1287
    const-string v1, "WifiScanner"

    const-string/jumbo v2, "listener cannot be found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    return v0

    .line 1290
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1291
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1292
    monitor-exit v1

    return v0

    .line 1293
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .line 1276
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1277
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1278
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1279
    .local v1, "listener":Ljava/lang/Object;
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1280
    monitor-exit v0

    return-object v1

    .line 1281
    .end local v1    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V
    .locals 4
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "key"    # I

    .line 880
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 882
    .local v0, "pnoParams":Landroid/os/Bundle;
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 883
    const-string v1, "ScanSettings"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 884
    const-string v1, "PnoSettings"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 885
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 886
    return-void
.end method

.method private validateChannel()V
    .locals 2

    .line 1215
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1217
    return-void

    .line 1215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public configureWifiChange(IIIII[Landroid/net/wifi/WifiScanner$BssidInfo;)V
    .locals 1
    .param p1, "rssiSampleSize"    # I
    .param p2, "lostApSampleSize"    # I
    .param p3, "unchangedSampleSize"    # I
    .param p4, "minApsBreachingThreshold"    # I
    .param p5, "periodInMs"    # I
    .param p6, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1011
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1056
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public deregisterScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 750
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 752
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 753
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 754
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x2701c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 755
    return-void
.end method

.method public getAvailableChannels(I)Ljava/util/List;
    .locals 2
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiScanner;->getAvailableChannels(I)Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "Channels"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 108
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getScanResults()Z
    .locals 4

    .line 809
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 810
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x0

    const v2, 0x27004

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 811
    .local v0, "reply":Landroid/os/Message;
    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x27011

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public getSingleScanResults()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 867
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 868
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2701d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v0

    .line 869
    .local v0, "reply":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x27011

    if-ne v1, v2, :cond_0

    .line 870
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 872
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 873
    .local v1, "result":Landroid/net/wifi/WifiScanner$OperationResult;
    const-string v2, "WifiScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retrieving SingleScan results reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 736
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 738
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 739
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 740
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x2701b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 741
    return-void
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 767
    return-void
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 780
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 782
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 783
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 784
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 785
    .local v1, "scanParams":Landroid/os/Bundle;
    const-string v2, "ScanSettings"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 786
    const-string v2, "WorkSource"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 787
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 788
    return-void
.end method

.method public startConnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 2
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;

    .line 900
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string/jumbo v0, "pnoSettings cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 903
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 904
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 905
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 906
    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    .line 907
    return-void
.end method

.method public startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 2
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "pnoSettings"    # Landroid/net/wifi/WifiScanner$PnoSettings;
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$PnoScanListener;

    .line 921
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string/jumbo v0, "pnoSettings cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 924
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 925
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 926
    const/4 v1, 0x0

    iput-boolean v1, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 927
    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    .line 928
    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 824
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 825
    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 838
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result v0

    .line 840
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 841
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 842
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 843
    .local v1, "scanParams":Landroid/os/Bundle;
    const-string v2, "ScanSettings"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 844
    const-string v2, "WorkSource"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 845
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 846
    return-void
.end method

.method public startTrackingBssids([Landroid/net/wifi/WifiScanner$BssidInfo;ILandroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 1
    .param p1, "bssidInfos"    # [Landroid/net/wifi/WifiScanner$BssidInfo;
    .param p2, "apLostThreshold"    # I
    .param p3, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1037
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 797
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 799
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 800
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 801
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 802
    return-void
.end method

.method public stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 937
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 939
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 940
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 941
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 942
    return-void
.end method

.method public stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$ScanListener;

    .line 855
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 857
    .local v0, "key":I
    if-nez v0, :cond_0

    return-void

    .line 858
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 859
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 860
    return-void
.end method

.method public stopTrackingBssids(Landroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$BssidListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public stopTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/wifi/WifiScanner$WifiChangeListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1048
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
