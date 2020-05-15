.class public Lcn/nubia/server/presssensor/PressGestureDetector;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;,
        Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;
    }
.end annotation


# static fields
.field private static final GESTURE_DOUBLE_HOLD:I = 0x5

.field private static final GESTURE_HOLD_END:I = 0x9

.field private static final GESTURE_HOLD_START:I = 0x7

.field private static final GESTURE_LONG_HOLD_END:I = 0x4

.field private static final GESTURE_LONG_HOLD_START:I = 0x3

.field private static final GESTURE_PAINT_EGG_END:I = 0xc

.field private static final GESTURE_PAINT_EGG_START:I = 0xb

.field private static final GESTURE_PAINT_EGG_WAITING_START:I = 0xd

.field private static final GESTURE_SHORT_HOLD_CONFIRMED:I = 0x2

.field private static final GESTURE_SHORT_HOLD_UP:I = 0x1

.field private static final INVALID:I = -0x1

.field private static final MSG_LONG_HOLD:I = 0x1

.field private static final MSG_PAINT_EGG:I = 0x3

.field private static final MSG_PAINT_EGG_WAITING:I = 0x4

.field private static final MSG_TIMEOUT_DOUBLE_HOLD:I = 0x2

.field private static final PRESS_IGNORE:I = 0xc8

.field private static final PRESS_UP:I = 0xc8

.field private static final STABLE_COUNT:I = 0xa

.field private static final SUB_TAG:Ljava/lang/String; = "[GestureDetector] "

.field public static final TIME_DOUBLE_HOLD:I = 0x258

.field public static final TIME_DOWN_UP:I = 0x1f4

.field private static final TIME_GAP_DOUBLE_TO_SHORT_MIN:I = 0x12c

.field public static final TIME_LONG_HOLD:I = 0x1f4

.field public static final TIME_PAINT_EGG:I = 0xbb8

.field private static final TIME_SIMULTANEOUS:I = 0x64


# instance fields
.field private mDeferConfirmSingleHold:Z

.field private mDoubleHoldTime:J

.field private mHandler:Landroid/os/Handler;

.field private mHoldDownTime:J

.field private mHoldListener:Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;

.field private mInLongPress:Z

.field private mIsDoubleHolding:Z

.field private mIsDown:Z

.field private mIsHoldDownSatisfied:Z

.field private mIsLeftDown:Z

.field private mIsPaintEggHoldDownSatisfied:Z

.field private mIsPaintEggLeftDown:Z

.field private mIsPaintEggRightDown:Z

.field private mIsRightDown:Z

.field private mLastHoldDownTime:J

.field private mLastHoldUpTime:J

.field private mLeftCurrentTime:J

.field private mLeftCurrentValue:I

.field private mLeftIgnoreCount:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

.field private mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

.field private mRightCurrentTime:J

.field private mRightCurrentValue:I

.field private mRightIgnoreCount:I

.field private mUserActivityHandled:Z

.field private mUserActivityHandler:Landroid/os/Handler;

.field private mUserActivityRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressGestureMutex;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcn/nubia/server/presssensor/PressGestureSettings;
    .param p3, "mutex"    # Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLastHoldUpTime:J

    .line 52
    iput-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLastHoldDownTime:J

    .line 53
    iput-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldDownTime:J

    .line 54
    iput-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentTime:J

    .line 55
    iput-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentTime:J

    .line 56
    iput-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mDoubleHoldTime:J

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    .line 59
    iput v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    .line 67
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureDetector$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/presssensor/PressGestureDetector$1;-><init>(Lcn/nubia/server/presssensor/PressGestureDetector;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mUserActivityRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector$MyHandler;-><init>(Lcn/nubia/server/presssensor/PressGestureDetector;Lcn/nubia/server/presssensor/PressGestureDetector$1;)V

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object p2, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    .line 119
    iput-object p3, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 120
    const-string/jumbo v0, "power"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mPowerManager:Landroid/os/PowerManager;

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "presssensor.useractivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mUserActivityHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/presssensor/PressGestureDetector;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureDetector;

    .line 15
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/presssensor/PressGestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureDetector;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mUserActivityHandled:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/server/presssensor/PressGestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureDetector;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mInLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/presssensor/PressGestureDetector;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureDetector;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/presssensor/PressGestureDetector;->notifyGesture(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/presssensor/PressGestureDetector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureDetector;

    .line 15
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/server/presssensor/PressGestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureDetector;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDoubleHolding:Z

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/server/presssensor/PressGestureDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureDetector;

    .line 15
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsHoldDownSatisfied:Z

    return v0
.end method

.method static synthetic access$702(Lcn/nubia/server/presssensor/PressGestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/presssensor/PressGestureDetector;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mDeferConfirmSingleHold:Z

    return p1
.end method

.method private checkLeftHoldDown()V
    .locals 2

    .line 310
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsLeftDown:Z

    .line 312
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleSideCurrentTimeSimultaneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->performHoldDown(J)V

    goto :goto_0

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsLeftDown:Z

    .line 318
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsRightDown:Z

    if-eqz v0, :cond_1

    .line 319
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleSideCurrentTimeSimultaneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->performHoldDown(J)V

    .line 325
    :cond_1
    :goto_0
    return-void
.end method

.method private checkLeftHoldUp()V
    .locals 2

    .line 328
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isIgnorePress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->reachUp(J)V

    goto :goto_0

    .line 330
    :cond_0
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    .line 331
    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->reachUp(J)V

    .line 334
    :cond_1
    :goto_0
    return-void
.end method

.method private checkPaintEggLeftHoldDown()V
    .locals 2

    .line 274
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPaintEggPressDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggLeftDown:Z

    .line 276
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleSideCurrentTimeSimultaneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->performPaintEggHoldDown(J)V

    goto :goto_0

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggLeftDown:Z

    .line 282
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggRightDown:Z

    if-eqz v0, :cond_1

    .line 283
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleSideCurrentTimeSimultaneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->performPaintEggHoldDown(J)V

    .line 289
    :cond_1
    :goto_0
    return-void
.end method

.method private checkPaintEggRightHoldDown()V
    .locals 2

    .line 292
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPaintEggPressDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggRightDown:Z

    .line 294
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleSideCurrentTimeSimultaneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->performPaintEggHoldDown(J)V

    goto :goto_0

    .line 299
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggRightDown:Z

    .line 300
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggLeftDown:Z

    if-eqz v0, :cond_1

    .line 301
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleSideCurrentTimeSimultaneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->performPaintEggHoldDown(J)V

    .line 307
    :cond_1
    :goto_0
    return-void
.end method

.method private checkRightHoldDown()V
    .locals 2

    .line 353
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsRightDown:Z

    .line 355
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleSideCurrentTimeSimultaneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->performHoldDown(J)V

    goto :goto_0

    .line 360
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsRightDown:Z

    .line 361
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsLeftDown:Z

    if-eqz v0, :cond_1

    .line 362
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleSideCurrentTimeSimultaneous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->performHoldDown(J)V

    .line 368
    :cond_1
    :goto_0
    return-void
.end method

.method private checkRightHoldUp()V
    .locals 2

    .line 371
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isIgnorePress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->reachUp(J)V

    goto :goto_0

    .line 373
    :cond_0
    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    .line 374
    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isPressUp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentTime:J

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->reachUp(J)V

    .line 377
    :cond_1
    :goto_0
    return-void
.end method

.method private clearCache()V
    .locals 3

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsHoldDownSatisfied:Z

    .line 453
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggHoldDownSatisfied:Z

    .line 454
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mInLongPress:Z

    .line 455
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDoubleHolding:Z

    .line 456
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsLeftDown:Z

    .line 457
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsRightDown:Z

    .line 458
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mDeferConfirmSingleHold:Z

    .line 459
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldDownTime:J

    .line 460
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    .line 461
    iput v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    .line 462
    iput v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftIgnoreCount:I

    .line 463
    iput v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightIgnoreCount:I

    .line 464
    return-void
.end method

.method private handleDownUp(IJ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "time"    # J

    .line 161
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 162
    const-string v0, "PressSensorService"

    const-string v1, "[GestureDetector] press down"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->performDown()V

    goto :goto_0

    .line 165
    :cond_0
    const-string v0, "PressSensorService"

    const-string v1, "[GestureDetector] press up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, p2, p3}, Lcn/nubia/server/presssensor/PressGestureDetector;->performUp(J)V

    .line 168
    :goto_0
    return-void
.end method

.method private handleLeftPress(IJ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "time"    # J

    .line 258
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDown:Z

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    iput p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentValue:I

    .line 262
    iput-wide p2, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentTime:J

    .line 263
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsHoldDownSatisfied:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->checkLeftHoldUp()V

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->checkLeftHoldDown()V

    .line 268
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggHoldDownSatisfied:Z

    if-nez v0, :cond_2

    .line 269
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->checkPaintEggLeftHoldDown()V

    .line 271
    :cond_2
    return-void
.end method

.method private handleRightPress(IJ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "time"    # J

    .line 337
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDown:Z

    if-nez v0, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    iput p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentValue:I

    .line 341
    iput-wide p2, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentTime:J

    .line 342
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsHoldDownSatisfied:Z

    if-eqz v0, :cond_1

    .line 343
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->checkRightHoldUp()V

    goto :goto_0

    .line 345
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->checkRightHoldDown()V

    .line 347
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggHoldDownSatisfied:Z

    if-nez v0, :cond_2

    .line 348
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->checkPaintEggRightHoldDown()V

    .line 350
    :cond_2
    return-void
.end method

.method private isDoubleHoldEnable()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->isDoubleHoldEnable()Z

    move-result v0

    return v0
.end method

.method private isDoubleSideCurrentTimeSimultaneous()Z
    .locals 4

    .line 380
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLeftCurrentTime:J

    iget-wide v2, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mRightCurrentTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isIgnorePress(I)Z
    .locals 1
    .param p1, "press"    # I

    .line 439
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLongHoldEnable()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->isLongHoldEnable()Z

    move-result v0

    return v0
.end method

.method private isPaintEggPressDown(I)Z
    .locals 1
    .param p1, "press"    # I

    .line 426
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->getThreshold()I

    move-result v0

    add-int/lit16 v0, v0, 0x2bc

    if-lt p1, v0, :cond_0

    const/16 v0, 0x76c

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPressDown(I)Z
    .locals 1
    .param p1, "press"    # I

    .line 431
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mPressGestureSettings:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->getThreshold()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPressUp(I)Z
    .locals 1
    .param p1, "press"    # I

    .line 435
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logGestureInfo(J)V
    .locals 3
    .param p1, "time"    # J

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[GestureDetector] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mInLongPress:Z

    if-eqz v1, :cond_0

    .line 187
    const-string/jumbo v1, "long press:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mInLongPress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mDeferConfirmSingleHold:Z

    if-eqz v1, :cond_1

    .line 190
    const-string v1, "defer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mDeferConfirmSingleHold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_1
    const-string v1, "down time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldDownTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v1, "up time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string/jumbo v1, "time gap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldDownTime:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDoubleHolding:Z

    if-eqz v1, :cond_2

    .line 196
    const-string v1, ", double hold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDoubleHolding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ", last down time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLastHoldDownTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, ", double hold time gap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLastHoldDownTime:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    :cond_2
    const-string v1, "PressSensorService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method private notifyGesture(I)V
    .locals 3
    .param p1, "gesture"    # I

    .line 443
    const-string v0, "PressSensorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GestureDetector] press gesture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-static {p1}, Lnubia/os/presssensor/PressSensorManager;->getGestureLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldListener:Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldListener:Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;

    invoke-interface {v0, p1}, Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;->onHoldGesture(I)V

    .line 449
    :cond_0
    return-void
.end method

.method private performDown()V
    .locals 1

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDown:Z

    .line 172
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->clearCache()V

    .line 173
    return-void
.end method

.method private performHoldDown(J)V
    .locals 7
    .param p1, "time"    # J

    .line 384
    const-string v0, "PressSensorService"

    const-string v1, "[GestureDetector] double down"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-wide p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldDownTime:J

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsHoldDownSatisfied:Z

    .line 387
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->notifyGesture(I)V

    .line 388
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isLongHoldEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 393
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleHoldEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    .line 395
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 396
    .local v1, "hadTapMessage":Z
    const-wide/16 v3, 0x258

    if-eqz v1, :cond_1

    .line 397
    iget-object v5, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    iget-wide v5, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLastHoldUpTime:J

    sub-long v5, p1, v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 399
    const-string v5, "PressSensorService"

    const-string v6, "[GestureDetector] maybe double hold"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDoubleHolding:Z

    .line 403
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    add-long/2addr v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 406
    .end local v1    # "hadTapMessage":Z
    :cond_2
    return-void
.end method

.method private performPaintEggHoldDown(J)V
    .locals 4
    .param p1, "time"    # J

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsPaintEggHoldDownSatisfied:Z

    .line 410
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mPressGestureMutex:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-virtual {v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->isPaintEggPermited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 412
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 414
    :cond_0
    return-void
.end method

.method private performUp(J)V
    .locals 1
    .param p1, "time"    # J

    .line 176
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDown:Z

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDown:Z

    .line 180
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/presssensor/PressGestureDetector;->reachUp(J)V

    .line 181
    return-void
.end method

.method private reachUp(J)V
    .locals 7
    .param p1, "time"    # J

    .line 205
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsHoldDownSatisfied:Z

    if-nez v0, :cond_0

    .line 206
    const-string v0, "PressSensorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GestureDetector] up satisfied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsHoldDownSatisfied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 209
    :cond_0
    iput-wide p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLastHoldUpTime:J

    .line 210
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/presssensor/PressGestureDetector;->logGestureInfo(J)V

    .line 212
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->notifyGesture(I)V

    .line 214
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mInLongPress:Z

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 215
    invoke-direct {p0, v2}, Lcn/nubia/server/presssensor/PressGestureDetector;->notifyGesture(I)V

    goto :goto_0

    .line 217
    :cond_1
    iget-wide v3, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldDownTime:J

    sub-long v3, p1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 218
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsDoubleHolding:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleHoldEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->notifyGesture(I)V

    .line 220
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    iput-wide p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mDoubleHoldTime:J

    goto :goto_0

    .line 222
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsHoldDownSatisfied:Z

    if-eqz v0, :cond_5

    .line 223
    invoke-direct {p0, v1}, Lcn/nubia/server/presssensor/PressGestureDetector;->notifyGesture(I)V

    .line 224
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mDeferConfirmSingleHold:Z

    if-eqz v0, :cond_3

    .line 225
    invoke-direct {p0, v3}, Lcn/nubia/server/presssensor/PressGestureDetector;->notifyGesture(I)V

    .line 227
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->shieldContinuousGesture()V

    goto :goto_0

    .line 230
    :cond_4
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->notifyGesture(I)V

    .line 233
    :cond_5
    :goto_0
    iget-wide v3, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldDownTime:J

    iput-wide v3, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mLastHoldDownTime:J

    .line 234
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->clearCache()V

    .line 238
    return-void
.end method

.method private shieldContinuousGesture()V
    .locals 5

    .line 243
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->isDoubleHoldEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-wide v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldDownTime:J

    iget-wide v2, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mDoubleHoldTime:J

    sub-long/2addr v0, v2

    .line 245
    .local v0, "gap":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 246
    const-string v2, "PressSensorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GestureDetector] time gap :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " is small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    .end local v0    # "gap":J
    :cond_0
    return-void
.end method

.method private userActivity()V
    .locals 2

    .line 417
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mUserActivityHandled:Z

    if-eqz v0, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mUserActivityHandled:Z

    .line 421
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mUserActivityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mUserActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method


# virtual methods
.method public onPressChanged(Lnubia/os/presssensor/PressEvent;)V
    .locals 5
    .param p1, "event"    # Lnubia/os/presssensor/PressEvent;

    .line 140
    invoke-virtual {p1}, Lnubia/os/presssensor/PressEvent;->getValue()I

    move-result v0

    .line 141
    .local v0, "value":I
    invoke-virtual {p1}, Lnubia/os/presssensor/PressEvent;->getEventTime()J

    move-result-wide v1

    .line 142
    .local v1, "time":J
    invoke-virtual {p1}, Lnubia/os/presssensor/PressEvent;->getMask()I

    move-result v3

    const/16 v4, 0x152

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/presssensor/PressGestureDetector;->handleRightPress(IJ)V

    .line 151
    goto :goto_0

    .line 147
    :pswitch_1
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/presssensor/PressGestureDetector;->handleLeftPress(IJ)V

    .line 148
    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/presssensor/PressGestureDetector;->handleDownUp(IJ)V

    .line 145
    nop

    .line 155
    :goto_0
    iget-boolean v3, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsHoldDownSatisfied:Z

    if-eqz v3, :cond_1

    .line 156
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->userActivity()V

    .line 158
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .line 467
    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsLeftDown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mIsRightDown:Z

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/presssensor/PressGestureDetector;->clearCache()V

    .line 469
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressGestureDetector;->notifyGesture(I)V

    .line 475
    :cond_1
    return-void
.end method

.method public setOnHoldListener(Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;

    .line 128
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector;->mHoldListener:Lcn/nubia/server/presssensor/PressGestureDetector$OnHoldGestureListener;

    .line 129
    return-void
.end method
