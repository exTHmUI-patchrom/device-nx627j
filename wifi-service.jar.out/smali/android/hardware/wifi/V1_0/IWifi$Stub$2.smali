.class Landroid/hardware/wifi/V1_0/IWifi$Stub$2;
.super Ljava/lang/Object;
.source "IWifi.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifi$getChipCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/V1_0/IWifi$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/V1_0/IWifi$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/V1_0/IWifi$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/V1_0/IWifi$Stub;

    .line 664
    iput-object p1, p0, Landroid/hardware/wifi/V1_0/IWifi$Stub$2;->this$0:Landroid/hardware/wifi/V1_0/IWifi$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/V1_0/IWifi$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiChip;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "chip"    # Landroid/hardware/wifi/V1_0/IWifiChip;

    .line 667
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifi$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 668
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifi$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 669
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifi$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/hardware/wifi/V1_0/IWifiChip;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 670
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifi$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 671
    return-void
.end method
