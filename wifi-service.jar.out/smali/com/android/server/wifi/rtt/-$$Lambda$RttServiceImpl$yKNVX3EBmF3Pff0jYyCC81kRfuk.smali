.class public final synthetic Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$yKNVX3EBmF3Pff0jYyCC81kRfuk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

.field private final synthetic f$1:Landroid/os/WorkSource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/WorkSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$yKNVX3EBmF3Pff0jYyCC81kRfuk;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$yKNVX3EBmF3Pff0jYyCC81kRfuk;->f$1:Landroid/os/WorkSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$yKNVX3EBmF3Pff0jYyCC81kRfuk;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$yKNVX3EBmF3Pff0jYyCC81kRfuk;->f$1:Landroid/os/WorkSource;

    invoke-static {v0, v1}, Lcom/android/server/wifi/rtt/RttServiceImpl;->lambda$cancelRanging$4(Lcom/android/server/wifi/rtt/RttServiceImpl;Landroid/os/WorkSource;)V

    return-void
.end method
