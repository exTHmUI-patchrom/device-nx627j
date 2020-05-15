.class public final synthetic Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$mMCK0IbpOZu45KINuNCoRayjoDU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$mMCK0IbpOZu45KINuNCoRayjoDU;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean p2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$mMCK0IbpOZu45KINuNCoRayjoDU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onUidCpuActiveTime(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$mMCK0IbpOZu45KINuNCoRayjoDU;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$mMCK0IbpOZu45KINuNCoRayjoDU;->f$1:Z

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuActiveTimesLocked$2(Lcom/android/internal/os/BatteryStatsImpl;ZIJ)V

    return-void
.end method
