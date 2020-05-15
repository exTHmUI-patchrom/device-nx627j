.class public Lcom/android/internal/telephony/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;
    }
.end annotation


# instance fields
.field private mCurrentDelayMs:J

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

.field private mMaximumDelayMs:J

.field private mMultiplier:I

.field private mRetryCounter:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartDelayMs:J


# direct methods
.method public constructor <init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "initialDelayMs"    # J
    .param p3, "maximumDelayMs"    # J
    .param p5, "multiplier"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/internal/telephony/ExponentialBackoff$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ExponentialBackoff$1;-><init>(Lcom/android/internal/telephony/ExponentialBackoff;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    .line 75
    iput-wide p3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    .line 76
    iput p5, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    .line 77
    iput-object p6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p7, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method public constructor <init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "initialDelayMs"    # J
    .param p3, "maximumDelayMs"    # J
    .param p5, "multiplier"    # I
    .param p6, "looper"    # Landroid/os/Looper;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 64
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ExponentialBackoff;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ExponentialBackoff;

    .line 26
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getCurrentDelay()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    return-wide v0
.end method

.method public notifyFailed()V
    .locals 8

    .line 97
    iget v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 98
    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    long-to-double v2, v2

    iget v4, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    int-to-double v4, v4

    iget v6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    int-to-double v6, v6

    .line 99
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 98
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 100
    .local v0, "temp":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v2

    long-to-double v2, v0

    mul-double/2addr v4, v2

    double-to-long v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 101
    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

.method public setHandlerAdapter(Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;)V
    .locals 0
    .param p1, "a"    # Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    .line 113
    return-void
.end method

.method public start()V
    .locals 4

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 84
    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    iput-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method

.method public stop()V
    .locals 2

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandlerAdapter:Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
