.class Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$6;
.super Ljava/lang/Object;
.source "ISupplicantVendorStaNetwork.java"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$getWapiPskTypeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;

    .line 1970
    iput-object p1, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$6;->this$0:Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub;

    iput-object p2, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "type"    # I

    .line 1973
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1974
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1975
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1976
    iget-object v0, p0, Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaNetwork$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1977
    return-void
.end method
