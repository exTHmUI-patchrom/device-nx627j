.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalOnlyHotspotReservation"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfig:Landroid/net/wifi/WifiConfiguration;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2720
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2715
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2721
    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2722
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 2723
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2732
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)V

    .line 2733
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2736
    goto :goto_0

    .line 2734
    :catch_0
    move-exception v0

    .line 2735
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiManager"

    const-string v2, "Failed to stop Local Only Hotspot."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2742
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2743
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2745
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2747
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2748
    nop

    .line 2749
    return-void

    .line 2747
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 2726
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method
