.class Landroid/os/SystemClock$3;
.super Landroid/os/SimpleClock;
.source "SystemClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/time/ZoneId;)V
    .locals 0
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 309
    invoke-direct {p0, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
