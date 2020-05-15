.class public final synthetic Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/List;

.field private final synthetic f$3:Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;->f$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iput p2, p0, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;->f$1:I

    iput-object p3, p0, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;->f$3:Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;->f$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget v1, p0, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;->f$1:I

    iget-object v2, p0, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/wifi/aware/-$$Lambda$WifiAwareStateManager$k1e2sgI9ioQdd4UFKxciMG2eSr4;->f$3:Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->lambda$requestMacAddresses$0(Lcom/android/server/wifi/aware/WifiAwareStateManager;ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V

    return-void
.end method
