.class public Lcn/nubia/server/presssensor/PressSensorService;
.super Lcn/nubia/server/NubiaSystemService;
.source "PressSensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/presssensor/PressSensorService$LocalService;,
        Lcn/nubia/server/presssensor/PressSensorService$BinderService;,
        Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static DEBUG_PRESS:Z = false

.field private static final LOG_INTERVAL:I = 0x1f4

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TAG:Ljava/lang/String; = "PressSensorService"


# instance fields
.field private mBinderService:Lcn/nubia/server/presssensor/PressSensorService$BinderService;

.field private mEventHandler:Landroid/os/Handler;

.field private mEventThread:Landroid/os/HandlerThread;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private mInternalPressSensorListener:Lnubia/os/presssensor/InternalPressSensorListener;

.field private mIsGestureEnable:Z

.field private mIsInited:Z

.field private mIsPressDeviceEnable:Z

.field private volatile mIsRankRegistered:Z

.field private mIsScreenOn:Z

.field private mIsShowLog:Z

.field private mIsUIUsePressSensor:Z

.field private mLastLogTime:J

.field private mPressGestureCtrl:Lnubia/os/presssensor/IPressGestureCtrl;

.field private mPressGestureDetector:Lcn/nubia/server/presssensor/PressGestureDetector;

.field private mPressGestureListener:Lcn/nubia/server/presssensor/PressGestureListener;

.field private mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

.field private mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

.field private mPressListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lnubia/os/presssensor/IPressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPressRankCallback:Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;

.field private mPressRankDetector:Lcn/nubia/server/presssensor/PressRankDetector;

.field private mRankListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

.field private volatile mSensitivity:I

.field private mServiceContext:Landroid/content/Context;

.field private mTaskCallback:Lnubia/os/ITaskCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    .line 47
    sput-boolean v0, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG_PRESS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressListenerMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mRankListenerRecords:Ljava/util/List;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsScreenOn:Z

    .line 76
    new-instance v0, Lcn/nubia/server/presssensor/PressSensorService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/presssensor/PressSensorService$1;-><init>(Lcn/nubia/server/presssensor/PressSensorService;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mInternalPressSensorListener:Lnubia/os/presssensor/InternalPressSensorListener;

    .line 89
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mServiceContext:Landroid/content/Context;

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "nubia.presssensor"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mEventThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mEventHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcn/nubia/server/presssensor/PressSensorService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/presssensor/PressSensorService$BinderService;-><init>(Lcn/nubia/server/presssensor/PressSensorService;Lcn/nubia/server/presssensor/PressSensorService$1;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mBinderService:Lcn/nubia/server/presssensor/PressSensorService$BinderService;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/presssensor/PressSensorService;JII)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/presssensor/PressSensorService;->onPressChangedInner(JII)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureSettings;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mServiceContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mRankListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/presssensor/PressSensorService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/server/presssensor/PressSensorService;->removeRankListener(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1602(Lcn/nubia/server/presssensor/PressSensorService;Lnubia/os/presssensor/IPressGestureCtrl;)Lnubia/os/presssensor/IPressGestureCtrl;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p1, "x1"    # Lnubia/os/presssensor/IPressGestureCtrl;

    .line 43
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureCtrl:Lnubia/os/presssensor/IPressGestureCtrl;

    return-object p1
.end method

.method static synthetic access$1700(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureListener:Lcn/nubia/server/presssensor/PressGestureListener;

    return-object v0
.end method

.method static synthetic access$1802(Lcn/nubia/server/presssensor/PressSensorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsRankRegistered:Z

    return p1
.end method

.method static synthetic access$1900(Lcn/nubia/server/presssensor/PressSensorService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/presssensor/PressSensorService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/server/presssensor/PressSensorService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsInited:Z

    return v0
.end method

.method static synthetic access$2102(Lcn/nubia/server/presssensor/PressSensorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/presssensor/PressSensorService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsUIUsePressSensor:Z

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/server/presssensor/PressSensorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsUIUsePressSensor:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressSensorService;->updatePressSensorState()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressSensorService;->init()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/presssensor/PressSensorService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsGestureEnable:Z

    return v0
.end method

.method static synthetic access$702(Lcn/nubia/server/presssensor/PressSensorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsGestureEnable:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureMutex;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/presssensor/PressSensorService;)Lnubia/os/ITaskCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 43
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mTaskCallback:Lnubia/os/ITaskCallback;

    return-object v0
.end method

.method private disablePressDevice(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 304
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsPressDeviceEnable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {}, Lcn/nubia/server/presssensor/DriverNode;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "PressSensorService"

    const-string/jumbo v1, "try to disable node again"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Lcn/nubia/server/presssensor/DriverNode;->disable()V

    goto :goto_1

    .line 305
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsPressDeviceEnable:Z

    .line 306
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureDetector:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->reset()V

    .line 307
    invoke-static {}, Lcn/nubia/server/presssensor/DriverNode;->disable()V

    .line 316
    :cond_2
    :goto_1
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 370
    const-string v0, "PRESS SENSOR MANAGER (dumpsys nubia.presssensor)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "opti":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_6

    .line 373
    aget-object v1, p3, v0

    .line 374
    .local v1, "opt":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 375
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 376
    goto :goto_2

    .line 378
    :cond_0
    const-string v2, "-d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, "value":Ljava/lang/String;
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 381
    aget-object v2, p3, v0

    .line 382
    add-int/lit8 v0, v0, 0x1

    .line 384
    :cond_1
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    .line 385
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_1

    :cond_2
    const-string/jumbo v2, "node"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 386
    invoke-static {p2}, Lcn/nubia/server/presssensor/DriverNode;->dump(Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 387
    :cond_3
    const-string v2, "-p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 388
    const/4 v2, 0x0

    .line 389
    .restart local v2    # "value":Ljava/lang/String;
    array-length v3, p3

    if-ge v0, v3, :cond_4

    .line 390
    aget-object v2, p3, v0

    .line 391
    add-int/lit8 v0, v0, 0x1

    .line 393
    :cond_4
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG_PRESS:Z

    .line 395
    .end local v1    # "opt":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    :goto_1
    goto :goto_0

    .line 396
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gesture enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsGestureEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rank registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsRankRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device sensor enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsPressDeviceEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "press sensor for special ui:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsUIUsePressSensor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inited:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureListener:Lcn/nubia/server/presssensor/PressGestureListener;

    if-eqz v1, :cond_7

    .line 404
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureListener:Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-virtual {v1, p2}, Lcn/nubia/server/presssensor/PressGestureListener;->dump(Ljava/io/PrintWriter;)V

    .line 406
    :cond_7
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    if-eqz v1, :cond_8

    .line 407
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v1, p2}, Lcn/nubia/server/presssensor/PressGestureSettings;->dump(Ljava/io/PrintWriter;)V

    .line 409
    :cond_8
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    if-eqz v1, :cond_9

    .line 410
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {v1, p2}, Lcn/nubia/server/presssensor/PressGestureMutex;->dump(Ljava/io/PrintWriter;)V

    .line 412
    :cond_9
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mRankListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 413
    .local v1, "size":I
    if-lez v1, :cond_a

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rank listener size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    :cond_a
    return-void
.end method

.method private enablePressDevice(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 290
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsPressDeviceEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {}, Lcn/nubia/server/presssensor/DriverNode;->isEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    const-string v0, "PressSensorService"

    const-string/jumbo v1, "try to enable node again"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Lcn/nubia/server/presssensor/DriverNode;->enable()V

    goto :goto_1

    .line 291
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsPressDeviceEnable:Z

    .line 292
    invoke-static {}, Lcn/nubia/server/presssensor/DriverNode;->enable()V

    .line 301
    :cond_2
    :goto_1
    return-void
.end method

.method private init()V
    .locals 4

    .line 167
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressSensorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/server/presssensor/PressGestureSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    .line 168
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressSensorService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-direct {v0, v1, v2, p0}, Lcn/nubia/server/presssensor/PressGestureMutex;-><init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressSensorService;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 170
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressSensorService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-direct {v0, v1, p0, v2, v3}, Lcn/nubia/server/presssensor/PressGestureListener;-><init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressSensorService;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressGestureMutex;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureListener:Lcn/nubia/server/presssensor/PressGestureListener;

    .line 172
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-virtual {p0}, Lcn/nubia/server/presssensor/PressSensorService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/presssensor/PressGestureDetector;-><init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressGestureMutex;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureDetector:Lcn/nubia/server/presssensor/PressGestureDetector;

    .line 174
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureDetector:Lcn/nubia/server/presssensor/PressGestureDetector;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureListener:Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-virtual {v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->setOnHoldListener(Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    new-instance v1, Lcn/nubia/server/presssensor/PressSensorService$4;

    invoke-direct {v1, p0}, Lcn/nubia/server/presssensor/PressSensorService$4;-><init>(Lcn/nubia/server/presssensor/PressSensorService;)V

    .line 176
    invoke-virtual {v0, v1}, Lcn/nubia/server/presssensor/PressGestureSettings;->setGestureEnableCallback(Lcn/nubia/server/presssensor/PressGestureSettings$GestureEnableCallback;)V

    .line 196
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureListener:Lcn/nubia/server/presssensor/PressGestureListener;

    .line 197
    invoke-virtual {v1}, Lcn/nubia/server/presssensor/PressGestureListener;->getDisallowedCallback()Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lcn/nubia/server/presssensor/PressGestureMutex;->setDisallowedCallback(Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;)V

    .line 198
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureCtrl:Lnubia/os/presssensor/IPressGestureCtrl;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureListener:Lcn/nubia/server/presssensor/PressGestureListener;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureCtrl:Lnubia/os/presssensor/IPressGestureCtrl;

    invoke-virtual {v0, v1}, Lcn/nubia/server/presssensor/PressGestureListener;->setPressGestureCtrl(Lnubia/os/presssensor/IPressGestureCtrl;)V

    .line 201
    :cond_0
    new-instance v0, Lcn/nubia/server/presssensor/PressSensorService$5;

    invoke-direct {v0, p0}, Lcn/nubia/server/presssensor/PressSensorService$5;-><init>(Lcn/nubia/server/presssensor/PressSensorService;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressRankCallback:Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;

    .line 247
    new-instance v0, Lcn/nubia/server/presssensor/PressRankDetector;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressRankCallback:Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;

    invoke-direct {v0, v1}, Lcn/nubia/server/presssensor/PressRankDetector;-><init>(Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressRankDetector:Lcn/nubia/server/presssensor/PressRankDetector;

    .line 248
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->isGestureEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsGestureEnable:Z

    .line 249
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressSensorService;->initDriverState()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsInited:Z

    .line 251
    return-void
.end method

.method private initDriverState()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->getThreshold()I

    move-result v0

    .line 255
    .local v0, "threshold":I
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v1, v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->isValidThreshold(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {v0}, Lcn/nubia/server/presssensor/DriverNode;->setThreshold(I)V

    .line 258
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsGestureEnable:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 259
    invoke-direct {p0, v2}, Lcn/nubia/server/presssensor/PressSensorService;->enablePressDevice(Z)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-direct {p0, v2}, Lcn/nubia/server/presssensor/PressSensorService;->disablePressDevice(Z)V

    .line 263
    :goto_0
    return-void
.end method

.method private onPressChangedInner(JII)V
    .locals 10
    .param p1, "whenNanos"    # J
    .param p3, "pressValues"    # I
    .param p4, "pressMask"    # I

    .line 320
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/presssensor/PressSensorService;->printPressLog(JII)V

    .line 321
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    .line 322
    .local v0, "time":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v2, "removeListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnubia/os/presssensor/IPressListener;>;"
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressListenerMap:Ljava/util/Map;

    monitor-enter v3

    .line 324
    :try_start_0
    iget-object v4, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressListenerMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnubia/os/presssensor/IPressListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    .local v5, "listener":Lnubia/os/presssensor/IPressListener;
    :try_start_1
    invoke-interface {v5, v0, v1, p3, p4}, Lnubia/os/presssensor/IPressListener;->onPressChanged(JII)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    :cond_0
    :goto_1
    goto :goto_2

    .line 331
    :catch_0
    move-exception v6

    .line 332
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "PressSensorService"

    const-string/jumbo v8, "onPressChanged error"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v5    # "listener":Lnubia/os/presssensor/IPressListener;
    .end local v6    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 327
    .restart local v5    # "listener":Lnubia/os/presssensor/IPressListener;
    :catch_1
    move-exception v6

    .line 328
    .local v6, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-boolean v7, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 330
    const-string v7, "PressSensorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dead object for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Landroid/os/DeadObjectException;
    goto :goto_1

    .line 334
    .end local v5    # "listener":Lnubia/os/presssensor/IPressListener;
    :goto_2
    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 336
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnubia/os/presssensor/IPressListener;

    .line 337
    .restart local v5    # "listener":Lnubia/os/presssensor/IPressListener;
    iget-object v6, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressListenerMap:Ljava/util/Map;

    invoke-interface {v5}, Lnubia/os/presssensor/IPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .end local v5    # "listener":Lnubia/os/presssensor/IPressListener;
    goto :goto_3

    .line 340
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    new-instance v3, Lnubia/os/presssensor/PressEvent;

    invoke-direct {v3, p4, p3, v0, v1}, Lnubia/os/presssensor/PressEvent;-><init>(IIJ)V

    move-object v4, v3

    .line 342
    .local v4, "pressEvent":Lnubia/os/presssensor/PressEvent;
    iget-object v5, p0, Lcn/nubia/server/presssensor/PressSensorService;->mRankListenerRecords:Ljava/util/List;

    monitor-enter v5

    .line 343
    :try_start_3
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mRankListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 344
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressRankDetector:Lcn/nubia/server/presssensor/PressRankDetector;

    invoke-virtual {v3, v4}, Lcn/nubia/server/presssensor/PressRankDetector;->onPressChanged(Lnubia/os/presssensor/PressEvent;)V

    .line 346
    :cond_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    iget-boolean v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsGestureEnable:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsScreenOn:Z

    if-eqz v3, :cond_4

    .line 348
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mPressGestureDetector:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-virtual {v3, v4}, Lcn/nubia/server/presssensor/PressGestureDetector;->onPressChanged(Lnubia/os/presssensor/PressEvent;)V

    .line 350
    :cond_4
    return-void

    .line 346
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 340
    .end local v4    # "pressEvent":Lnubia/os/presssensor/PressEvent;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method private printPressLog(JII)V
    .locals 6
    .param p1, "whenNanos"    # J
    .param p3, "value"    # I
    .param p4, "mask"    # I

    .line 353
    sget-boolean v0, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG_PRESS:Z

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "PressSensorService"

    invoke-static {p1, p2, p3, p4}, Lnubia/os/presssensor/PressEvent;->getDescription(JII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 357
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 358
    .local v0, "now":J
    iget-wide v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mLastLogTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsShowLog:Z

    .line 359
    const/16 v2, 0x152

    if-ne p4, v2, :cond_2

    .line 360
    const-string v2, "PressSensorService"

    invoke-static {p1, p2, p3, p4}, Lnubia/os/presssensor/PressEvent;->getDescription(JII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 361
    :cond_2
    iget-boolean v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsShowLog:Z

    if-eqz v2, :cond_3

    .line 362
    iput-wide v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mLastLogTime:J

    .line 363
    const-string v2, "PressSensorService"

    invoke-static {p1, p2, p3, p4}, Lnubia/os/presssensor/PressEvent;->getDescription(JII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_3
    :goto_1
    return-void
.end method

.method private removeRankListener(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "key"    # Landroid/os/IBinder;

    .line 451
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mRankListenerRecords:Ljava/util/List;

    monitor-enter v0

    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressSensorService;->mRankListenerRecords:Ljava/util/List;

    .line 454
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 455
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;

    .line 457
    .local v3, "record":Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    invoke-virtual {v3}, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->getKey()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 458
    invoke-virtual {v3}, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->detach()V

    .line 459
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 460
    goto :goto_1

    .line 462
    .end local v3    # "record":Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    :cond_0
    goto :goto_0

    .line 463
    :cond_1
    :goto_1
    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mRankListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 464
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsRankRegistered:Z

    .line 466
    .end local v1    # "index":I
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;>;"
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsRankRegistered:Z

    if-nez v0, :cond_3

    .line 468
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/presssensor/PressSensorService$6;

    invoke-direct {v1, p0}, Lcn/nubia/server/presssensor/PressSensorService$6;-><init>(Lcn/nubia/server/presssensor/PressSensorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    :cond_3
    return-void

    .line 466
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updatePressSensorState()V
    .locals 2

    .line 280
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsGestureEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsRankRegistered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsUIUsePressSensor:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 282
    .local v0, "enable":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 283
    invoke-direct {p0, v1}, Lcn/nubia/server/presssensor/PressSensorService;->enablePressDevice(Z)V

    goto :goto_1

    .line 285
    :cond_2
    invoke-direct {p0, v1}, Lcn/nubia/server/presssensor/PressSensorService;->disablePressDevice(Z)V

    .line 287
    :goto_1
    return-void
.end method


# virtual methods
.method public getScreenSwitchInternal()Lnubia/os/screenswitch/ScreenSwitchInternal;
    .locals 1

    .line 276
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    return-object v0
.end method

.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 272
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mBinderService:Lcn/nubia/server/presssensor/PressSensorService$BinderService;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 267
    const-string/jumbo v0, "nubia.presssensor"

    return-object v0
.end method

.method public onStart()V
    .locals 3

    .line 162
    invoke-super {p0}, Lcn/nubia/server/NubiaSystemService;->onStart()V

    .line 163
    const-class v0, Lnubia/os/presssensor/PressSensorInternal;

    new-instance v1, Lcn/nubia/server/presssensor/PressSensorService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/presssensor/PressSensorService$LocalService;-><init>(Lcn/nubia/server/presssensor/PressSensorService;Lcn/nubia/server/presssensor/PressSensorService$1;)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/presssensor/PressSensorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method protected systemReady()V
    .locals 6

    .line 99
    invoke-super {p0}, Lcn/nubia/server/NubiaSystemService;->systemReady()V

    .line 100
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    .line 101
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 103
    :try_start_0
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    const-string/jumbo v1, "setPressSensorListener"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lnubia/os/presssensor/InternalPressSensorListener;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 104
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/server/presssensor/PressSensorService;->mInternalPressSensorListener:Lnubia/os/presssensor/InternalPressSensorListener;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-virtual {p0, v0}, Lcn/nubia/server/presssensor/PressSensorService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 118
    new-instance v0, Lcn/nubia/server/presssensor/PressSensorService$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/presssensor/PressSensorService$2;-><init>(Lcn/nubia/server/presssensor/PressSensorService;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mTaskCallback:Lnubia/os/ITaskCallback;

    .line 153
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/presssensor/PressSensorService$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/presssensor/PressSensorService$3;-><init>(Lcn/nubia/server/presssensor/PressSensorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method
