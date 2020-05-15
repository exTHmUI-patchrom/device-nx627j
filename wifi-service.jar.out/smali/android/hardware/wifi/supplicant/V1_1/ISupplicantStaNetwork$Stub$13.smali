.class Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$13;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;

    .line 2815
    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$13;->this$0:Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$13;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 3
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "psk"    # [B

    .line 2818
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$13;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2819
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$13;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2821
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 2823
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    .line 2824
    .local v1, "_hidl_array_offset_0":J
    invoke-virtual {v0, v1, v2, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2825
    nop

    .line 2827
    .end local v1    # "_hidl_array_offset_0":J
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$13;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2829
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$13;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 2830
    return-void
.end method
