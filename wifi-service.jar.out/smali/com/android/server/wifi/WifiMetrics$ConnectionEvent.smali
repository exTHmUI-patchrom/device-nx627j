.class Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionEvent"
.end annotation


# static fields
.field public static final FAILURE_ASSOCIATION_REJECTION:I = 0x2

.field public static final FAILURE_ASSOCIATION_TIMED_OUT:I = 0xb

.field public static final FAILURE_AUTHENTICATION_FAILURE:I = 0x3

.field public static final FAILURE_CONNECT_NETWORK_FAILED:I = 0x5

.field public static final FAILURE_DHCP:I = 0xa

.field public static final FAILURE_NETWORK_DISCONNECTION:I = 0x6

.field public static final FAILURE_NEW_CONNECTION_ATTEMPT:I = 0x7

.field public static final FAILURE_NONE:I = 0x1

.field public static final FAILURE_REDUNDANT_CONNECTION_ATTEMPT:I = 0x8

.field public static final FAILURE_ROAM_TIMEOUT:I = 0x9

.field public static final FAILURE_SSID_TEMP_DISABLED:I = 0x4

.field public static final FAILURE_UNKNOWN:I


# instance fields
.field private mConfigBssid:Ljava/lang/String;

.field private mConfigSsid:Ljava/lang/String;

.field mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

.field private mRealEndTime:J

.field private mRealStartTime:J

.field mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

.field private mScreenOn:Z

.field private mWifiState:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiMetrics;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMetrics;

    .line 318
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 320
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealEndTime:J

    .line 321
    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealStartTime:J

    .line 322
    new-instance v0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;-><init>(Lcom/android/server/wifi/WifiMetrics;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    .line 323
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->access$400(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    .line 324
    const-string v0, "<NULL>"

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    .line 325
    const-string v0, "<NULL>"

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mWifiState:I

    .line 327
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mScreenOn:Z

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiMetrics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiMetrics;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiMetrics$1;

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;-><init>(Lcom/android/server/wifi/WifiMetrics;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .param p1, "x1"    # Z

    .line 276
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 276
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealEndTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .param p1, "x1"    # J

    .line 276
    iput-wide p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealEndTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 276
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 276
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 276
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 276
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    .line 276
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealStartTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .param p1, "x1"    # J

    .line 276
    iput-wide p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRealStartTime:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .param p1, "x1"    # I

    .line 276
    iput p1, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mWifiState:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 334
    .local v1, "c":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics;->access$000(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 335
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget-wide v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 336
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget-wide v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const-string v3, "            <null>"

    goto :goto_0

    .line 337
    :cond_0
    const-string v3, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    const/4 v5, 0x4

    aput-object v1, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 336
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v3, ", SSID="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigSsid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v3, ", BSSID="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConfigBssid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v3, ", durationMillis="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    const-string v3, ", roamType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    packed-switch v3, :pswitch_data_0

    .line 362
    const-string v3, "ROAM_UNKNOWN"

    goto :goto_1

    .line 359
    :pswitch_0
    const-string v3, "ROAM_UNRELATED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    goto :goto_2

    .line 356
    :pswitch_1
    const-string v3, "ROAM_USER_SELECTED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    goto :goto_2

    .line 353
    :pswitch_2
    const-string v3, "ROAM_ENTERPRISE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    goto :goto_2

    .line 350
    :pswitch_3
    const-string v3, "ROAM_DBDC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    goto :goto_2

    .line 347
    :pswitch_4
    const-string v3, "ROAM_NONE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    goto :goto_2

    .line 362
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :goto_2
    const-string v3, ", connectionResult="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    const-string v3, ", level2FailureCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    packed-switch v3, :pswitch_data_1

    .line 402
    const-string v3, "UNKNOWN"

    goto :goto_3

    .line 399
    :pswitch_5
    const-string v3, "ASSOCIATION_TIMED_OUT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    goto :goto_4

    .line 396
    :pswitch_6
    const-string v3, "DHCP"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    goto :goto_4

    .line 393
    :pswitch_7
    const-string v3, "ROAM_TIMEOUT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    goto :goto_4

    .line 390
    :pswitch_8
    const-string v3, "REDUNDANT_CONNECTION_ATTEMPT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    goto :goto_4

    .line 387
    :pswitch_9
    const-string v3, "NEW_CONNECTION_ATTEMPT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    goto :goto_4

    .line 384
    :pswitch_a
    const-string v3, "NETWORK_DISCONNECTION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    goto :goto_4

    .line 381
    :pswitch_b
    const-string v3, "CONNECT_NETWORK_FAILED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    goto :goto_4

    .line 378
    :pswitch_c
    const-string v3, "SSID_TEMP_DISABLED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    goto :goto_4

    .line 375
    :pswitch_d
    const-string v3, "AUTHENTICATION_FAILURE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    goto :goto_4

    .line 372
    :pswitch_e
    const-string v3, "ASSOCIATION_REJECTION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    goto :goto_4

    .line 369
    :pswitch_f
    const-string v3, "NONE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    goto :goto_4

    .line 402
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :goto_4
    const-string v3, ", connectivityLevelFailureCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    packed-switch v3, :pswitch_data_2

    .line 420
    const-string v3, "UNKNOWN"

    goto :goto_5

    .line 417
    :pswitch_10
    const-string v3, "UNWANTED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    goto :goto_6

    .line 414
    :pswitch_11
    const-string v3, "NO_INTERNET"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    goto :goto_6

    .line 411
    :pswitch_12
    const-string v3, "DHCP"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    goto :goto_6

    .line 408
    :pswitch_13
    const-string v3, "NONE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    goto :goto_6

    .line 420
    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_6
    const-string v3, ", signalStrength="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget v3, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const-string v3, ", wifiState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mWifiState:I

    packed-switch v3, :pswitch_data_3

    .line 437
    const-string v3, "WIFI_UNKNOWN"

    goto :goto_7

    .line 434
    :pswitch_14
    const-string v3, "WIFI_ASSOCIATED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    goto :goto_8

    .line 431
    :pswitch_15
    const-string v3, "WIFI_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    goto :goto_8

    .line 428
    :pswitch_16
    const-string v3, "WIFI_DISABLED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    goto :goto_8

    .line 437
    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :goto_8
    const-string v3, ", screenOn="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mScreenOn:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 442
    const-string v3, ". mRouterFingerprint: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 444
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method
