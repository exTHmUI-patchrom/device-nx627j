.class public final synthetic Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Landroid/util/SparseLongArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;IZLandroid/util/SparseLongArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0;->f$1:I

    iput-boolean p3, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0;->f$2:Z

    iput-object p4, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0;->f$3:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(IJJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0;->f$1:I

    iget-boolean v2, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0;->f$2:Z

    iget-object v3, p0, Lcom/android/internal/os/-$$Lambda$BatteryStatsImpl$cVkGM5pv4uMLFgnMwqPRDhEl5a0;->f$3:Landroid/util/SparseLongArray;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuTimesLocked$0(Lcom/android/internal/os/BatteryStatsImpl;IZLandroid/util/SparseLongArray;IJJ)V

    return-void
.end method
