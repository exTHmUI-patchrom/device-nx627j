.class Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$7;
.super Ljava/lang/Object;
.source "ISupplicantVendorStaIface.java"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppStartListenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;

    .line 1168
    iput-object p1, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$7;->this$0:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub;

    iput-object p2, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "listen_status"    # I

    .line 1171
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1173
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1174
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1175
    return-void
.end method
