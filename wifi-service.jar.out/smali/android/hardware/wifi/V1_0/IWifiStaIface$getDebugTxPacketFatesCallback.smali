.class public interface abstract Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;
.super Ljava/lang/Object;
.source "IWifiStaIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/V1_0/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "getDebugTxPacketFatesCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/WifiStatus;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/WifiDebugTxPacketFateReport;",
            ">;)V"
        }
    .end annotation
.end method
