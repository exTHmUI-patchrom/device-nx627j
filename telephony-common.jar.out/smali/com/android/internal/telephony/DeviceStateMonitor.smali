.class public Lcom/android/internal/telephony/DeviceStateMonitor;
.super Landroid/os/Handler;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;
    }
.end annotation


# static fields
.field protected static final DBG:Z = false

.field private static final EVENT_CHARGING_STATE_CHANGED:I = 0x4

.field private static final EVENT_POWER_SAVE_MODE_CHANGED:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final EVENT_RIL_CONNECTED:I = 0x0

.field private static final EVENT_SCREEN_STATE_CHANGED:I = 0x2

.field private static final EVENT_TETHERING_STATE_CHANGED:I = 0x5

.field private static final EVENT_UPDATE_MODE_CHANGED:I = 0x1

.field private static final HYSTERESIS_KBPS:I = 0x32

.field private static final LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

.field private static final LINK_CAPACITY_UPLINK_THRESHOLDS:[I

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mIsCharging:Z

.field private mIsLowDataExpected:Z

.field private mIsPowerSaveOn:Z

.field private mIsScreenOn:Z

.field private mIsTetheringOn:Z

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mUnsolicitedResponseFilter:I

.field private mUpdateModes:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-class v0, Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor;->TAG:Ljava/lang/String;

    .line 654
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    .line 663
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    return-void

    :array_0
    .array-data 4
        0x1f4
        0x3e8
        0x1388
        0x2710
        0x4e20
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x1f4
        0x3e8
        0x1388
        0x2710
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Landroid/util/LocalLog;

    .line 108
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    .line 116
    new-instance v0, Lcom/android/internal/telephony/DeviceStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$1;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/DeviceStateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$2;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 182
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 184
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isDeviceCharging()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceStateMonitor mIsPowerSaveOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsScreenOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsCharging="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 196
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v4, "android.os.action.CHARGING"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v4, "android.os.action.DISCHARGING"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 203
    iget-object v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    invoke-interface {v1, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/DeviceStateMonitor;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/DeviceStateMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/DeviceStateMonitor;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result v0

    return v0
.end method

.method private deviceTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 449
    packed-switch p1, :pswitch_data_0

    .line 453
    const-string v0, "UNKNOWN"

    return-object v0

    .line 451
    :pswitch_0
    const-string v0, "LOW_DATA_EXPECTED"

    return-object v0

    .line 450
    :pswitch_1
    const-string v0, "CHARGING_STATE"

    return-object v0

    .line 452
    :pswitch_2
    const-string v0, "POWER_SAVE_MODE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDeviceCharging()Z
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 523
    .local v0, "bm":Landroid/os/BatteryManager;
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    return v1
.end method

.method private isLowDataExpected()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPowerSaveModeOn()Z
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 511
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    return v1
.end method

.method private isScreenOn()Z
    .locals 9

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 536
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 538
    .local v1, "displays":[Landroid/view/Display;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 539
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 542
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 544
    return v3

    .line 539
    .end local v6    # "display":Landroid/view/Display;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 547
    :cond_1
    const-string v4, "Screens all off"

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 548
    return v2

    .line 551
    :cond_2
    const-string v4, "No displays found"

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 552
    return v2
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "logIntoLocalLog"    # Z

    .line 561
    if-eqz p2, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 564
    :cond_0
    return-void
.end method

.method private onReset()V
    .locals 3

    .line 433
    const-string v0, "onReset."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 434
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 435
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 436
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 437
    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    .line 438
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setSignalStrengthReportingCriteria()V

    .line 439
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setLinkCapacityReportingCriteria()V

    .line 440
    return-void
.end method

.method private onSetIndicationUpdateMode(II)V
    .locals 2
    .param p1, "filters"    # I
    .param p2, "mode"    # I

    .line 322
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    :cond_4
    return-void
.end method

.method private onUpdateDeviceState(IZ)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "state"    # Z

    .line 373
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 393
    return-void

    .line 384
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-ne v2, p2, :cond_0

    return-void

    .line 385
    :cond_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    .line 386
    goto :goto_0

    .line 379
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-ne v2, p2, :cond_1

    return-void

    .line 380
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    .line 381
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 382
    goto :goto_0

    .line 388
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    if-ne v2, p2, :cond_2

    return-void

    .line 389
    :cond_2
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    .line 390
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 391
    goto :goto_0

    .line 375
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-ne v2, p2, :cond_3

    return-void

    .line 376
    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    .line 377
    nop

    .line 396
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isLowDataExpected()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 397
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    .line 398
    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 401
    :cond_4
    const/4 v1, 0x0

    .line 402
    .local v1, "newFilter":I
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffSignalStrength()Z

    move-result v2

    if-nez v2, :cond_5

    .line 403
    or-int/lit8 v1, v1, 0x1

    .line 406
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffFullNetworkUpdate()Z

    move-result v2

    if-nez v2, :cond_6

    .line 407
    or-int/lit8 v1, v1, 0x2

    .line 410
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffDormancyUpdate()Z

    move-result v2

    if-nez v2, :cond_7

    .line 411
    or-int/lit8 v1, v1, 0x4

    .line 414
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffLinkCapacityEstimate()Z

    move-result v2

    if-nez v2, :cond_8

    .line 415
    or-int/lit8 v1, v1, 0x8

    .line 418
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffPhysicalChannelConfig()Z

    move-result v2

    if-nez v2, :cond_9

    .line 419
    or-int/lit8 v1, v1, 0x10

    .line 422
    :cond_9
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    .line 423
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendDeviceState(IZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDeviceState(IZLandroid/os/Message;)V

    .line 466
    return-void
.end method

.method private setLinkCapacityReportingCriteria()V
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 502
    return-void
.end method

.method private setSignalStrengthReportingCriteria()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->GERAN:[I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSignalStrengthReportingCriteria([II)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->UTRAN:[I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSignalStrengthReportingCriteria([II)V

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->EUTRAN:[I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSignalStrengthReportingCriteria([II)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->CDMA2000:[I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSignalStrengthReportingCriteria([II)V

    .line 491
    return-void
.end method

.method private setUnsolResponseFilter(IZ)V
    .locals 2
    .param p1, "newFilter"    # I
    .param p2, "force"    # Z

    .line 475
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    if-eq p1, v0, :cond_1

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old filter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new filter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setUnsolResponseFilter(ILandroid/os/Message;)V

    .line 478
    iput p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    .line 480
    :cond_1
    return-void
.end method

.method private shouldTurnOffDormancyUpdate()Z
    .locals 2

    .line 263
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    .line 264
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTurnOffFullNetworkUpdate()Z
    .locals 2

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    .line 245
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTurnOffLinkCapacityEstimate()Z
    .locals 2

    .line 282
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    .line 283
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTurnOffPhysicalChannelConfig()Z
    .locals 2

    .line 301
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    .line 302
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTurnOffSignalStrength()Z
    .locals 3

    .line 224
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    .line 225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    return v1

    .line 227
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 574
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 575
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsTetheringOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPowerSaveOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsLowDataExpected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnsolicitedResponseFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const-string v1, "Local logs:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 584
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 586
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 587
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 588
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message arrives. msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    .line 360
    goto :goto_0

    .line 353
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onSetIndicationUpdateMode(II)V

    .line 354
    goto :goto_0

    .line 350
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->onReset()V

    .line 351
    nop

    .line 364
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setIndicationUpdateMode(II)V
    .locals 1
    .param p1, "filters"    # I
    .param p2, "mode"    # I

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method
