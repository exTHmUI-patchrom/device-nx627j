.class public final synthetic Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$RvX7FGUhmxm-qNliFXxQKKDHrRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$getIdCallback;


# instance fields
.field private final synthetic f$0:Landroid/util/MutableInt;

.field private final synthetic f$1:Landroid/util/MutableBoolean;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$RvX7FGUhmxm-qNliFXxQKKDHrRc;->f$0:Landroid/util/MutableInt;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$RvX7FGUhmxm-qNliFXxQKKDHrRc;->f$1:Landroid/util/MutableBoolean;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$RvX7FGUhmxm-qNliFXxQKKDHrRc;->f$0:Landroid/util/MutableInt;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$HalDeviceManager$RvX7FGUhmxm-qNliFXxQKKDHrRc;->f$1:Landroid/util/MutableBoolean;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$getSupportedIfaceTypesInternal$18(Landroid/util/MutableInt;Landroid/util/MutableBoolean;Landroid/hardware/wifi/V1_0/WifiStatus;I)V

    return-void
.end method
