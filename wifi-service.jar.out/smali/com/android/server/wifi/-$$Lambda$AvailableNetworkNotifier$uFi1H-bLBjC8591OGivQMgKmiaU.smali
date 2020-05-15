.class public final synthetic Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$uFi1H-bLBjC8591OGivQMgKmiaU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/AvailableNetworkNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$uFi1H-bLBjC8591OGivQMgKmiaU;->f$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$uFi1H-bLBjC8591OGivQMgKmiaU;->f$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0, p1}, Lcom/android/server/wifi/AvailableNetworkNotifier;->lambda$new$0(Lcom/android/server/wifi/AvailableNetworkNotifier;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
