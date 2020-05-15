.class Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$3;
.super Ljava/lang/Object;
.source "ISupplicant.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$addInterfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;

    .line 774
    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$3;->this$0:Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "iface"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    .line 777
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 778
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 779
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 780
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 781
    return-void
.end method
