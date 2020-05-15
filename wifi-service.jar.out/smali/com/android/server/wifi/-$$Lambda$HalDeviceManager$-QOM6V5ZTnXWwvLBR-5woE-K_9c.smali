.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$-QOM6V5ZTnXWwvLBR-5woE-K_9c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$getModeCallback;


# instance fields
.field private final synthetic f$0:Landroid/util/MutableBoolean;

.field private final synthetic f$1:Landroid/util/MutableBoolean;

.field private final synthetic f$2:Landroid/util/MutableInt;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$-QOM6V5ZTnXWwvLBR-5woE-K_9c;->f$0:Landroid/util/MutableBoolean;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$-QOM6V5ZTnXWwvLBR-5woE-K_9c;->f$1:Landroid/util/MutableBoolean;

    iput-object p3, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$-QOM6V5ZTnXWwvLBR-5woE-K_9c;->f$2:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$-QOM6V5ZTnXWwvLBR-5woE-K_9c;->f$0:Landroid/util/MutableBoolean;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$-QOM6V5ZTnXWwvLBR-5woE-K_9c;->f$1:Landroid/util/MutableBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$-QOM6V5ZTnXWwvLBR-5woE-K_9c;->f$2:Landroid/util/MutableInt;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$getAllChipInfo$9(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;I)V

    return-void
.end method
