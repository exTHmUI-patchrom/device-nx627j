.class Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$6;
.super Ljava/lang/Object;
.source "ISupplicantStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;

    .line 1812
    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$6;->this$0:Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 3
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "macAddr"    # [B

    .line 1815
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1816
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1818
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1820
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    .line 1821
    .local v1, "_hidl_array_offset_0":J
    invoke-virtual {v0, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1822
    nop

    .line 1824
    .end local v1    # "_hidl_array_offset_0":J
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1826
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIface$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1827
    return-void
.end method
