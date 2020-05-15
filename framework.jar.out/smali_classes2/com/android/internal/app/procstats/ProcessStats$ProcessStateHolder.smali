.class public final Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessStateHolder"
.end annotation


# instance fields
.field public final appVersion:J

.field public state:Lcom/android/internal/app/procstats/ProcessState;


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "_appVersion"    # J

    .line 1854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1855
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1856
    return-void
.end method
