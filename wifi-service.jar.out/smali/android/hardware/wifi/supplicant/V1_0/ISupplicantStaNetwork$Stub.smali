.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3679
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3682
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3726
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3727
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3728
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3729
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3730
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

    .line 3701
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
        -0x4ft
        0x2et
        -0x10t
        -0x43t
        -0x28t
        -0x5ct
        -0x2et
        0x47t
        -0x58t
        -0x5at
        -0x17t
        0x60t
        -0x4et
        0x27t
        -0x13t
        0x32t
        0x38t
        0x3ft
        0x2bt
        0x2t
        0x41t
        -0xbt
        0x5dt
        0x67t
        -0x4t
        -0x16t
        0x6et
        -0x1t
        0x6at
        0x67t
        0x37t
        -0x6t
    .end array-data

    :array_1
    .array-data 1
        -0x33t
        -0x60t
        0x10t
        0x8t
        -0x40t
        0x69t
        0x22t
        -0x6t
        0x37t
        -0x3ft
        0x21t
        0x3et
        -0x65t
        -0x48t
        0x31t
        -0x5ft
        0x9t
        -0x4dt
        0x17t
        0x45t
        0x32t
        -0x80t
        0x56t
        0x16t
        -0x5t
        0x71t
        0x61t
        -0x13t
        -0x3ct
        0x3t
        -0x7at
        0x6ft
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

    .line 3687
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

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

    .line 3695
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3715
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 3735
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3736
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

    .line 3764
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2f

    .line 5272
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 5273
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_a3

    .line 5274
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5275
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5276
    goto/16 :goto_2f

    .line 5259
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 5260
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 5261
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5262
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5263
    goto/16 :goto_2f

    .line 5264
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5266
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->notifySyspropsChanged()V

    .line 5267
    goto/16 :goto_2f

    .line 5243
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 5244
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 5245
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5246
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5247
    goto/16 :goto_2f

    .line 5248
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5250
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5251
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5252
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5253
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5254
    goto/16 :goto_2f

    .line 5228
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 5229
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 5230
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5232
    goto/16 :goto_2f

    .line 5233
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5235
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->ping()V

    .line 5236
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5237
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5238
    goto/16 :goto_2f

    .line 5218
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 5219
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_a3

    .line 5220
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5221
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5222
    goto/16 :goto_2f

    .line 5205
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 5206
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 5207
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5209
    goto/16 :goto_2f

    .line 5210
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5212
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setHALInstrumentation()V

    .line 5213
    goto/16 :goto_2f

    .line 5172
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 5173
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 5174
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5176
    goto/16 :goto_2f

    .line 5177
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5179
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5180
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5182
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 5184
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5185
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5186
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5187
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 5188
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 5190
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 5191
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5192
    nop

    .line 5188
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5195
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5197
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5199
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5200
    goto/16 :goto_2f

    .line 5156
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 5157
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 5158
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5160
    goto/16 :goto_2f

    .line 5161
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5163
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5164
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5165
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5166
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5167
    goto/16 :goto_2f

    .line 5142
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 5143
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 5144
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5145
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5146
    goto/16 :goto_2f

    .line 5147
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5149
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5151
    goto/16 :goto_2f

    .line 5126
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 5127
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 5128
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5129
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5130
    goto/16 :goto_2f

    .line 5131
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5133
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5134
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5135
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5137
    goto/16 :goto_2f

    .line 5109
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 5110
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 5111
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5113
    goto/16 :goto_2f

    .line 5114
    :cond_14
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 5117
    .local v0, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 5118
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5119
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5120
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5121
    goto/16 :goto_2f

    .line 5093
    .end local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 5094
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 5095
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5096
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5097
    goto/16 :goto_2f

    .line 5098
    :cond_16
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5100
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->sendNetworkEapSimUmtsAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 5101
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5102
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5104
    goto/16 :goto_2f

    .line 5068
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    .line 5069
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_18

    .line 5070
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5071
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5072
    goto/16 :goto_2f

    .line 5073
    :cond_18
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5075
    const/16 v0, 0xe

    new-array v3, v0, [B

    .line 5077
    .local v3, "auts":[B
    const-wide/16 v4, 0xe

    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 5079
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 5080
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 5081
    nop

    .line 5084
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->sendNetworkEapSimUmtsAutsResponse([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 5085
    .restart local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5086
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5088
    goto/16 :goto_2f

    .line 5050
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "auts":[B
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    .line 5051
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1a

    .line 5052
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5053
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5054
    goto/16 :goto_2f

    .line 5055
    :cond_1a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5057
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    .line 5058
    .local v0, "params":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5059
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 5060
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5061
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5062
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5063
    goto/16 :goto_2f

    .line 5034
    .end local v0    # "params":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    .line 5035
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_1c

    .line 5036
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5037
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5038
    goto/16 :goto_2f

    .line 5039
    :cond_1c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5041
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->sendNetworkEapSimGsmAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 5042
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5043
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5045
    goto/16 :goto_2f

    .line 5017
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    goto :goto_c

    :cond_1d
    move v2, v1

    .line 5018
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_1e

    .line 5019
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5021
    goto/16 :goto_2f

    .line 5022
    :cond_1e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5024
    invoke-static {p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5025
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 5026
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5027
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5029
    goto/16 :goto_2f

    .line 5001
    .end local v0    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    goto :goto_d

    :cond_1f
    move v2, v1

    .line 5002
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_20

    .line 5003
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5005
    goto/16 :goto_2f

    .line 5006
    :cond_20
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5008
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->select()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 5009
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5010
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 5012
    goto/16 :goto_2f

    .line 4985
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    goto :goto_e

    :cond_21
    move v2, v1

    .line 4986
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v2, :cond_22

    .line 4987
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4988
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4989
    goto/16 :goto_2f

    .line 4990
    :cond_22
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4992
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->disable()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 4993
    .restart local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4994
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4995
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4996
    goto/16 :goto_2f

    .line 4968
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    goto :goto_f

    :cond_23
    move v2, v1

    .line 4969
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v2, :cond_24

    .line 4970
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4972
    goto/16 :goto_2f

    .line 4973
    :cond_24
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4975
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 4976
    .local v0, "noConnect":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->enable(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4977
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4978
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4979
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4980
    goto/16 :goto_2f

    .line 4948
    .end local v0    # "noConnect":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 4949
    .local v1, "_hidl_is_oneway":Z
    :cond_25
    if-eqz v1, :cond_26

    .line 4950
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4952
    goto/16 :goto_2f

    .line 4953
    :cond_26
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4955
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$32;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$32;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getWpsNfcConfigurationToken(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V

    .line 4963
    goto/16 :goto_2f

    .line 4928
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 4929
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eqz v1, :cond_28

    .line 4930
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4931
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4932
    goto/16 :goto_2f

    .line 4933
    :cond_28
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4935
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$31;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$31;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getIdStr(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V

    .line 4943
    goto/16 :goto_2f

    .line 4908
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 4909
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eqz v1, :cond_2a

    .line 4910
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4912
    goto/16 :goto_2f

    .line 4913
    :cond_2a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4915
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$30;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$30;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapDomainSuffixMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V

    .line 4923
    goto/16 :goto_2f

    .line 4888
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 4889
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eqz v1, :cond_2c

    .line 4890
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4892
    goto/16 :goto_2f

    .line 4893
    :cond_2c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4895
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$29;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$29;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapEngineID(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V

    .line 4903
    goto/16 :goto_2f

    .line 4868
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 4869
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eqz v1, :cond_2e

    .line 4870
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4872
    goto/16 :goto_2f

    .line 4873
    :cond_2e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4875
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$28;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$28;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapEngine(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V

    .line 4883
    goto/16 :goto_2f

    .line 4848
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 4849
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eqz v1, :cond_30

    .line 4850
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4851
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4852
    goto/16 :goto_2f

    .line 4853
    :cond_30
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4855
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$27;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$27;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapAltSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V

    .line 4863
    goto/16 :goto_2f

    .line 4828
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 4829
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eqz v1, :cond_32

    .line 4830
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4832
    goto/16 :goto_2f

    .line 4833
    :cond_32
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4835
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$26;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$26;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V

    .line 4843
    goto/16 :goto_2f

    .line 4808
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 4809
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eqz v1, :cond_34

    .line 4810
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4811
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4812
    goto/16 :goto_2f

    .line 4813
    :cond_34
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4815
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$25;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$25;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapPrivateKeyId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V

    .line 4823
    goto/16 :goto_2f

    .line 4788
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 4789
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eqz v1, :cond_36

    .line 4790
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4792
    goto/16 :goto_2f

    .line 4793
    :cond_36
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4795
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$24;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$24;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapClientCert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V

    .line 4803
    goto/16 :goto_2f

    .line 4768
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 4769
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eqz v1, :cond_38

    .line 4770
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4772
    goto/16 :goto_2f

    .line 4773
    :cond_38
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4775
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$23;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$23;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapCAPath(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V

    .line 4783
    goto/16 :goto_2f

    .line 4748
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 4749
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eqz v1, :cond_3a

    .line 4750
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4751
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4752
    goto/16 :goto_2f

    .line 4753
    :cond_3a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4755
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$22;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$22;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapCACert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V

    .line 4763
    goto/16 :goto_2f

    .line 4728
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 4729
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eqz v1, :cond_3c

    .line 4730
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4732
    goto/16 :goto_2f

    .line 4733
    :cond_3c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4735
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$21;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$21;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapPassword(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V

    .line 4743
    goto/16 :goto_2f

    .line 4708
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 4709
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eqz v1, :cond_3e

    .line 4710
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4711
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4712
    goto/16 :goto_2f

    .line 4713
    :cond_3e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4715
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$20;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$20;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapAnonymousIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V

    .line 4723
    goto/16 :goto_2f

    .line 4688
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 4689
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eqz v1, :cond_40

    .line 4690
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4692
    goto/16 :goto_2f

    .line 4693
    :cond_40
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4695
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$19;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$19;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V

    .line 4703
    goto/16 :goto_2f

    .line 4668
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 4669
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eqz v1, :cond_42

    .line 4670
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4672
    goto/16 :goto_2f

    .line 4673
    :cond_42
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4675
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$18;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$18;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapPhase2Method(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V

    .line 4683
    goto/16 :goto_2f

    .line 4648
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 4649
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eqz v1, :cond_44

    .line 4650
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4651
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4652
    goto/16 :goto_2f

    .line 4653
    :cond_44
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4655
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$17;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$17;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getEapMethod(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V

    .line 4663
    goto/16 :goto_2f

    .line 4628
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 4629
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eqz v1, :cond_46

    .line 4630
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4631
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4632
    goto/16 :goto_2f

    .line 4633
    :cond_46
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4635
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$16;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$16;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getRequirePmf(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V

    .line 4643
    goto/16 :goto_2f

    .line 4608
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 4609
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eqz v1, :cond_48

    .line 4610
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4612
    goto/16 :goto_2f

    .line 4613
    :cond_48
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$15;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$15;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getWepTxKeyIdx(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V

    .line 4623
    goto/16 :goto_2f

    .line 4587
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 4588
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eqz v1, :cond_4a

    .line 4589
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4591
    goto/16 :goto_2f

    .line 4592
    :cond_4a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4594
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4595
    .local v0, "keyIdx":I
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$14;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$14;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getWepKey(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V

    .line 4603
    goto/16 :goto_2f

    .line 4559
    .end local v0    # "keyIdx":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 4560
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eqz v1, :cond_4c

    .line 4561
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4563
    goto/16 :goto_2f

    .line 4564
    :cond_4c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4566
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$13;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$13;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getPsk(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V

    .line 4582
    goto/16 :goto_2f

    .line 4539
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 4540
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eqz v1, :cond_4e

    .line 4541
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4542
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4543
    goto/16 :goto_2f

    .line 4544
    :cond_4e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4546
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$12;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$12;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getPskPassphrase(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V

    .line 4554
    goto/16 :goto_2f

    .line 4519
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 4520
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eqz v1, :cond_50

    .line 4521
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4522
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4523
    goto/16 :goto_2f

    .line 4524
    :cond_50
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4526
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$11;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$11;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getPairwiseCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V

    .line 4534
    goto/16 :goto_2f

    .line 4499
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 4500
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eqz v1, :cond_52

    .line 4501
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4502
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4503
    goto/16 :goto_2f

    .line 4504
    :cond_52
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4506
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$10;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$10;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getGroupCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V

    .line 4514
    goto/16 :goto_2f

    .line 4479
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 4480
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eqz v1, :cond_54

    .line 4481
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4482
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4483
    goto/16 :goto_2f

    .line 4484
    :cond_54
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4486
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$9;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$9;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getAuthAlg(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V

    .line 4494
    goto/16 :goto_2f

    .line 4459
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 4460
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eqz v1, :cond_56

    .line 4461
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4462
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4463
    goto/16 :goto_2f

    .line 4464
    :cond_56
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4466
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$8;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$8;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getProto(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V

    .line 4474
    goto/16 :goto_2f

    .line 4439
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 4440
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eqz v1, :cond_58

    .line 4441
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4442
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4443
    goto/16 :goto_2f

    .line 4444
    :cond_58
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4446
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$7;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$7;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getKeyMgmt(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V

    .line 4454
    goto/16 :goto_2f

    .line 4419
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 4420
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eqz v1, :cond_5a

    .line 4421
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4422
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4423
    goto/16 :goto_2f

    .line 4424
    :cond_5a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4426
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$6;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$6;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getScanSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V

    .line 4434
    goto/16 :goto_2f

    .line 4391
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 4392
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eqz v1, :cond_5c

    .line 4393
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4394
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4395
    goto/16 :goto_2f

    .line 4396
    :cond_5c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4398
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$5;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V

    .line 4414
    goto/16 :goto_2f

    .line 4371
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 4372
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eqz v1, :cond_5e

    .line 4373
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4374
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4375
    goto/16 :goto_2f

    .line 4376
    :cond_5e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4378
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$4;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V

    .line 4386
    goto/16 :goto_2f

    .line 4354
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    goto :goto_10

    :cond_5f
    move v2, v1

    .line 4355
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v2, :cond_60

    .line 4356
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4357
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4358
    goto/16 :goto_2f

    .line 4359
    :cond_60
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4361
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4362
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setUpdateIdentifier(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4363
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4364
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4365
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4366
    goto/16 :goto_2f

    .line 4337
    .end local v0    # "id":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    goto :goto_11

    :cond_61
    move v2, v1

    .line 4338
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_11
    if-eqz v2, :cond_62

    .line 4339
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4340
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4341
    goto/16 :goto_2f

    .line 4342
    :cond_62
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4345
    .local v0, "idStr":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setIdStr(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4346
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4347
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4348
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4349
    goto/16 :goto_2f

    .line 4320
    .end local v0    # "idStr":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    goto :goto_12

    :cond_63
    move v2, v1

    .line 4321
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_12
    if-eqz v2, :cond_64

    .line 4322
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4324
    goto/16 :goto_2f

    .line 4325
    :cond_64
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 4328
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setProactiveKeyCaching(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4329
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4330
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4332
    goto/16 :goto_2f

    .line 4303
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    goto :goto_13

    :cond_65
    move v2, v1

    .line 4304
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_13
    if-eqz v2, :cond_66

    .line 4305
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4306
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4307
    goto/16 :goto_2f

    .line 4308
    :cond_66
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4311
    .local v0, "match":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapDomainSuffixMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4312
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4313
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4314
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4315
    goto/16 :goto_2f

    .line 4286
    .end local v0    # "match":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    goto :goto_14

    :cond_67
    move v2, v1

    .line 4287
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_14
    if-eqz v2, :cond_68

    .line 4288
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4289
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4290
    goto/16 :goto_2f

    .line 4291
    :cond_68
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4293
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4294
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapEngineID(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4295
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4296
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4297
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4298
    goto/16 :goto_2f

    .line 4269
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    goto :goto_15

    :cond_69
    move v2, v1

    .line 4270
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_15
    if-eqz v2, :cond_6a

    .line 4271
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4272
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4273
    goto/16 :goto_2f

    .line 4274
    :cond_6a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 4277
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapEngine(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4278
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4279
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4280
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4281
    goto/16 :goto_2f

    .line 4252
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    goto :goto_16

    :cond_6b
    move v2, v1

    .line 4253
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_16
    if-eqz v2, :cond_6c

    .line 4254
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4255
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4256
    goto/16 :goto_2f

    .line 4257
    :cond_6c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4259
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4260
    .local v0, "match":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapAltSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4261
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4262
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4263
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4264
    goto/16 :goto_2f

    .line 4235
    .end local v0    # "match":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    goto :goto_17

    :cond_6d
    move v2, v1

    .line 4236
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_17
    if-eqz v2, :cond_6e

    .line 4237
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4238
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4239
    goto/16 :goto_2f

    .line 4240
    :cond_6e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4242
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4243
    .restart local v0    # "match":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4244
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4245
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4246
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4247
    goto/16 :goto_2f

    .line 4218
    .end local v0    # "match":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    goto :goto_18

    :cond_6f
    move v2, v1

    .line 4219
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_18
    if-eqz v2, :cond_70

    .line 4220
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4221
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4222
    goto/16 :goto_2f

    .line 4223
    :cond_70
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4226
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapPrivateKeyId(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4227
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4228
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4229
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4230
    goto/16 :goto_2f

    .line 4201
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    goto :goto_19

    :cond_71
    move v2, v1

    .line 4202
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_19
    if-eqz v2, :cond_72

    .line 4203
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4204
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4205
    goto/16 :goto_2f

    .line 4206
    :cond_72
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4209
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapClientCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4210
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4211
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4212
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4213
    goto/16 :goto_2f

    .line 4184
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    goto :goto_1a

    :cond_73
    move v2, v1

    .line 4185
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1a
    if-eqz v2, :cond_74

    .line 4186
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4188
    goto/16 :goto_2f

    .line 4189
    :cond_74
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4192
    .restart local v0    # "path":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapCAPath(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4193
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4194
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4195
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4196
    goto/16 :goto_2f

    .line 4167
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    goto :goto_1b

    :cond_75
    move v2, v1

    .line 4168
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1b
    if-eqz v2, :cond_76

    .line 4169
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4171
    goto/16 :goto_2f

    .line 4172
    :cond_76
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4175
    .restart local v0    # "path":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapCACert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4176
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4177
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4178
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4179
    goto/16 :goto_2f

    .line 4150
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    goto :goto_1c

    :cond_77
    move v2, v1

    .line 4151
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1c
    if-eqz v2, :cond_78

    .line 4152
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4154
    goto/16 :goto_2f

    .line 4155
    :cond_78
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4157
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 4158
    .local v0, "password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapPassword(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4159
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4160
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4161
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4162
    goto/16 :goto_2f

    .line 4133
    .end local v0    # "password":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    goto :goto_1d

    :cond_79
    move v2, v1

    .line 4134
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1d
    if-eqz v2, :cond_7a

    .line 4135
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4137
    goto/16 :goto_2f

    .line 4138
    :cond_7a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4140
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 4141
    .local v0, "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4142
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4143
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4145
    goto/16 :goto_2f

    .line 4116
    .end local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    goto :goto_1e

    :cond_7b
    move v2, v1

    .line 4117
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1e
    if-eqz v2, :cond_7c

    .line 4118
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4119
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4120
    goto/16 :goto_2f

    .line 4121
    :cond_7c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 4124
    .restart local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4125
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4126
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4128
    goto/16 :goto_2f

    .line 4099
    .end local v0    # "identity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_35
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7d

    goto :goto_1f

    :cond_7d
    move v2, v1

    .line 4100
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1f
    if-eqz v2, :cond_7e

    .line 4101
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4103
    goto/16 :goto_2f

    .line 4104
    :cond_7e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4107
    .local v0, "method":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapPhase2Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4108
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4109
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4110
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4111
    goto/16 :goto_2f

    .line 4082
    .end local v0    # "method":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7f

    goto :goto_20

    :cond_7f
    move v2, v1

    .line 4083
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_20
    if-eqz v2, :cond_80

    .line 4084
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4085
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4086
    goto/16 :goto_2f

    .line 4087
    :cond_80
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4089
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4090
    .restart local v0    # "method":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setEapMethod(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4091
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4092
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4094
    goto/16 :goto_2f

    .line 4065
    .end local v0    # "method":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_37
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_81

    goto :goto_21

    :cond_81
    move v2, v1

    .line 4066
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_21
    if-eqz v2, :cond_82

    .line 4067
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4068
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4069
    goto/16 :goto_2f

    .line 4070
    :cond_82
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4072
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 4073
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setRequirePmf(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4074
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4075
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4076
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4077
    goto/16 :goto_2f

    .line 4048
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_38
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_83

    goto :goto_22

    :cond_83
    move v2, v1

    .line 4049
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_22
    if-eqz v2, :cond_84

    .line 4050
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4051
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4052
    goto/16 :goto_2f

    .line 4053
    :cond_84
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4055
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4056
    .local v0, "keyIdx":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setWepTxKeyIdx(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 4057
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4058
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4059
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4060
    goto/16 :goto_2f

    .line 4030
    .end local v0    # "keyIdx":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_39
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_85

    goto :goto_23

    :cond_85
    move v2, v1

    .line 4031
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_23
    if-eqz v2, :cond_86

    .line 4032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4034
    goto/16 :goto_2f

    .line 4035
    :cond_86
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4038
    .restart local v0    # "keyIdx":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 4039
    .local v3, "wepKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setWepKey(ILjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v4

    .line 4040
    .local v4, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4041
    invoke-virtual {v4, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4042
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4043
    goto/16 :goto_2f

    .line 4005
    .end local v0    # "keyIdx":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "wepKey":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_87

    goto :goto_24

    :cond_87
    move v2, v1

    .line 4006
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_24
    if-eqz v2, :cond_88

    .line 4007
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4008
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4009
    goto/16 :goto_2f

    .line 4010
    :cond_88
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4012
    const/16 v0, 0x20

    new-array v3, v0, [B

    .line 4014
    .local v3, "psk":[B
    const-wide/16 v4, 0x20

    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 4016
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 4017
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 4018
    nop

    .line 4021
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setPsk([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 4022
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4023
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4024
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4025
    goto/16 :goto_2f

    .line 3988
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "psk":[B
    :pswitch_3b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_89

    goto :goto_25

    :cond_89
    move v2, v1

    .line 3989
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_25
    if-eqz v2, :cond_8a

    .line 3990
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3991
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3992
    goto/16 :goto_2f

    .line 3993
    :cond_8a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3995
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3996
    .local v0, "psk":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setPskPassphrase(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3997
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3998
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3999
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4000
    goto/16 :goto_2f

    .line 3971
    .end local v0    # "psk":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8b

    goto :goto_26

    :cond_8b
    move v2, v1

    .line 3972
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_26
    if-eqz v2, :cond_8c

    .line 3973
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3974
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3975
    goto/16 :goto_2f

    .line 3976
    :cond_8c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3979
    .local v0, "pairwiseCipherMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3980
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3981
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3982
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3983
    goto/16 :goto_2f

    .line 3954
    .end local v0    # "pairwiseCipherMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8d

    goto :goto_27

    :cond_8d
    move v2, v1

    .line 3955
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_27
    if-eqz v2, :cond_8e

    .line 3956
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3958
    goto/16 :goto_2f

    .line 3959
    :cond_8e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3962
    .local v0, "groupCipherMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3963
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3964
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3965
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3966
    goto/16 :goto_2f

    .line 3937
    .end local v0    # "groupCipherMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8f

    goto :goto_28

    :cond_8f
    move v2, v1

    .line 3938
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_28
    if-eqz v2, :cond_90

    .line 3939
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3940
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3941
    goto/16 :goto_2f

    .line 3942
    :cond_90
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3945
    .local v0, "authAlgMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setAuthAlg(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3946
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3947
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3949
    goto/16 :goto_2f

    .line 3920
    .end local v0    # "authAlgMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    goto :goto_29

    :cond_91
    move v2, v1

    .line 3921
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_29
    if-eqz v2, :cond_92

    .line 3922
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3923
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3924
    goto/16 :goto_2f

    .line 3925
    :cond_92
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3927
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3928
    .local v0, "protoMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3929
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3930
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3931
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3932
    goto/16 :goto_2f

    .line 3903
    .end local v0    # "protoMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_40
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_93

    goto :goto_2a

    :cond_93
    move v2, v1

    .line 3904
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2a
    if-eqz v2, :cond_94

    .line 3905
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3907
    goto/16 :goto_2f

    .line 3908
    :cond_94
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3911
    .local v0, "keyMgmtMask":I
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3912
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3913
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3914
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3915
    goto/16 :goto_2f

    .line 3886
    .end local v0    # "keyMgmtMask":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_41
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_95

    goto :goto_2b

    :cond_95
    move v2, v1

    .line 3887
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2b
    if-eqz v2, :cond_96

    .line 3888
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3889
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3890
    goto/16 :goto_2f

    .line 3891
    :cond_96
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 3894
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setScanSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3895
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3896
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3898
    goto/16 :goto_2f

    .line 3861
    .end local v0    # "enable":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_42
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    goto :goto_2c

    :cond_97
    move v2, v1

    .line 3862
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2c
    if-eqz v2, :cond_98

    .line 3863
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3865
    goto/16 :goto_2f

    .line 3866
    :cond_98
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3868
    const/4 v0, 0x6

    new-array v3, v0, [B

    .line 3870
    .local v3, "bssid":[B
    const-wide/16 v4, 0x6

    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 3872
    .restart local v4    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 3873
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3874
    nop

    .line 3877
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setBssid([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 3878
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3879
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3881
    goto/16 :goto_2f

    .line 3844
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "bssid":[B
    :pswitch_43
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_99

    goto :goto_2d

    :cond_99
    move v2, v1

    .line 3845
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2d
    if-eqz v2, :cond_9a

    .line 3846
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3848
    goto/16 :goto_2f

    .line 3849
    :cond_9a
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 3852
    .local v0, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->setSsid(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3853
    .local v3, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3854
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3855
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3856
    goto/16 :goto_2f

    .line 3827
    .end local v0    # "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_44
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9b

    goto :goto_2e

    :cond_9b
    move v2, v1

    .line 3828
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2e
    if-eqz v2, :cond_9c

    .line 3829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3831
    goto/16 :goto_2f

    .line 3832
    :cond_9c
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    move-result-object v0

    .line 3835
    .local v0, "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v3

    .line 3836
    .restart local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3837
    invoke-virtual {v3, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3839
    goto :goto_2f

    .line 3807
    .end local v0    # "callback":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_45
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9d

    move v1, v2

    nop

    .line 3808
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9d
    if-eqz v1, :cond_9e

    .line 3809
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3811
    goto :goto_2f

    .line 3812
    :cond_9e
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3814
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$3;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getTypeCallback;)V

    .line 3822
    goto :goto_2f

    .line 3787
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_46
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_9f

    move v1, v2

    nop

    .line 3788
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_9f
    if-eqz v1, :cond_a0

    .line 3789
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3791
    goto :goto_2f

    .line 3792
    :cond_a0
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3794
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$2;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getInterfaceName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getInterfaceNameCallback;)V

    .line 3802
    goto :goto_2f

    .line 3767
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_47
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a1

    move v1, v2

    nop

    .line 3768
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_a1
    if-eqz v1, :cond_a2

    .line 3769
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3770
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3771
    goto :goto_2f

    .line 3772
    :cond_a2
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantNetwork"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3774
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub$1;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->getId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    .line 3782
    nop

    .line 5281
    .end local v1    # "_hidl_is_oneway":Z
    :cond_a3
    :goto_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
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

    .line 3720
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3746
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaNetwork"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3747
    return-object p0

    .line 3749
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

    .line 3753
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->registerService(Ljava/lang/String;)V

    .line 3754
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 3711
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3740
    const/4 v0, 0x1

    return v0
.end method
