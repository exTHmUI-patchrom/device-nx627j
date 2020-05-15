.class Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;
.super Ljava/lang/Object;
.source "IWifiRttController.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;

    .line 908
    iput-object p1, p0, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;->this$0:Landroid/hardware/wifi/V1_0/IWifiRttController$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/RttResponder;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "info"    # Landroid/hardware/wifi/V1_0/RttResponder;

    .line 911
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 912
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 913
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Landroid/hardware/wifi/V1_0/RttResponder;->writeToParcel(Landroid/os/HwParcel;)V

    .line 914
    iget-object v0, p0, Landroid/hardware/wifi/V1_0/IWifiRttController$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 915
    return-void
.end method
