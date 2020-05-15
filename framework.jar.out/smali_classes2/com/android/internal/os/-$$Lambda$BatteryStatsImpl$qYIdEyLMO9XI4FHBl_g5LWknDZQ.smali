.class public final synthetic Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z

.field private final synthetic f$4:I

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;ZZZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean p2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$1:Z

    iput-boolean p3, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$2:Z

    iput-boolean p4, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$3:Z

    iput p5, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$4:I

    iput p6, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$5:I

    return-void
.end method


# virtual methods
.method public final onUidCpuFreqTime(I[J)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$1:Z

    iget-boolean v2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$2:Z

    iget-boolean v3, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$3:Z

    iget v4, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$4:I

    iget v5, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$qYIdEyLMO9XI4FHBl_g5LWknDZQ;->f$5:I

    move v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuFreqTimesLocked$1(Lcom/android/internal/os/BatteryStatsImpl;ZZZIII[J)V

    return-void
.end method
