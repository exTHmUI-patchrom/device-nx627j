.class public final synthetic Lcom/android/server/wifi/rtt/-$$Lambda$RttNative$nRSOFcP2WhqxmfStf2OeZAekTCY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/rtt/RttNative;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttNative$nRSOFcP2WhqxmfStf2OeZAekTCY;->f$0:Lcom/android/server/wifi/rtt/RttNative;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttCapabilities;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttNative$nRSOFcP2WhqxmfStf2OeZAekTCY;->f$0:Lcom/android/server/wifi/rtt/RttNative;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/rtt/RttNative;->lambda$updateRttCapabilities$1(Lcom/android/server/wifi/rtt/RttNative;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttCapabilities;)V

    return-void
.end method
