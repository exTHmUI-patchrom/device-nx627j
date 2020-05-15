.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$k9eVxsOG1LRUZZleL_AuVGTIJGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiStateMachinePrime;

.field private final synthetic f$1:Lcom/android/server/wifi/SoftApModeConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/SoftApModeConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$k9eVxsOG1LRUZZleL_AuVGTIJGg;->f$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$k9eVxsOG1LRUZZleL_AuVGTIJGg;->f$1:Lcom/android/server/wifi/SoftApModeConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$k9eVxsOG1LRUZZleL_AuVGTIJGg;->f$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$k9eVxsOG1LRUZZleL_AuVGTIJGg;->f$1:Lcom/android/server/wifi/SoftApModeConfiguration;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachinePrime;->lambda$enterSoftAPMode$0(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/SoftApModeConfiguration;)V

    return-void
.end method
