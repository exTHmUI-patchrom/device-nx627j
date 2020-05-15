.class Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;
.super Ljava/lang/Object;
.source "ISupplicantP2pNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getClientListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

    .line 1003
    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->this$0:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "status"    # Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .line 1006
    .local p2, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1007
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1009
    new-instance v0, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1011
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1012
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1013
    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1014
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x6

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1015
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1017
    mul-int/lit8 v4, v1, 0x6

    int-to-long v4, v4

    .line 1018
    .local v4, "_hidl_array_offset_1":J
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1019
    nop

    .line 1015
    .end local v4    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1022
    .end local v1    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1024
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1026
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1027
    return-void
.end method
