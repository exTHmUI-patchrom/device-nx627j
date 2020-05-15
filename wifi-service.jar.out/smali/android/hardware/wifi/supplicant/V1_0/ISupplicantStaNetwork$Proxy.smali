.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .line 1942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1943
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 1944
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 1948
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public disable()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3354
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3355
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3357
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3359
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3360
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3361
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3363
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3364
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3365
    nop

    .line 3367
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3365
    return-object v2

    .line 3367
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public enable(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "noConnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3333
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3334
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3335
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 3337
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3339
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3340
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3341
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3343
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3344
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3345
    nop

    .line 3347
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3345
    return-object v2

    .line 3347
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 1963
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAuthAlg(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2820
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2821
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2823
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2825
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2826
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2827
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2829
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2830
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2831
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2832
    .local v3, "_hidl_out_authAlgMask":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2834
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_authAlgMask":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2835
    nop

    .line 2836
    return-void

    .line 2834
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V
    .locals 8
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2728
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2729
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2731
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2733
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2734
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2735
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2737
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2738
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2739
    const/4 v3, 0x6

    new-array v4, v3, [B

    .line 2741
    .local v4, "_hidl_out_bssid":[B
    const-wide/16 v5, 0x6

    invoke-virtual {v1, v5, v6}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 2743
    .local v5, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 2744
    .local v6, "_hidl_array_offset_0":J
    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2745
    nop

    .line 2748
    .end local v5    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-interface {p1, v2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2750
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v4    # "_hidl_out_bssid":[B
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2751
    nop

    .line 2752
    return-void

    .line 2750
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3640
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3641
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3643
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3645
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3646
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3647
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3649
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3650
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3651
    nop

    .line 3653
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3651
    return-object v2

    .line 3653
    .end local v2    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapAltSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3207
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3208
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3210
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3212
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3213
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3216
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3217
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3218
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3219
    .local v3, "_hidl_out_match":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3221
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_match":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3222
    nop

    .line 3223
    return-void

    .line 3221
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapAnonymousIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3060
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3061
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3063
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3065
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3066
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3067
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3069
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3070
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3071
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 3072
    .local v3, "_hidl_out_identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3074
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3075
    nop

    .line 3076
    return-void

    .line 3074
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapCACert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3102
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3103
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3105
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3107
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3108
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3109
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3111
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3112
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3113
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3114
    .local v3, "_hidl_out_path":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3116
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_path":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3117
    nop

    .line 3118
    return-void

    .line 3116
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapCAPath(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3123
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3124
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3126
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3128
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3129
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3130
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3132
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3133
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3134
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3135
    .local v3, "_hidl_out_path":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3137
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_path":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3138
    nop

    .line 3139
    return-void

    .line 3137
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapClientCert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3144
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3145
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3147
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3149
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3150
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3151
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3153
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3154
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3155
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3156
    .local v3, "_hidl_out_path":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3158
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_path":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3159
    nop

    .line 3160
    return-void

    .line 3158
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapDomainSuffixMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3270
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3271
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3273
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3275
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3276
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3277
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3279
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3280
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3281
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3282
    .local v3, "_hidl_out_match":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3284
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_match":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3285
    nop

    .line 3286
    return-void

    .line 3284
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapEngine(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3228
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3229
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3231
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3233
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3234
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3235
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3237
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3238
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3239
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3240
    .local v3, "_hidl_out_enabled":Z
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3242
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_enabled":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3243
    nop

    .line 3244
    return-void

    .line 3242
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapEngineID(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3249
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3250
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3252
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3254
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3255
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3256
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3258
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3259
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3260
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3261
    .local v3, "_hidl_out_id":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3263
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_id":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3264
    nop

    .line 3265
    return-void

    .line 3263
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3039
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3040
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3042
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3044
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3045
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3046
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3048
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3049
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3050
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 3051
    .local v3, "_hidl_out_identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3053
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3054
    nop

    .line 3055
    return-void

    .line 3053
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapMethod(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2997
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2998
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3000
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3002
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3003
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3004
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3006
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3007
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3008
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3009
    .local v3, "_hidl_out_method":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3011
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_method":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3012
    nop

    .line 3013
    return-void

    .line 3011
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapPassword(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3081
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3082
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3084
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3086
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3087
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3088
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3090
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3091
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3092
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 3093
    .local v3, "_hidl_out_password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3095
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3096
    nop

    .line 3097
    return-void

    .line 3095
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapPhase2Method(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3018
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3019
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3021
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3023
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3024
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3025
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3027
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3028
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3029
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3030
    .local v3, "_hidl_out_method":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3032
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_method":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3033
    nop

    .line 3034
    return-void

    .line 3032
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapPrivateKeyId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3165
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3166
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3168
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3170
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3171
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3172
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3174
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3175
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3176
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3177
    .local v3, "_hidl_out_id":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3179
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_id":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3180
    nop

    .line 3181
    return-void

    .line 3179
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEapSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3186
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3187
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3189
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3191
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3192
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3193
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3195
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3196
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3197
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3198
    .local v3, "_hidl_out_match":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3200
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_match":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3201
    nop

    .line 3202
    return-void

    .line 3200
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getGroupCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2841
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2842
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2844
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2846
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2847
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2848
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2850
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2851
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2852
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2853
    .local v3, "_hidl_out_groupCipherMask":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2855
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_groupCipherMask":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2856
    nop

    .line 2857
    return-void

    .line 2855
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3565
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3566
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3568
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3570
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3571
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3572
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 3576
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    .line 3578
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    .line 3579
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    .line 3580
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 3579
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 3583
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 3584
    nop

    .local v10, "_hidl_index_0":I
    :goto_0
    move v3, v10

    .end local v10    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v13, :cond_0

    .line 3585
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 3587
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 3588
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3589
    nop

    .line 3591
    .end local v6    # "_hidl_array_offset_1":J
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3584
    .end local v5    # "_hidl_vec_element":[B
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v10    # "_hidl_index_0":I
    goto :goto_0

    .line 3595
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0":I
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_vec_size":I
    :cond_0
    nop

    .line 3597
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3595
    return-object v11

    .line 3597
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1975
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1976
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1978
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1980
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1981
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1982
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1984
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 1985
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1986
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1987
    .local v3, "_hidl_out_id":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_id":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1990
    nop

    .line 1991
    return-void

    .line 1989
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getIdStr(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3291
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3292
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3294
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3296
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3297
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3298
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3300
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3301
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3302
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3303
    .local v3, "_hidl_out_idStr":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3305
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_idStr":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3306
    nop

    .line 3307
    return-void

    .line 3305
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getInterfaceName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1996
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1997
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1999
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2001
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2002
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2003
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2005
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2006
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2007
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2008
    .local v3, "_hidl_out_name":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2011
    nop

    .line 2012
    return-void

    .line 2010
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getKeyMgmt(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2778
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2779
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2781
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2783
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2784
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2785
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2787
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2788
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2789
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2790
    .local v3, "_hidl_out_keyMgmtMask":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2792
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_keyMgmtMask":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2793
    nop

    .line 2794
    return-void

    .line 2792
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPairwiseCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2862
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2863
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2865
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2867
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2868
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2869
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2871
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2872
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2873
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2874
    .local v3, "_hidl_out_pairwiseCipherMask":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2876
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_pairwiseCipherMask":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2877
    nop

    .line 2878
    return-void

    .line 2876
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getProto(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2799
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2800
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2802
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2804
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2805
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2806
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2808
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2809
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2810
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2811
    .local v3, "_hidl_out_protoMask":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2813
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_protoMask":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2814
    nop

    .line 2815
    return-void

    .line 2813
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPsk(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V
    .locals 8
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2904
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2905
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2907
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2909
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2910
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2911
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2913
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2914
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2915
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 2917
    .local v4, "_hidl_out_psk":[B
    const-wide/16 v5, 0x20

    invoke-virtual {v1, v5, v6}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 2919
    .local v5, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 2920
    .local v6, "_hidl_array_offset_0":J
    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2921
    nop

    .line 2924
    .end local v5    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-interface {p1, v2, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2926
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v4    # "_hidl_out_psk":[B
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2927
    nop

    .line 2928
    return-void

    .line 2926
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getPskPassphrase(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2883
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2884
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2886
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2888
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2889
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2890
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2892
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2893
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2894
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2895
    .local v3, "_hidl_out_psk":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2897
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_psk":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2898
    nop

    .line 2899
    return-void

    .line 2897
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getRequirePmf(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2976
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2977
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2979
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2981
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2982
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2983
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2985
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2986
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2987
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 2988
    .local v3, "_hidl_out_enabled":Z
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2990
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_enabled":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2991
    nop

    .line 2992
    return-void

    .line 2990
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getScanSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2757
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2758
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2760
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2762
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2763
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2764
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2766
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2767
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2768
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 2769
    .local v3, "_hidl_out_enabled":Z
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2771
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_enabled":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2772
    nop

    .line 2773
    return-void

    .line 2771
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2707
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2708
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2710
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2712
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2713
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2714
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2716
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2717
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2718
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2719
    .local v3, "_hidl_out_ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2721
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2722
    nop

    .line 2723
    return-void

    .line 2721
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2017
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2018
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2020
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2022
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2023
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2024
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2026
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2027
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2028
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2029
    .local v3, "_hidl_out_type":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2031
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_type":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2032
    nop

    .line 2033
    return-void

    .line 2031
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getWepKey(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V
    .locals 5
    .param p1, "keyIdx"    # I
    .param p2, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2933
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2934
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2935
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2937
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2939
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2940
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2941
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2943
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2944
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2945
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2946
    .local v3, "_hidl_out_wepKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p2, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2948
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_wepKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2949
    nop

    .line 2950
    return-void

    .line 2948
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getWepTxKeyIdx(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2955
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2956
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2958
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2960
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2961
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2964
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2965
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2966
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2967
    .local v3, "_hidl_out_keyIdx":I
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2969
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_keyIdx":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2970
    nop

    .line 2971
    return-void

    .line 2969
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getWpsNfcConfigurationToken(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V
    .locals 5
    .param p1, "_hidl_cb"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3312
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3313
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3315
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3317
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3318
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3319
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3321
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3322
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3323
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 3324
    .local v3, "_hidl_out_token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface {p1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;->onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3326
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v3    # "_hidl_out_token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3327
    nop

    .line 3328
    return-void

    .line 3326
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1968
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3527
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3528
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3530
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3532
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3533
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3536
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3537
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 3539
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3537
    return-object v2

    .line 3539
    .end local v2    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3546
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3547
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3549
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3551
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3552
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3553
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3555
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3556
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 3558
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3556
    return-object v2

    .line 3558
    .end local v2    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3619
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3660
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3661
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3663
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3665
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3668
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3669
    nop

    .line 3670
    return-void

    .line 3668
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public ping()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3624
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3625
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3627
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3629
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3630
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3631
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3633
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3634
    nop

    .line 3635
    return-void

    .line 3633
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "callback"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2039
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2040
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2041
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2043
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2045
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2046
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2047
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2049
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2050
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2051
    nop

    .line 2053
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2051
    return-object v2

    .line 2053
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public select()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3374
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3375
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3377
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3379
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3380
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3381
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3383
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3384
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3385
    nop

    .line 3387
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3385
    return-object v2

    .line 3387
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3505
    .local p1, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3506
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3507
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 3509
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3511
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3512
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3513
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3515
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3516
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3517
    nop

    .line 3519
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3517
    return-object v2

    .line 3519
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendNetworkEapSimGsmAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3415
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3416
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3418
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3420
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3421
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3424
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3425
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3426
    nop

    .line 3428
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3426
    return-object v2

    .line 3428
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3394
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3395
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3396
    invoke-static {v0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 3398
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3400
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3401
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3402
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3404
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3405
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3406
    nop

    .line 3408
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3406
    return-object v2

    .line 3408
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendNetworkEapSimUmtsAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3485
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3486
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3488
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3490
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3491
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3492
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3494
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3495
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3496
    nop

    .line 3498
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3496
    return-object v2

    .line 3498
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "params"    # Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3435
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3436
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3437
    invoke-virtual {p1, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3439
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3441
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3442
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3443
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3445
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3446
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3447
    nop

    .line 3449
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3447
    return-object v2

    .line 3449
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public sendNetworkEapSimUmtsAutsResponse([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "auts"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3456
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3457
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3459
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 3461
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 3462
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3463
    nop

    .line 3465
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3468
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3470
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3471
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 3472
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 3474
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 3475
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3476
    nop

    .line 3478
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3476
    return-object v2

    .line 3478
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setAuthAlg(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "authAlgMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2173
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2174
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2177
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2179
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2180
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2181
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2183
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2184
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2185
    nop

    .line 2187
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2185
    return-object v2

    .line 2187
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setBssid([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "bssid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2081
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2082
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2084
    new-instance v1, Landroid/os/HwBlob;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2086
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 2087
    .local v3, "_hidl_array_offset_0":J
    invoke-virtual {v1, v3, v4, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2088
    nop

    .line 2090
    .end local v3    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2093
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2095
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2096
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2097
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2099
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2100
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2101
    nop

    .line 2103
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2101
    return-object v2

    .line 2103
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapAltSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "match"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2561
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2562
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2564
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2566
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2567
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2570
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2571
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2572
    nop

    .line 2574
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2572
    return-object v2

    .line 2574
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapAnonymousIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2413
    .local p1, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2414
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2417
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2419
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2420
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2421
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2423
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2424
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2425
    nop

    .line 2427
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2425
    return-object v2

    .line 2427
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapCACert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2455
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2456
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2459
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2461
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2462
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2463
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2465
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2466
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2467
    nop

    .line 2469
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2467
    return-object v2

    .line 2469
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapCAPath(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2476
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2477
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2480
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2482
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2483
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2484
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2486
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2487
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    nop

    .line 2490
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2488
    return-object v2

    .line 2490
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapClientCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2497
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2498
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2499
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2501
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2503
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2504
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2505
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2507
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2508
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2509
    nop

    .line 2511
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2509
    return-object v2

    .line 2511
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapDomainSuffixMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "match"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2623
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2624
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2625
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2627
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2629
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2630
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2633
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2634
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    nop

    .line 2637
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2635
    return-object v2

    .line 2637
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapEngine(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2581
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2582
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2583
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2585
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2587
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2588
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2589
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2591
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2592
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2593
    nop

    .line 2595
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2593
    return-object v2

    .line 2595
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapEngineID(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2602
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2603
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2606
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2608
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2609
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2610
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2612
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2613
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2614
    nop

    .line 2616
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2614
    return-object v2

    .line 2616
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2392
    .local p1, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2393
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2396
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2398
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2399
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2400
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2402
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2403
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2404
    nop

    .line 2406
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2404
    return-object v2

    .line 2406
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapMethod(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2350
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2351
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2354
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2356
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2357
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2358
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2360
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2361
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    nop

    .line 2364
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2362
    return-object v2

    .line 2364
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapPassword(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2434
    .local p1, "password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2435
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2436
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2438
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2440
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2441
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2444
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2445
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2446
    nop

    .line 2448
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2446
    return-object v2

    .line 2448
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapPhase2Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2371
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2372
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2375
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2377
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2378
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2379
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2381
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2382
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2383
    nop

    .line 2385
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2383
    return-object v2

    .line 2385
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapPrivateKeyId(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2518
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2519
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2522
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2524
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2525
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2526
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2528
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2529
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2530
    nop

    .line 2532
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2530
    return-object v2

    .line 2532
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setEapSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "match"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2539
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2540
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2543
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2545
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2546
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2547
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2549
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2550
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2551
    nop

    .line 2553
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2551
    return-object v2

    .line 2553
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "groupCipherMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2194
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2195
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2198
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2200
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2201
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2202
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2204
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2205
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    nop

    .line 2208
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2206
    return-object v2

    .line 2208
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setHALInstrumentation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3604
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 3605
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 3609
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 3610
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3612
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 3613
    nop

    .line 3614
    return-void

    .line 3612
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setIdStr(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "idStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2665
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2666
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2669
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2671
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2672
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2673
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2675
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2676
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2677
    nop

    .line 2679
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2677
    return-object v2

    .line 2679
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "keyMgmtMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2131
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2132
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2135
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2137
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2138
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2139
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2141
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2142
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2143
    nop

    .line 2145
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2143
    return-object v2

    .line 2145
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "pairwiseCipherMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2215
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2216
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2219
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2221
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2222
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2223
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2225
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2226
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2227
    nop

    .line 2229
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2227
    return-object v2

    .line 2229
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setProactiveKeyCaching(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2644
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2645
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2648
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2650
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2651
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2652
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2654
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2655
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    nop

    .line 2658
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2656
    return-object v2

    .line 2658
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "protoMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2152
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2153
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2156
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2158
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2159
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2160
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2162
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2163
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2164
    nop

    .line 2166
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2164
    return-object v2

    .line 2166
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPsk([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "psk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2257
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2258
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2260
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2262
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    .line 2263
    .local v2, "_hidl_array_offset_0":J
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2264
    nop

    .line 2266
    .end local v2    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2269
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2271
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2272
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2273
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2275
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2276
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2277
    nop

    .line 2279
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2277
    return-object v2

    .line 2279
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setPskPassphrase(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "psk"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2236
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2237
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2240
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2242
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2243
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2244
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2246
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2247
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2248
    nop

    .line 2250
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2248
    return-object v2

    .line 2250
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setRequirePmf(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2329
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2330
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2331
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2333
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2335
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2336
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2337
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2339
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2340
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    nop

    .line 2343
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2341
    return-object v2

    .line 2343
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setScanSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2110
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2111
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2114
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2116
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2117
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2120
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2121
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2122
    nop

    .line 2124
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2122
    return-object v2

    .line 2124
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setSsid(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2060
    .local p1, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2061
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2064
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2066
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2067
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2068
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2070
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2071
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    nop

    .line 2074
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2072
    return-object v2

    .line 2074
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setUpdateIdentifier(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2686
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2687
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2688
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2690
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2692
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2693
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2694
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2696
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2697
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2698
    nop

    .line 2700
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2698
    return-object v2

    .line 2700
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWepKey(ILjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "keyIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2286
    .local p2, "wepKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2287
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2289
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2291
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2293
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2294
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2297
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2298
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2299
    nop

    .line 2301
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2299
    return-object v2

    .line 2301
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setWepTxKeyIdx(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .locals 5
    .param p1, "keyIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2308
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2309
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2312
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2314
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2315
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2316
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2318
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    invoke-direct {v2}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;-><init>()V

    .line 2319
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {v2, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2320
    nop

    .line 2322
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2320
    return-object v2

    .line 2322
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1954
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1955
    :catch_0
    move-exception v0

    .line 1958
    const-string v0, "[class or subclass of android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3675
    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
