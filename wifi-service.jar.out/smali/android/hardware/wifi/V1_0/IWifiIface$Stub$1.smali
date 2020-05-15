.class Landroid/hardware/wifi/V1_0/IWifiIface$Stub$1;
.super Ljava/lang/Object;
.source "IWifiIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiIface$getTypeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/V1_0/IWifiIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/V1_0/IWifiIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/V1_0/IWifiIface$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/V1_0/IWifiIface$Stub;

    .line 435
    iput-object p1, p0, Landroid/hardware/wifi/V1_0/IWifiIface$Stub$1;->this$0:Landroid/hardware/wifi/V1_0/IWifiIface$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/V1_0/IWifiIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/V1_0/WifiStatus;I)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "type"    # I

    .line 438
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 439
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 440
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 441
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiIface$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 442
    return-void
.end method
