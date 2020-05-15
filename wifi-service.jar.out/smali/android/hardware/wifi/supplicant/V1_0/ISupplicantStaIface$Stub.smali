.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1843
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1846
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1890
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1891
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1892
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1893
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1894
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1865
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x77t
        0x52t
        -0x1ft
        -0x22t
        -0x6dt
        -0x56t
        -0xbt
        -0x2t
        -0x2dt
        0x70t
        0x11t
        -0x3et
        0x19t
        -0x54t
        0x24t
        0x70t
        0x69t
        -0xat
        -0x51t
        0x32t
        0xbt
        0x8t
        0x10t
        -0x26t
        -0x57t
        -0x7bt
        0x10t
        0x58t
        0x4at
        0x10t
        -0x19t
        -0x4ct
    .end array-data

    :array_1
    .array-data 1
        0x35t
        -0x46t
        0x7bt
        -0x33t
        -0xft
        -0x71t
        0x24t
        -0x58t
        0x66t
        -0x59t
        -0x1bt
        0x42t
        -0x6bt
        0x48t
        -0x10t
        0x67t
        0x68t
        -0x45t
        0x20t
        -0x5et
        0x57t
        -0x9t
        0x5bt
        0x10t
        -0x5dt
        -0x69t
        -0x3ct
        -0x28t
        0x25t
        -0x11t
        -0x7ct
        0x38t
    .end array-data

    :array_2
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1851
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1859
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1879
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1899
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1900
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1928
    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x6

    const/4 v4, 0x6

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_28

    .line 2889
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    nop

    :cond_0
    move v0, v6

    .line 2890
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_65

    .line 2891
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2892
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2893
    goto/16 :goto_28

    .line 2876
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v6, v7

    nop

    :cond_1
    move v0, v6

    .line 2877
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2

    .line 2878
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2880
    goto/16 :goto_28

    .line 2881
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2883
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->notifySyspropsChanged()V

    .line 2884
    goto/16 :goto_28

    .line 2860
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v0, v7

    .line 2861
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 2862
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2863
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2864
    goto/16 :goto_28

    .line 2865
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2867
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 2868
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2869
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2871
    goto/16 :goto_28

    .line 2845
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v7, v6

    :goto_1
    move v0, v7

    .line 2846
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 2847
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2849
    goto/16 :goto_28

    .line 2850
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2852
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->ping()V

    .line 2853
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2855
    goto/16 :goto_28

    .line 2835
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    nop

    :cond_7
    move v0, v6

    .line 2836
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_65

    .line 2837
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2839
    goto/16 :goto_28

    .line 2822
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v6, v7

    nop

    :cond_8
    move v0, v6

    .line 2823
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9

    .line 2824
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2825
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2826
    goto/16 :goto_28

    .line 2827
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setHALInstrumentation()V

    .line 2830
    goto/16 :goto_28

    .line 2789
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v2, v7

    .line 2790
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_b

    .line 2791
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2793
    goto/16 :goto_28

    .line 2794
    :cond_b
    const-string v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2796
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v3

    .line 2797
    .local v3, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2799
    new-instance v4, Landroid/os/HwBlob;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 2801
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2802
    .local v5, "_hidl_vec_size":I
    invoke-virtual {v4, v0, v1, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2803
    const-wide/16 v0, 0xc

    invoke-virtual {v4, v0, v1, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2804
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, v5, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 2805
    .local v0, "childBlob":Landroid/os/HwBlob;
    nop

    .local v6, "_hidl_index_0":I
    :goto_3
    move v1, v6

    .end local v6    # "_hidl_index_0":I
    .local v1, "_hidl_index_0":I
    if-ge v1, v5, :cond_c

    .line 2807
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 2808
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2809
    nop

    .line 2805
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    goto :goto_3

    .line 2812
    .end local v6    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2814
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_vec_size":I
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2816
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2817
    goto/16 :goto_28

    .line 2773
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    move v7, v6

    :goto_4
    move v0, v7

    .line 2774
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 2775
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2776
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2777
    goto/16 :goto_28

    .line 2778
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2780
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 2781
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2782
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2783
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2784
    goto/16 :goto_28

    .line 2759
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move v7, v6

    :goto_5
    move v0, v7

    .line 2760
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 2761
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2763
    goto/16 :goto_28

    .line 2764
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2766
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2767
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2768
    goto/16 :goto_28

    .line 2743
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v7, v6

    :goto_6
    move v0, v7

    .line 2744
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 2745
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2747
    goto/16 :goto_28

    .line 2748
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2751
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2752
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2754
    goto/16 :goto_28

    .line 2726
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_13
    move v7, v6

    :goto_7
    move v0, v7

    .line 2727
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_14

    .line 2728
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2729
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2730
    goto/16 :goto_28

    .line 2731
    :cond_14
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2734
    .local v1, "enable":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->enableAutoReconnect(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2735
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2736
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2737
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2738
    goto/16 :goto_28

    .line 2709
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    goto :goto_8

    :cond_15
    move v7, v6

    :goto_8
    move v0, v7

    .line 2710
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16

    .line 2711
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2713
    goto/16 :goto_28

    .line 2714
    :cond_16
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2717
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->removeExtRadioWork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2718
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2719
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2721
    goto/16 :goto_28

    .line 2686
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v6, v7

    nop

    :cond_17
    move v0, v6

    .line 2687
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_18

    .line 2688
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2690
    goto/16 :goto_28

    .line 2691
    :cond_18
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2694
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2695
    .local v2, "freqInMhz":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2696
    .local v3, "timeoutInSec":I
    new-instance v4, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$8;

    invoke-direct {v4, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$8;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->addExtRadioWork(Ljava/lang/String;IILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;)V

    .line 2704
    goto/16 :goto_28

    .line 2669
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "freqInMhz":I
    .end local v3    # "timeoutInSec":I
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19

    goto :goto_9

    :cond_19
    move v7, v6

    :goto_9
    move v0, v7

    .line 2670
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a

    .line 2671
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2672
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2673
    goto/16 :goto_28

    .line 2674
    :cond_1a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2677
    .local v1, "useExternalSim":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setExternalSim(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2678
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2679
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2680
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2681
    goto/16 :goto_28

    .line 2653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "useExternalSim":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    goto :goto_a

    :cond_1b
    move v7, v6

    :goto_a
    move v0, v7

    .line 2654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1c

    .line 2655
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2657
    goto/16 :goto_28

    .line 2658
    :cond_1c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2660
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->cancelWps()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2661
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2662
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2664
    goto/16 :goto_28

    .line 2624
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d

    move v6, v7

    nop

    :cond_1d
    move v0, v6

    .line 2625
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1e

    .line 2626
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2627
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2628
    goto/16 :goto_28

    .line 2629
    :cond_1e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2631
    new-array v1, v4, [B

    .line 2633
    .local v1, "bssid":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2635
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 2636
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v2, v5, v6, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2637
    nop

    .line 2640
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$7;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$7;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->startWpsPinDisplay([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V

    .line 2648
    goto/16 :goto_28

    .line 2607
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bssid":[B
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    goto :goto_b

    :cond_1f
    move v7, v6

    :goto_b
    move v0, v7

    .line 2608
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_20

    .line 2609
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2610
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2611
    goto/16 :goto_28

    .line 2612
    :cond_20
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2615
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->startWpsPinKeypad(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2616
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2617
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2619
    goto/16 :goto_28

    .line 2582
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "pin":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21

    goto :goto_c

    :cond_21
    move v7, v6

    :goto_c
    move v0, v7

    .line 2583
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_22

    .line 2584
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2585
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2586
    goto/16 :goto_28

    .line 2587
    :cond_22
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2589
    new-array v1, v4, [B

    .line 2591
    .local v1, "bssid":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2593
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 2594
    .local v7, "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2595
    nop

    .line 2598
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->startWpsPbc([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2599
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2600
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2601
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2602
    goto/16 :goto_28

    .line 2556
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bssid":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23

    goto :goto_d

    :cond_23
    move v7, v6

    :goto_d
    move v0, v7

    .line 2557
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_24

    .line 2558
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2559
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2560
    goto/16 :goto_28

    .line 2561
    :cond_24
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2563
    new-array v1, v4, [B

    .line 2565
    .restart local v1    # "bssid":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2567
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 2568
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2569
    nop

    .line 2572
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2573
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->startWpsRegistrar([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2574
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2575
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2577
    goto/16 :goto_28

    .line 2531
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "bssid":[B
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    goto :goto_e

    :cond_25
    move v7, v6

    :goto_e
    move v0, v7

    .line 2532
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_26

    .line 2533
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2535
    goto/16 :goto_28

    .line 2536
    :cond_26
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2538
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 2540
    .local v2, "code":[B
    const-wide/16 v3, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 2542
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x0

    .line 2543
    .local v4, "_hidl_array_offset_0":J
    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2544
    nop

    .line 2547
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setCountryCode([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2548
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2549
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2550
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2551
    goto/16 :goto_28

    .line 2514
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "code":[B
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27

    goto :goto_f

    :cond_27
    move v7, v6

    :goto_f
    move v0, v7

    .line 2515
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28

    .line 2516
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2517
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2518
    goto/16 :goto_28

    .line 2519
    :cond_28
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2522
    .local v1, "enable":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setSuspendModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2523
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2524
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2525
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2526
    goto/16 :goto_28

    .line 2497
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_29

    goto :goto_10

    :cond_29
    move v7, v6

    :goto_10
    move v0, v7

    .line 2498
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2a

    .line 2499
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2500
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2501
    goto/16 :goto_28

    .line 2502
    :cond_2a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2505
    .restart local v1    # "enable":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setBtCoexistenceScanModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2506
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2507
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2508
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2509
    goto/16 :goto_28

    .line 2480
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2b

    goto :goto_11

    :cond_2b
    move v7, v6

    :goto_11
    move v0, v7

    .line 2481
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c

    .line 2482
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2483
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2484
    goto/16 :goto_28

    .line 2485
    :cond_2c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 2488
    .local v1, "mode":B
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setBtCoexistenceMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2489
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2490
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2491
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2492
    goto/16 :goto_28

    .line 2463
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "mode":B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2d

    goto :goto_12

    :cond_2d
    move v7, v6

    :goto_12
    move v0, v7

    .line 2464
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e

    .line 2465
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2466
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2467
    goto/16 :goto_28

    .line 2468
    :cond_2e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2470
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 2471
    .local v1, "type":B
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->removeRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2472
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2473
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2474
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2475
    goto/16 :goto_28

    .line 2446
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2f

    goto :goto_13

    :cond_2f
    move v7, v6

    :goto_13
    move v0, v7

    .line 2447
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_30

    .line 2448
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2449
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2450
    goto/16 :goto_28

    .line 2451
    :cond_30
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2453
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 2454
    .restart local v1    # "type":B
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->addRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2455
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2456
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2457
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2458
    goto/16 :goto_28

    .line 2430
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_31

    goto :goto_14

    :cond_31
    move v7, v6

    :goto_14
    move v0, v7

    .line 2431
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_32

    .line 2432
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2433
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2434
    goto/16 :goto_28

    .line 2435
    :cond_32
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2437
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->stopRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2438
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2439
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2440
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2441
    goto/16 :goto_28

    .line 2414
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_33

    goto :goto_15

    :cond_33
    move v7, v6

    :goto_15
    move v0, v7

    .line 2415
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_34

    .line 2416
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2417
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2418
    goto/16 :goto_28

    .line 2419
    :cond_34
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->startRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2422
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2423
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2424
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2425
    goto/16 :goto_28

    .line 2386
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_35

    move v6, v7

    nop

    :cond_35
    move v0, v6

    .line 2387
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_36

    .line 2388
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2389
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2390
    goto/16 :goto_28

    .line 2391
    :cond_36
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2393
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$6;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$6;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->getMacAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V

    .line 2409
    goto/16 :goto_28

    .line 2360
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_37

    goto :goto_16

    :cond_37
    move v7, v6

    :goto_16
    move v0, v7

    .line 2361
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_38

    .line 2362
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2363
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2364
    goto/16 :goto_28

    .line 2365
    :cond_38
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2367
    new-array v1, v4, [B

    .line 2369
    .local v1, "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2371
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 2372
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2373
    nop

    .line 2376
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2377
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->initiateHs20IconQuery([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 2378
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2379
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2380
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2381
    goto/16 :goto_28

    .line 2333
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_39

    goto :goto_17

    :cond_39
    move v7, v6

    :goto_17
    move v0, v7

    .line 2334
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3a

    .line 2335
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2336
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2337
    goto/16 :goto_28

    .line 2338
    :cond_3a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2340
    new-array v1, v4, [B

    .line 2342
    .restart local v1    # "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2344
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 2345
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2346
    nop

    .line 2349
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2350
    .local v2, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2351
    .local v3, "subTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 2352
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2353
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2354
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2355
    goto/16 :goto_28

    .line 2308
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .end local v3    # "subTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3b

    goto :goto_18

    :cond_3b
    move v7, v6

    :goto_18
    move v0, v7

    .line 2309
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3c

    .line 2310
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2311
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2312
    goto/16 :goto_28

    .line 2313
    :cond_3c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2315
    new-array v1, v4, [B

    .line 2317
    .restart local v1    # "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2319
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 2320
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2321
    nop

    .line 2324
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->initiateTdlsTeardown([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2325
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2326
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2327
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2328
    goto/16 :goto_28

    .line 2283
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3d

    goto :goto_19

    :cond_3d
    move v7, v6

    :goto_19
    move v0, v7

    .line 2284
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3e

    .line 2285
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2286
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2287
    goto/16 :goto_28

    .line 2288
    :cond_3e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2290
    new-array v1, v4, [B

    .line 2292
    .restart local v1    # "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2294
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 2295
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2296
    nop

    .line 2299
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->initiateTdlsSetup([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2300
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2301
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2302
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2303
    goto/16 :goto_28

    .line 2258
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3f

    goto :goto_1a

    :cond_3f
    move v7, v6

    :goto_1a
    move v0, v7

    .line 2259
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_40

    .line 2260
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2261
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2262
    goto/16 :goto_28

    .line 2263
    :cond_40
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    new-array v1, v4, [B

    .line 2267
    .restart local v1    # "macAddress":[B
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 2269
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 2270
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v2, v7, v8, v1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2271
    nop

    .line 2274
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->initiateTdlsDiscover([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2275
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2276
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2277
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2278
    goto/16 :goto_28

    .line 2241
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "macAddress":[B
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_41

    goto :goto_1b

    :cond_41
    move v7, v6

    :goto_1b
    move v0, v7

    .line 2242
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_42

    .line 2243
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2244
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2245
    goto/16 :goto_28

    .line 2246
    :cond_42
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2249
    .local v1, "enable":Z
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setPowerSave(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2250
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2251
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2252
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2253
    goto/16 :goto_28

    .line 2225
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "enable":Z
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_43

    goto :goto_1c

    :cond_43
    move v7, v6

    :goto_1c
    move v0, v7

    .line 2226
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_44

    .line 2227
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2228
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2229
    goto/16 :goto_28

    .line 2230
    :cond_44
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->disconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2233
    .local v1, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2234
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2235
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2236
    goto/16 :goto_28

    .line 2209
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_45

    goto :goto_1d

    :cond_45
    move v7, v6

    :goto_1d
    move v0, v7

    .line 2210
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_46

    .line 2211
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2212
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2213
    goto/16 :goto_28

    .line 2214
    :cond_46
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->reconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2217
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2218
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2220
    goto/16 :goto_28

    .line 2193
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_47

    goto :goto_1e

    :cond_47
    move v7, v6

    :goto_1e
    move v0, v7

    .line 2194
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_48

    .line 2195
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2196
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2197
    goto/16 :goto_28

    .line 2198
    :cond_48
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->reassociate()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v1

    .line 2201
    .restart local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2202
    invoke-virtual {v1, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2203
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2204
    goto/16 :goto_28

    .line 2176
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_49

    goto :goto_1f

    :cond_49
    move v7, v6

    :goto_1f
    move v0, v7

    .line 2177
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4a

    .line 2178
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2179
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2180
    goto/16 :goto_28

    .line 2181
    :cond_4a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    move-result-object v1

    .line 2184
    .local v1, "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2185
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2186
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2188
    goto/16 :goto_28

    .line 2159
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4b

    goto :goto_20

    :cond_4b
    move v7, v6

    :goto_20
    move v0, v7

    .line 2160
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4c

    .line 2161
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2163
    goto/16 :goto_28

    .line 2164
    :cond_4c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 2167
    .local v1, "configMethods":S
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2168
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2169
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2171
    goto/16 :goto_28

    .line 2142
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "configMethods":S
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4d

    goto :goto_21

    :cond_4d
    move v7, v6

    :goto_21
    move v0, v7

    .line 2143
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4e

    .line 2144
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2145
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2146
    goto/16 :goto_28

    .line 2147
    :cond_4e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2150
    .local v1, "serialNumber":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2151
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2152
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2154
    goto/16 :goto_28

    .line 2125
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serialNumber":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4f

    goto :goto_22

    :cond_4f
    move v7, v6

    :goto_22
    move v0, v7

    .line 2126
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_50

    .line 2127
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2129
    goto/16 :goto_28

    .line 2130
    :cond_50
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2133
    .local v1, "modelNumber":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2134
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2135
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2137
    goto/16 :goto_28

    .line 2108
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "modelNumber":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_51

    goto :goto_23

    :cond_51
    move v7, v6

    :goto_23
    move v0, v7

    .line 2109
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_52

    .line 2110
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2111
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2112
    goto/16 :goto_28

    .line 2113
    :cond_52
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2115
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2116
    .local v1, "modelName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2117
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2118
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2119
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2120
    goto/16 :goto_28

    .line 2091
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "modelName":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_53

    goto :goto_24

    :cond_53
    move v7, v6

    :goto_24
    move v0, v7

    .line 2092
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_54

    .line 2093
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2094
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2095
    goto/16 :goto_28

    .line 2096
    :cond_54
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2099
    .local v1, "manufacturer":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2100
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2101
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2103
    goto/16 :goto_28

    .line 2066
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "manufacturer":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_21
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_55

    goto :goto_25

    :cond_55
    move v7, v6

    :goto_25
    move v2, v7

    .line 2067
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_56

    .line 2068
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2070
    goto/16 :goto_28

    .line 2071
    :cond_56
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 2075
    .local v4, "type":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 2077
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x0

    .line 2078
    .restart local v7    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v7, v8, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2079
    nop

    .line 2082
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v4}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 2083
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2084
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2085
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2086
    goto/16 :goto_28

    .line 2049
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v4    # "type":[B
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_57

    goto :goto_26

    :cond_57
    move v7, v6

    :goto_26
    move v0, v7

    .line 2050
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_58

    .line 2051
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2052
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2053
    goto/16 :goto_28

    .line 2054
    :cond_58
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2057
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2058
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2059
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2061
    goto/16 :goto_28

    .line 2029
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_59

    move v6, v7

    nop

    :cond_59
    move v0, v6

    .line 2030
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_5a

    .line 2031
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2033
    goto/16 :goto_28

    .line 2034
    :cond_5a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2036
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$5;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$5;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    .line 2044
    goto/16 :goto_28

    .line 2008
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5b

    move v6, v7

    nop

    :cond_5b
    move v0, v6

    .line 2009
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_5c

    .line 2010
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2012
    goto/16 :goto_28

    .line 2013
    :cond_5c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2016
    .local v1, "id":I
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$4;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$4;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    .line 2024
    goto/16 :goto_28

    .line 1991
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5d

    goto :goto_27

    :cond_5d
    move v7, v6

    :goto_27
    move v0, v7

    .line 1992
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_5e

    .line 1993
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1994
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1995
    goto/16 :goto_28

    .line 1996
    :cond_5e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1999
    .restart local v1    # "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 2000
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2001
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2002
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2003
    goto :goto_28

    .line 1971
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5f

    move v6, v7

    nop

    :cond_5f
    move v0, v6

    .line 1972
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_60

    .line 1973
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1974
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1975
    goto :goto_28

    .line 1976
    :cond_60
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1978
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$3;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$3;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    .line 1986
    goto :goto_28

    .line 1951
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_61

    move v6, v7

    nop

    :cond_61
    move v0, v6

    .line 1952
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_62

    .line 1953
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1954
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1955
    goto :goto_28

    .line 1956
    :cond_62
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1958
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$2;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$2;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    .line 1966
    goto :goto_28

    .line 1931
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_63

    move v6, v7

    nop

    :cond_63
    move v0, v6

    .line 1932
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_64

    .line 1933
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1934
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1935
    goto :goto_28

    .line 1936
    :cond_64
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1938
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$1;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$1;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    .line 1946
    nop

    .line 2898
    .end local v0    # "_hidl_is_oneway":Z
    :cond_65
    :goto_28
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1884
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1910
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    return-object p0

    .line 1913
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1917
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->registerService(Ljava/lang/String;)V

    .line 1918
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1875
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1904
    const/4 v0, 0x1

    return v0
.end method
