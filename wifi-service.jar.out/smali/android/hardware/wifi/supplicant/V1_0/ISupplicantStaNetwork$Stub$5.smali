.class Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;

    .line 4398
    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;->this$0:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 3
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "bssid"    # [B

    .line 4401
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4402
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4404
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 4406
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    .line 4407
    .local v1, "_hidl_array_offset_0":J
    invoke-virtual {v0, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4408
    nop

    .line 4410
    .end local v1    # "_hidl_array_offset_0":J
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4412
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 4413
    return-void
.end method
