.class Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;
.super Ljava/lang/Object;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;

    .line 2469
    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;->this$0:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "type"    # I

    .line 2472
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2473
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2474
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2475
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 2476
    return-void
.end method
