.class Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$7;
.super Ljava/lang/Object;
.source "IWifiStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;

    .line 1249
    iput-object p1, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$7;->this$0:Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .param p2, "stats"    # Landroid/hardware/wifi/V1_0/StaLinkLayerStats;

    .line 1252
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1253
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1254
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Landroid/hardware/wifi/V1_0/StaLinkLayerStats;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1255
    iget-object v0, p0, Landroid/hardware/wifi/V1_2/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1256
    return-void
.end method
