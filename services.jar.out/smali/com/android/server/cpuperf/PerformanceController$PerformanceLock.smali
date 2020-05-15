.class public Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
.super Ljava/lang/Object;
.source "PerformanceController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpuperf/PerformanceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerformanceLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;
    }
.end annotation


# instance fields
.field public mAcquireTime:J

.field private mCallback:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;

.field public mDuration:J

.field public mTag:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mToken:Landroid/os/IBinder;

    .line 189
    iput-object p2, p0, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    .line 190
    iput p3, p0, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    .line 191
    iput-wide p4, p0, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mDuration:J

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mAcquireTime:J

    .line 193
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 175
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mCallback:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mCallback:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;

    invoke-interface {v0}, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;->binderDied()V

    .line 203
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;

    .line 196
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mCallback:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;

    .line 197
    return-void
.end method
