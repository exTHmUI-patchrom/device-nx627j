.class public final Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidToRemove"
.end annotation


# instance fields
.field endUid:I

.field startUid:I

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field timeAddedInQueue:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;IIJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "startUid"    # I
    .param p3, "endUid"    # I
    .param p4, "timestamp"    # J

    .line 292
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    .line 294
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->endUid:I

    .line 295
    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->timeAddedInQueue:J

    .line 296
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;IJ)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J

    .line 288
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IIJ)V

    .line 289
    return-void
.end method


# virtual methods
.method remove()V
    .locals 3

    .line 299
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->endUid:I

    if-ne v0, v1, :cond_2

    .line 300
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->removeUid(I)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$Constants;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->removeUid(I)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->removeUid(I)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelSingleUidTimeReader:Lcom/android/internal/os/KernelSingleUidTimeReader;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelSingleUidTimeReader:Lcom/android/internal/os/KernelSingleUidTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelSingleUidTimeReader;->removeUid(I)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$108(Lcom/android/internal/os/BatteryStatsImpl;)I

    goto :goto_0

    .line 310
    :cond_2
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->endUid:I

    if-ge v0, v1, :cond_5

    .line 311
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->endUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->removeUidsInRange(II)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->endUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsInRange(II)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$Constants;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->endUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->removeUidsInRange(II)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->endUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->removeUidsInRange(II)V

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelSingleUidTimeReader:Lcom/android/internal/os/KernelSingleUidTimeReader;

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mKernelSingleUidTimeReader:Lcom/android/internal/os/KernelSingleUidTimeReader;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->endUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelSingleUidTimeReader;->removeUidsInRange(II)V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$108(Lcom/android/internal/os/BatteryStatsImpl;)I

    goto :goto_0

    .line 323
    :cond_5
    const-string v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->endUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is smaller than start UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$UidToRemove;->startUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void
.end method
