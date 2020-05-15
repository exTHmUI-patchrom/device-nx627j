.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final CPU_CLUSTER_POWER_COUNT:Ljava/lang/String; = "cpu.cluster_power.cluster"

.field private static final CPU_CORE_POWER_PREFIX:Ljava/lang/String; = "cpu.core_power.cluster"

.field private static final CPU_CORE_SPEED_PREFIX:Ljava/lang/String; = "cpu.core_speeds.cluster"

.field private static final CPU_PER_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field public static final POWER_AMBIENT_DISPLAY:Ljava/lang/String; = "ambient.on"

.field public static final POWER_AUDIO:Ljava/lang/String; = "audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SUSPEND:Ljava/lang/String; = "cpu.suspend"

.field public static final POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_GPS_OPERATING_VOLTAGE:Ljava/lang/String; = "gps.voltage"

.field public static final POWER_GPS_SIGNAL_QUALITY_BASED:Ljava/lang/String; = "gps.signalqualitybased"

.field public static final POWER_MEMORY:Ljava/lang/String; = "memory.bandwidths"

.field public static final POWER_MODEM_CONTROLLER_IDLE:Ljava/lang/String; = "modem.controller.idle"

.field public static final POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "modem.controller.voltage"

.field public static final POWER_MODEM_CONTROLLER_RX:Ljava/lang/String; = "modem.controller.rx"

.field public static final POWER_MODEM_CONTROLLER_SLEEP:Ljava/lang/String; = "modem.controller.sleep"

.field public static final POWER_MODEM_CONTROLLER_TX:Ljava/lang/String; = "modem.controller.tx"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"

.field public static final POWER_VIDEO:Ljava/lang/String; = "video"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final POWER_WIFI_CONTROLLER_TX_LEVELS:Ljava/lang/String; = "wifi.controller.tx_levels"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final sLock:Ljava/lang/Object;

.field static final sPowerArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static final sPowerItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;Z)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;ZI)V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forTest"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;ZI)V

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    .line 251
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initCpuClusters()V
    .locals 11

    .line 352
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    const-string v1, "cpu.clusters.cores"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 353
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    const-string v2, "cpu.clusters.cores"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 354
    .local v0, "data":[Ljava/lang/Double;
    array-length v2, v0

    new-array v2, v2, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 355
    nop

    .local v1, "cluster":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 356
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 357
    .local v2, "numCpusInCluster":I
    iget-object v3, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v10, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpu.core_speeds.cluster"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu.cluster_power.cluster"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cpu.core_power.cluster"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, v10

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$1;)V

    aput-object v10, v3, v1

    .line 355
    .end local v2    # "numCpusInCluster":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "data":[Ljava/lang/Double;
    .end local v1    # "cluster":I
    :cond_0
    goto :goto_1

    .line 363
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 364
    const/4 v0, 0x1

    .line 365
    .local v0, "numCpus":I
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string v3, "cpu.clusters.cores"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    const-string v3, "cpu.clusters.cores"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 368
    :cond_2
    iget-object v8, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v9, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const-string v3, "cpu.core_speeds.cluster0"

    const-string v4, "cpu.cluster_power.cluster0"

    const-string v5, "cpu.core_power.cluster0"

    const/4 v7, 0x0

    move-object v2, v9

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$1;)V

    aput-object v9, v8, v1

    .line 371
    .end local v0    # "numCpus":I
    :goto_1
    return-void
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;ZI)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forTest"    # Z
    .param p3, "mode"    # I

    .line 256
    if-eqz p2, :cond_0

    const v0, 0x1170013

    goto :goto_0

    .line 257
    :cond_0
    const v0, 0x1170012

    .line 258
    .local v0, "id":I
    :goto_0
    const/4 v1, 0x1

    move/from16 v2, p3

    if-ne v2, v1, :cond_1

    .line 259
    const v0, 0x117000a

    .line 262
    .end local v0    # "id":I
    .local v1, "id":I
    :cond_1
    move v1, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 263
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 264
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 265
    .local v5, "parsingArray":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 266
    .local v6, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v7, 0x0

    move-object v8, v7

    .line 269
    .local v8, "arrayName":Ljava/lang/String;
    :try_start_0
    const-string v0, "device"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 272
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 274
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 275
    .local v9, "element":Ljava/lang/String;
    const-wide/16 v10, 0x0

    const/4 v0, 0x4

    if-nez v9, :cond_6

    .line 304
    .end local v9    # "element":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 305
    sget-object v7, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/Double;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Double;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 313
    nop

    .line 316
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 323
    .local v0, "configResIds":[I
    const-string v7, "bluetooth.controller.idle"

    const-string v9, "bluetooth.controller.rx"

    const-string v12, "bluetooth.controller.tx"

    const-string v13, "bluetooth.controller.voltage"

    filled-new-array {v7, v9, v12, v13}, [Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, "configResIdKeys":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 330
    .local v9, "i":I
    :goto_2
    array-length v12, v0

    if-ge v9, v12, :cond_5

    .line 331
    aget-object v12, v7, v9

    .line 334
    .local v12, "key":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    sget-object v13, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v13, v13, v10

    if-lez v13, :cond_3

    .line 335
    goto :goto_3

    .line 337
    :cond_3
    aget v13, v0, v9

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 338
    .local v13, "value":I
    if-lez v13, :cond_4

    .line 339
    sget-object v14, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    int-to-double v10, v13

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v14, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":I
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v10, 0x0

    goto :goto_2

    .line 342
    .end local v9    # "i":I
    :cond_5
    return-void

    .line 277
    .end local v0    # "configResIds":[I
    .end local v7    # "configResIdKeys":[Ljava/lang/String;
    .local v9, "element":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    :try_start_1
    const-string/jumbo v10, "value"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 279
    sget-object v10, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/Double;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Double;

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const/4 v5, 0x0

    .line 282
    :cond_7
    const-string v10, "array"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 283
    const/4 v5, 0x1

    .line 284
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 285
    const-string/jumbo v0, "name"

    invoke-interface {v4, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .end local v8    # "arrayName":Ljava/lang/String;
    .local v0, "arrayName":Ljava/lang/String;
    move-object v8, v0

    goto :goto_5

    .line 286
    .end local v0    # "arrayName":Ljava/lang/String;
    .restart local v8    # "arrayName":Ljava/lang/String;
    :cond_8
    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string/jumbo v10, "value"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 287
    :cond_9
    const/4 v10, 0x0

    .line 288
    .local v10, "name":Ljava/lang/String;
    if-nez v5, :cond_a

    const-string/jumbo v11, "name"

    invoke-interface {v4, v7, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 289
    :cond_a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    if-ne v11, v0, :cond_c

    .line 290
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v0

    .line 291
    .local v11, "power":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 293
    .local v12, "value":D
    :try_start_2
    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v12, v14

    .line 295
    goto :goto_4

    .line 294
    :catch_0
    move-exception v0

    .line 296
    :goto_4
    :try_start_3
    const-string v0, "item"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 297
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v0, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 298
    :cond_b
    if-eqz v5, :cond_c

    .line 299
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    .end local v9    # "element":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "power":Ljava/lang/String;
    .end local v12    # "value":D
    :cond_c
    :goto_5
    goto/16 :goto_1

    .line 312
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 309
    :catch_1
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 308
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    nop

    :array_0
    .array-data 4
        0x10e0017
        0x10e001c
        0x10e001d
        0x10e001b
    .end array-data
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 460
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 473
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 475
    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    .line 476
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 477
    .local v0, "values":[Ljava/lang/Double;
    array-length v3, v0

    if-le v3, p2, :cond_1

    if-ltz p2, :cond_1

    .line 478
    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 479
    :cond_1
    if-ltz p2, :cond_3

    array-length v3, v0

    if-nez v3, :cond_2

    goto :goto_0

    .line 482
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 480
    :cond_3
    :goto_0
    return-wide v1

    .line 485
    .end local v0    # "values":[Ljava/lang/Double;
    :cond_4
    return-wide v1
.end method

.method public getAveragePowerForCpuCluster(I)D
    .locals 2
    .param p1, "cluster"    # I

    .line 407
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$300(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 410
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAveragePowerForCpuCore(II)D
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    .line 414
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$400(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0

    .line 417
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAveragePowerOrDefault(Ljava/lang/String;D)D
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 444
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 446
    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 449
    :cond_1
    return-wide p2
.end method

.method public getBatteryCapacity()D
    .locals 2

    .line 496
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumCoresInCpuCluster(I)I
    .locals 1
    .param p1, "cluster"    # I

    .line 393
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$100(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I

    move-result v0

    return v0
.end method

.method public getNumCpuClusters()I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    return v0
.end method

.method public getNumElements(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 427
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x1

    return v0

    .line 429
    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 432
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getNumSpeedStepsInCpuCluster(I)I
    .locals 2
    .param p1, "cluster"    # I

    .line 397
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$200(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerArrayMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->access$200(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v0, v0

    return v0

    .line 403
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 398
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
