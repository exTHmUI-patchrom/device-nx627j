.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/HalDeviceManager;

.field private final synthetic f$1:Landroid/util/MutableBoolean;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

.field private final synthetic f$4:Landroid/util/MutableInt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$0:Lcom/android/server/wifi/HalDeviceManager;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$1:Landroid/util/MutableBoolean;

    iput-object p3, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$3:[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    iput-object p5, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$4:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$0:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$1:Landroid/util/MutableBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$3:[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    iget-object v4, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$OTxRCq8TAZZlX8UFhmqaHcpXJYQ;->f$4:Landroid/util/MutableInt;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/wifi/HalDeviceManager;->lambda$getAllChipInfo$17(Lcom/android/server/wifi/HalDeviceManager;Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V

    return-void
.end method
