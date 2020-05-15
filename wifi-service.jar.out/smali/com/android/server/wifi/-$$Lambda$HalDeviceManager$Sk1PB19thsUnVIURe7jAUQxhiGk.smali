.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Sk1PB19thsUnVIURe7jAUQxhiGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;


# instance fields
.field private final synthetic f$0:Landroid/os/HidlSupport$Mutable;

.field private final synthetic f$1:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Sk1PB19thsUnVIURe7jAUQxhiGk;->f$0:Landroid/os/HidlSupport$Mutable;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Sk1PB19thsUnVIURe7jAUQxhiGk;->f$1:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiApIface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Sk1PB19thsUnVIURe7jAUQxhiGk;->f$0:Landroid/os/HidlSupport$Mutable;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$Sk1PB19thsUnVIURe7jAUQxhiGk;->f$1:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$executeChipReconfiguration$20(Landroid/os/HidlSupport$Mutable;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiApIface;)V

    return-void
.end method
