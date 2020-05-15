.class public final synthetic Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$fIUenOK3XCnkKxNOfiG4FqrVP9c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/AvailableNetworkNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$fIUenOK3XCnkKxNOfiG4FqrVP9c;->f$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$fIUenOK3XCnkKxNOfiG4FqrVP9c;->f$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->lambda$handleWifiConnected$1(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    return-void
.end method
