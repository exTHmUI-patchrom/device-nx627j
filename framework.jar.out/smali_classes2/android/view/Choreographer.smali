.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x3

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x3

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final MOTION_EVENT_ACTION_CANCEL:I = 0x3

.field private static final MOTION_EVENT_ACTION_DOWN:I = 0x0

.field private static final MOTION_EVENT_ACTION_MOVE:I = 0x2

.field private static final MOTION_EVENT_ACTION_UP:I = 0x1

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final OPTS_INPUT:Z = true

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static volatile mMainInstance:Landroid/view/Choreographer;

.field private static volatile sFrameDelay:J

.field private static final sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private mConsumedDown:Z

.field private mConsumedMove:Z

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private mFPSDivisor:I

.field mFrameInfo:Landroid/view/FrameInfo;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mIsVsyncScheduled:Z

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mMotionEventType:I

.field private mTouchMoveNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 99
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 102
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 121
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    .line 134
    const-string v0, "debug.choreographer.vsync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 138
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 143
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 156
    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 202
    const-string v0, "input"

    const-string v1, "animation"

    const-string/jumbo v2, "traversal"

    const-string v3, "commit"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;I)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 180
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    .line 181
    iput v1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    .line 183
    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    .line 184
    iput-boolean v1, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    .line 196
    new-instance v2, Landroid/view/FrameInfo;

    invoke-direct {v2}, Landroid/view/FrameInfo;-><init>()V

    iput-object v2, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 241
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 242
    new-instance v2, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v2, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 243
    sget-boolean v2, Landroid/view/Choreographer;->USE_VSYNC:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 244
    new-instance v2, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v2, p0, p1, p2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V

    goto :goto_0

    .line 245
    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 246
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 248
    const v2, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v4

    div-float/2addr v2, v4

    float-to-long v4, v2

    iput-wide v4, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 250
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 251
    nop

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 252
    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v4, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v4, p0, v3}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V

    aput-object v4, v2, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    .end local v1    # "i":I
    :cond_1
    const-string v1, "debug.hwui.fps_divisor"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;ILandroid/view/Choreographer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/view/Choreographer$1;

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0
    .param p0, "x0"    # Landroid/view/Choreographer;

    .line 78
    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic access$400(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 1
    .param p0, "x0"    # Landroid/view/Choreographer;

    .line 78
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .line 78
    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 1
    .param p0, "x0"    # Landroid/view/Choreographer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/Choreographer;
    .param p1, "x1"    # Landroid/view/Choreographer$CallbackRecord;

    .line 78
    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method private dispose()V
    .locals 1

    .line 310
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    .line 311
    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    .line 330
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .locals 1

    .line 272
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method public static getMainThreadInstance()Landroid/view/Choreographer;
    .locals 1

    .line 297
    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .locals 2

    .line 259
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 261
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static getSfInstance()Landroid/view/Choreographer;
    .locals 1

    .line 279
    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .locals 2

    .line 863
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .line 867
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 868
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 869
    new-instance v2, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v2, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$1;)V

    move-object v0, v2

    goto :goto_0

    .line 871
    :cond_0
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 872
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 874
    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 875
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 876
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 877
    return-object v0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 7
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 450
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 452
    .local v1, "now":J
    add-long v3, v1, p4

    .line 453
    .local v3, "dueTime":J
    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 455
    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    .line 456
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 459
    .local v5, "msg":Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 460
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 461
    iget-object v6, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v6, v5, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 463
    .end local v1    # "now":J
    .end local v3    # "dueTime":J
    .end local v5    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .line 881
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 882
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 883
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 884
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 885
    return-void
.end method

.method public static releaseInstance()V
    .locals 2

    .line 304
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    .line 305
    .local v0, "old":Landroid/view/Choreographer;
    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 306
    invoke-direct {v0}, Landroid/view/Choreographer;->dispose()V

    .line 307
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 497
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 499
    :cond_0
    monitor-exit v0

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleFrameLocked(J)V
    .locals 7
    .param p1, "now"    # J

    .line 614
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_4

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 617
    iget-boolean v1, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 618
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleFrameLocked-mMotionEventType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/Choreographer;->mMotionEventType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mTouchMoveNum:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mConsumedDown:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mConsumedMove:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 623
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 624
    monitor-enter p0

    .line 625
    :try_start_0
    iget v1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 637
    :pswitch_0
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    .line 638
    iget v1, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    if-nez v1, :cond_0

    .line 639
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 640
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 641
    iget-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 642
    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    .line 643
    monitor-exit p0

    return-void

    .line 648
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    .line 649
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    .line 650
    goto :goto_0

    .line 627
    :pswitch_2
    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    .line 628
    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    if-nez v1, :cond_0

    .line 629
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 630
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 631
    iget-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 632
    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    .line 633
    monitor-exit p0

    return-void

    .line 654
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 657
    :cond_1
    :goto_1
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_3

    .line 665
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_2

    .line 668
    :cond_2
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 669
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 670
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 671
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 673
    :cond_3
    iget-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    sget-wide v5, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v3, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 678
    .local v3, "nextFrameTime":J
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 679
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 680
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 683
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "nextFrameTime":J
    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scheduleVsyncLocked()V
    .locals 1

    .line 858
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    .line 860
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .line 350
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 351
    return-void
.end method

.method public static subtractFrameDelay(J)J
    .locals 4
    .param p0, "delayMillis"    # J

    .line 376
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 377
    .local v0, "frameDelay":J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    sub-long v2, p0, v0

    :goto_0
    return-wide v2
.end method


# virtual methods
.method doCallbacks(IJ)V
    .locals 16
    .param p1, "callbackType"    # I
    .param p2, "frameTimeNanos"    # J

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 776
    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 780
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 781
    .local v4, "now":J
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, v2

    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    .line 783
    .local v0, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v0, :cond_0

    .line 784
    monitor-exit v3

    return-void

    .line 786
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 796
    const/4 v6, 0x3

    const-wide/16 v7, 0x8

    if-ne v2, v6, :cond_1

    .line 797
    sub-long v11, v4, p2

    .line 798
    .local v11, "jitterNanos":J
    const-string v6, "jitterNanos"

    long-to-int v13, v11

    invoke-static {v7, v8, v6, v13}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 799
    const-wide/16 v13, 0x2

    iget-wide v7, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    mul-long/2addr v13, v7

    cmp-long v6, v11, v13

    if-ltz v6, :cond_1

    .line 800
    iget-wide v6, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    rem-long v6, v11, v6

    iget-wide v13, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    add-long/2addr v6, v13

    .line 810
    .local v6, "lastFrameOffset":J
    sub-long v8, v4, v6

    .line 811
    .end local p2    # "frameTimeNanos":J
    .local v8, "frameTimeNanos":J
    :try_start_1
    iput-wide v8, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .end local v4    # "now":J
    .end local v6    # "lastFrameOffset":J
    .end local v11    # "jitterNanos":J
    goto :goto_0

    .line 814
    .end local v8    # "frameTimeNanos":J
    .restart local p2    # "frameTimeNanos":J
    :cond_1
    move-wide/from16 v8, p2

    .end local p2    # "frameTimeNanos":J
    .restart local v8    # "frameTimeNanos":J
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v3, v0

    .line 816
    .end local v0    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .local v3, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    const/4 v4, 0x0

    :try_start_2
    sget-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 817
    move-object v0, v3

    .local v0, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_1
    if-eqz v0, :cond_2

    .line 823
    invoke-virtual {v0, v8, v9}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    .line 817
    iget-object v5, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v5

    goto :goto_1

    .line 826
    .end local v0    # "c":Landroid/view/Choreographer$CallbackRecord;
    :cond_2
    iget-object v5, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 827
    :try_start_3
    iput-boolean v4, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 829
    :cond_3
    iget-object v0, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 830
    .local v0, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v3}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 831
    move-object v3, v0

    .line 832
    .end local v0    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-nez v3, :cond_3

    .line 833
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 835
    nop

    .line 836
    return-void

    .line 833
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 826
    :catchall_1
    move-exception v0

    iget-object v5, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 827
    :try_start_5
    iput-boolean v4, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 829
    :goto_2
    iget-object v4, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 830
    .local v4, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v3}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 831
    move-object v3, v4

    .line 832
    .end local v4    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz v3, :cond_4

    goto :goto_2

    .line 833
    :cond_4
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 834
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 833
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 814
    .end local v3    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    :catchall_3
    move-exception v0

    move-wide v9, v8

    goto :goto_3

    .end local v8    # "frameTimeNanos":J
    .restart local p2    # "frameTimeNanos":J
    :catchall_4
    move-exception v0

    move-wide/from16 v9, p2

    .end local p2    # "frameTimeNanos":J
    .local v9, "frameTimeNanos":J
    :goto_3
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method doFrame(JI)V
    .locals 18
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I

    move-object/from16 v1, p0

    .line 693
    iget-object v2, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 694
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    .line 695
    iget-boolean v3, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v3, :cond_0

    .line 696
    monitor-exit v2

    return-void

    .line 705
    :cond_0
    move-wide/from16 v3, p1

    .line 706
    .local v3, "intendedFrameTimeNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 707
    .local v5, "startNanos":J
    sub-long v9, v5, p1

    .line 708
    .local v9, "jitterNanos":J
    iget-wide v11, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    cmp-long v11, v9, v11

    if-ltz v11, :cond_2

    .line 709
    iget-wide v11, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    div-long v11, v9, v11

    .line 710
    .local v11, "skippedFrames":J
    sget v13, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v13, v13

    cmp-long v13, v11, v13

    if-ltz v13, :cond_1

    .line 711
    const-string v13, "Choreographer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipped "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1
    iget-wide v13, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    rem-long v13, v9, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 722
    .local v13, "lastFrameOffset":J
    sub-long v7, v5, v13

    .end local v11    # "skippedFrames":J
    .end local v13    # "lastFrameOffset":J
    .end local p1    # "frameTimeNanos":J
    .local v7, "frameTimeNanos":J
    goto :goto_0

    .line 725
    .end local v7    # "frameTimeNanos":J
    .restart local p1    # "frameTimeNanos":J
    :cond_2
    move-wide/from16 v7, p1

    .end local p1    # "frameTimeNanos":J
    .restart local v7    # "frameTimeNanos":J
    :goto_0
    :try_start_1
    iget-wide v11, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    cmp-long v11, v7, v11

    if-gez v11, :cond_3

    .line 730
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 731
    monitor-exit v2

    return-void

    .line 734
    :cond_3
    iget v11, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 735
    iget-wide v13, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    sub-long v13, v7, v13

    .line 736
    .local v13, "timeSinceVsync":J
    move-wide/from16 v16, v13

    iget-wide v12, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .end local v13    # "timeSinceVsync":J
    .local v16, "timeSinceVsync":J
    iget v11, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    int-to-long v14, v11

    mul-long/2addr v12, v14

    cmp-long v11, v16, v12

    if-gez v11, :cond_4

    const-wide/16 v11, 0x0

    cmp-long v11, v16, v11

    if-lez v11, :cond_4

    .line 737
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 738
    monitor-exit v2

    return-void

    .line 742
    .end local v16    # "timeSinceVsync":J
    :cond_4
    iget-object v11, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/view/FrameInfo;->setVsync(JJ)V

    .line 743
    iput-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 744
    iput-wide v7, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 745
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v9    # "jitterNanos":J
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide v2, v5

    .line 748
    .end local v5    # "startNanos":J
    .local v2, "startNanos":J
    const-wide/16 v4, 0x8

    :try_start_2
    const-string v6, "Choreographer#doFrame"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 749
    const-wide/32 v9, 0xf4240

    div-long v9, v7, v9

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    .line 751
    iget-object v6, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v6}, Landroid/view/FrameInfo;->markInputHandlingStart()V

    .line 752
    invoke-virtual {v1, v0, v7, v8}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 754
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0}, Landroid/view/FrameInfo;->markAnimationsStart()V

    .line 755
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v7, v8}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 757
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v0}, Landroid/view/FrameInfo;->markPerformTraversalsStart()V

    .line 758
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v7, v8}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 760
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v7, v8}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 762
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 763
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 764
    nop

    .line 772
    return-void

    .line 762
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 763
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 745
    .end local v2    # "startNanos":J
    .end local v7    # "frameTimeNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_1
    move-exception v0

    move-wide/from16 v7, p1

    .end local p1    # "frameTimeNanos":J
    .restart local v7    # "frameTimeNanos":J
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method doScheduleCallback(I)V
    .locals 4
    .param p1, "callbackType"    # I

    .line 847
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_0

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 850
    .local v1, "now":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 854
    .end local v1    # "now":J
    :cond_0
    monitor-exit v0

    .line 855
    return-void

    .line 854
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doScheduleVsync()V
    .locals 2

    .line 839
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_0

    .line 841
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 843
    :cond_0
    monitor-exit v0

    .line 844
    return-void

    .line 843
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 393
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public getFrameIntervalNanos()J
    .locals 2

    .line 385
    iget-wide v0, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    return-wide v0
.end method

.method public getFrameTime()J
    .locals 4

    .line 580
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .locals 3

    .line 592
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_1

    .line 597
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 594
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastFrameTimeNanos()J
    .locals 3

    .line 608
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 412
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 413
    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 432
    if-eqz p2, :cond_1

    .line 435
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 439
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 440
    return-void

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 514
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 515
    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    .line 530
    if-eqz p1, :cond_0

    .line 534
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 536
    return-void

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 481
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 485
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 486
    return-void

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 547
    if-eqz p1, :cond_0

    .line 551
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 552
    return-void

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFPSDivisor(I)V
    .locals 0
    .param p1, "divisor"    # I

    .line 686
    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 687
    :cond_0
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 688
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    .line 689
    return-void
.end method

.method public setMotionEventInfo(II)V
    .locals 1
    .param p1, "motionEventType"    # I
    .param p2, "touchMoveNum"    # I

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iput p2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    .line 288
    iput p1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    .line 289
    monitor-exit p0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
