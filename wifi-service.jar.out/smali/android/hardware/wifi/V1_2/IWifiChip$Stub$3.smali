.class Landroid/hardware/wifi/V1_2/IWifiChip$Stub$3;
.super Ljava/lang/Object;
.source "IWifiChip.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/V1_2/IWifiChip$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/V1_2/IWifiChip$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/V1_2/IWifiChip$Stub;

    .line 1434
    iput-object p1, p0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$3;->this$0:Landroid/hardware/wifi/V1_2/IWifiChip$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/WifiStatus;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;",
            ">;)V"
        }
    .end annotation

    .line 1437
    .local p2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;>;"
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1438
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1439
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1440
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1441
    return-void
.end method
