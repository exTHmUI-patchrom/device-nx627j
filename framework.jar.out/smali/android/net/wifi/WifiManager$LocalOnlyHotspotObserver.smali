.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalOnlyHotspotObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;)V
    .locals 0
    .param p1, "subscription"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;

    .line 2920
    return-void
.end method

.method public onStarted(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 2925
    return-void
.end method

.method public onStopped()V
    .locals 0

    .line 2930
    return-void
.end method
