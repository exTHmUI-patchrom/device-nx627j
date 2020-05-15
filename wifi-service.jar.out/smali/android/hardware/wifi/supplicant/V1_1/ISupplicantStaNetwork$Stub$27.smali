.class Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$27;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;


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

    .line 3104
    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$27;->this$0:Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .param p2, "match"    # Ljava/lang/String;

    .line 3107
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3108
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3109
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3110
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaNetwork$Stub$27;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 3111
    return-void
.end method
