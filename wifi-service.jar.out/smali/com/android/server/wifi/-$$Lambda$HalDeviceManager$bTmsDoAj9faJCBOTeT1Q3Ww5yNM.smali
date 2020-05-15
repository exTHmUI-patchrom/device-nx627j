.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$bTmsDoAj9faJCBOTeT1Q3Ww5yNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiIface$getNameCallback;


# instance fields
.field private final synthetic f$0:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$bTmsDoAj9faJCBOTeT1Q3Ww5yNM;->f$0:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$bTmsDoAj9faJCBOTeT1Q3Ww5yNM;->f$0:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$getName$0(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    return-void
.end method
