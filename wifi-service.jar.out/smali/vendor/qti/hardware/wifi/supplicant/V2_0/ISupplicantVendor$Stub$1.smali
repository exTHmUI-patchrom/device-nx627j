.class Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub$1;
.super Ljava/lang/Object;
.source "ISupplicantVendor.java"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$getVendorInterfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub;

    .line 448
    iput-object p1, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub$1;->this$0:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub;

    iput-object p2, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;

    .line 451
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 452
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 453
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 454
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 455
    return-void
.end method
