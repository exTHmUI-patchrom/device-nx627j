.class public final synthetic Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pNative$OugPqsliuKv73AxYwflB8JKX3Gg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/p2p/WifiP2pNative;

.field private final synthetic f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pNative;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pNative$OugPqsliuKv73AxYwflB8JKX3Gg;->f$0:Lcom/android/server/wifi/p2p/WifiP2pNative;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pNative$OugPqsliuKv73AxYwflB8JKX3Gg;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onStatusChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pNative$OugPqsliuKv73AxYwflB8JKX3Gg;->f$0:Lcom/android/server/wifi/p2p/WifiP2pNative;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$WifiP2pNative$OugPqsliuKv73AxYwflB8JKX3Gg;->f$1:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pNative;->lambda$registerInterfaceAvailableListener$0(Lcom/android/server/wifi/p2p/WifiP2pNative;Landroid/os/Handler;)V

    return-void
.end method
