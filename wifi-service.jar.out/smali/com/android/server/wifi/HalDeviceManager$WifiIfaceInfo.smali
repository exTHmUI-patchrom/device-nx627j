.class Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;
.super Ljava/lang/Object;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiIfaceInfo"
.end annotation


# instance fields
.field public iface:Landroid/hardware/wifi/V1_0/IWifiIface;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/HalDeviceManager;
    .param p2, "x1"    # Lcom/android/server/wifi/HalDeviceManager$1;

    .line 533
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    return-void
.end method
