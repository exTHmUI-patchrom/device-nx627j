.class public Lcom/android/internal/os/BinderCallsStats$CallSession;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallSession"
.end annotation


# instance fields
.field mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

.field mCallingUId:I

.field mStarted:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$CallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$CallStat;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    return-void
.end method
