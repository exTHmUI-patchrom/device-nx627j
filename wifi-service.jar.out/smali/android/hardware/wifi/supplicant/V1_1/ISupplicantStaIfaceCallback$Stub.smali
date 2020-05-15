.class public abstract Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 714
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 717
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 761
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 762
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 763
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 764
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 765
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

    .line 736
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
        -0x33t
        0x43t
        0x30t
        -0x3dt
        0x19t
        0x6bt
        -0x26t
        0x1dt
        0x64t
        0x2at
        0x32t
        -0x55t
        -0x2t
        0x23t
        -0x59t
        -0x2at
        0x4et
        -0x41t
        -0x43t
        -0x59t
        0x21t
        -0x6ct
        0x6t
        0x43t
        -0x51t
        0x68t
        0x67t
        -0x51t
        0x3bt
        0x3ft
        0xat
        -0x57t
    .end array-data

    :array_1
    .array-data 1
        -0x29t
        -0x7ft
        -0x38t
        -0x29t
        -0x19t
        -0x4dt
        -0x2t
        0x5ct
        -0x36t
        -0x74t
        -0xat
        -0x1ft
        -0x28t
        -0x80t
        0x6et
        0x77t
        0x9t
        -0x7et
        -0x52t
        0x53t
        0x58t
        -0x39t
        -0x7ft
        0x6et
        -0x2bt
        0x1bt
        0xft
        0xet
        -0x3et
        0x72t
        -0x19t
        0xdt
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

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

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

    .line 730
    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 770
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 771
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

    .line 799
    const-wide/16 v0, 0x6

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1298
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v4, v5

    nop

    :cond_0
    move v0, v4

    .line 1299
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_37

    .line 1300
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1301
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1302
    goto/16 :goto_7

    .line 1285
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v4, v5

    nop

    :cond_1
    move v0, v4

    .line 1286
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_2

    .line 1287
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1288
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1289
    goto/16 :goto_7

    .line 1290
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->notifySyspropsChanged()V

    .line 1293
    goto/16 :goto_7

    .line 1269
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    move v0, v5

    .line 1270
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 1271
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1272
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1273
    goto/16 :goto_7

    .line 1274
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1277
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1278
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1280
    goto/16 :goto_7

    .line 1254
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    move v0, v5

    .line 1255
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 1256
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1258
    goto/16 :goto_7

    .line 1259
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->ping()V

    .line 1262
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1263
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1264
    goto/16 :goto_7

    .line 1244
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v4, v5

    nop

    :cond_7
    move v0, v4

    .line 1245
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_37

    .line 1246
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1248
    goto/16 :goto_7

    .line 1231
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v4, v5

    nop

    :cond_8
    move v0, v4

    .line 1232
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9

    .line 1233
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1235
    goto/16 :goto_7

    .line 1236
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->setHALInstrumentation()V

    .line 1239
    goto/16 :goto_7

    .line 1198
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v5, v4

    :goto_2
    move v0, v5

    .line 1199
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_b

    .line 1200
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1202
    goto/16 :goto_7

    .line 1203
    :cond_b
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1206
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1208
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1210
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1211
    .local v3, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1212
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1213
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v3, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1214
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v4, "_hidl_index_0":I
    :goto_3
    if-ge v4, v3, :cond_c

    .line 1216
    mul-int/lit8 v6, v4, 0x20

    int-to-long v6, v6

    .line 1217
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1218
    nop

    .line 1214
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1221
    .end local v4    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1223
    .end local v3    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1225
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1226
    goto/16 :goto_7

    .line 1182
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    move v5, v4

    :goto_4
    move v0, v5

    .line 1183
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 1184
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1185
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1186
    goto/16 :goto_7

    .line 1187
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1191
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1193
    goto/16 :goto_7

    .line 1168
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move v5, v4

    :goto_5
    move v0, v5

    .line 1169
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 1170
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1172
    goto/16 :goto_7

    .line 1173
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1176
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1177
    goto/16 :goto_7

    .line 1152
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v5, v4

    :goto_6
    move v0, v5

    .line 1153
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 1154
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1156
    goto/16 :goto_7

    .line 1157
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1160
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1161
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1163
    goto/16 :goto_7

    .line 1138
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13

    move v4, v5

    nop

    :cond_13
    move v0, v4

    .line 1139
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_14

    .line 1140
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1142
    goto/16 :goto_7

    .line 1143
    :cond_14
    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1146
    .local v1, "errorCode":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onEapFailure_1_1(I)V

    .line 1147
    goto/16 :goto_7

    .line 1124
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "errorCode":I
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v4, v5

    nop

    :cond_15
    move v0, v4

    .line 1125
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_16

    .line 1126
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1128
    goto/16 :goto_7

    .line 1129
    :cond_16
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1132
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onExtRadioWorkTimeout(I)V

    .line 1133
    goto/16 :goto_7

    .line 1110
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v4, v5

    nop

    :cond_17
    move v0, v4

    .line 1111
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_18

    .line 1112
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1114
    goto/16 :goto_7

    .line 1115
    :cond_18
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1118
    .restart local v1    # "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onExtRadioWorkStart(I)V

    .line 1119
    goto/16 :goto_7

    .line 1097
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19

    move v4, v5

    nop

    :cond_19
    move v0, v4

    .line 1098
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_1a

    .line 1099
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1100
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1101
    goto/16 :goto_7

    .line 1102
    :cond_1a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onWpsEventPbcOverlap()V

    .line 1105
    goto/16 :goto_7

    .line 1073
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_1b

    move v4, v5

    nop

    .line 1074
    .local v4, "_hidl_is_oneway":Z
    :cond_1b
    if-eq v4, v5, :cond_1c

    .line 1075
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1076
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1077
    goto/16 :goto_7

    .line 1078
    :cond_1c
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    new-array v3, v2, [B

    .line 1082
    .local v3, "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1084
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 1085
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1086
    nop

    .line 1089
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1090
    .local v0, "configError":S
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1091
    .local v1, "errorInd":S
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onWpsEventFail([BSS)V

    .line 1092
    goto/16 :goto_7

    .line 1060
    .end local v0    # "configError":S
    .end local v1    # "errorInd":S
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d

    move v4, v5

    nop

    :cond_1d
    move v0, v4

    .line 1061
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_1e

    .line 1062
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1064
    goto/16 :goto_7

    .line 1065
    :cond_1e
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onWpsEventSuccess()V

    .line 1068
    goto/16 :goto_7

    .line 1037
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_1f

    move v4, v5

    nop

    .line 1038
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v4, v5, :cond_20

    .line 1039
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1040
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1041
    goto/16 :goto_7

    .line 1042
    :cond_20
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    .line 1045
    .local v3, "reason":B
    new-array v5, v2, [B

    .line 1047
    .local v5, "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1049
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 1050
    .local v6, "_hidl_array_offset_0":J
    invoke-virtual {v0, v6, v7, v5, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1051
    nop

    .line 1054
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3, v5}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onBssidChanged(B[B)V

    .line 1055
    goto/16 :goto_7

    .line 1024
    .end local v3    # "reason":B
    .end local v4    # "_hidl_is_oneway":Z
    .end local v5    # "bssid":[B
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21

    move v4, v5

    nop

    :cond_21
    move v0, v4

    .line 1025
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_22

    .line 1026
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1027
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1028
    goto/16 :goto_7

    .line 1029
    :cond_22
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onEapFailure()V

    .line 1032
    goto/16 :goto_7

    .line 1002
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_23

    move v4, v5

    nop

    .line 1003
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v4, v5, :cond_24

    .line 1004
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1006
    goto/16 :goto_7

    .line 1007
    :cond_24
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    new-array v3, v2, [B

    .line 1011
    .local v3, "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1013
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 1014
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1015
    nop

    .line 1018
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p0, v3}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onAuthenticationTimeout([B)V

    .line 1019
    goto/16 :goto_7

    .line 978
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_25

    move v4, v5

    nop

    .line 979
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v4, v5, :cond_26

    .line 980
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 982
    goto/16 :goto_7

    .line 983
    :cond_26
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    new-array v3, v2, [B

    .line 987
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 989
    .restart local v0    # "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 990
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 991
    nop

    .line 994
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 995
    .local v0, "statusCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 996
    .local v1, "timedOut":Z
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onAssociationRejected([BIZ)V

    .line 997
    goto/16 :goto_7

    .line 954
    .end local v0    # "statusCode":I
    .end local v1    # "timedOut":Z
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_27

    move v4, v5

    nop

    .line 955
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v4, v5, :cond_28

    .line 956
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 958
    goto/16 :goto_7

    .line 959
    :cond_28
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    new-array v3, v2, [B

    .line 963
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 965
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 966
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 967
    nop

    .line 970
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 971
    .local v0, "locallyGenerated":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 972
    .local v1, "reasonCode":I
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onDisconnected([BZI)V

    .line 973
    goto/16 :goto_7

    .line 929
    .end local v0    # "locallyGenerated":Z
    .end local v1    # "reasonCode":I
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_29

    move v4, v5

    nop

    .line 930
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v4, v5, :cond_2a

    .line 931
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 933
    goto/16 :goto_7

    .line 934
    :cond_2a
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    new-array v3, v2, [B

    .line 938
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 940
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 941
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 942
    nop

    .line 945
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 946
    .local v0, "reasonCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 947
    .local v1, "reAuthDelayInSec":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    .line 949
    goto/16 :goto_7

    .line 905
    .end local v0    # "reasonCode":I
    .end local v1    # "reAuthDelayInSec":I
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2b

    move v4, v5

    nop

    .line 906
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v4, v5, :cond_2c

    .line 907
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 909
    goto/16 :goto_7

    .line 910
    :cond_2c
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    new-array v3, v2, [B

    .line 914
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 916
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 917
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 918
    nop

    .line 921
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 922
    .local v0, "osuMethod":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    .line 924
    goto/16 :goto_7

    .line 881
    .end local v0    # "osuMethod":B
    .end local v1    # "url":Ljava/lang/String;
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2d

    move v4, v5

    nop

    .line 882
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v4, v5, :cond_2e

    .line 883
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 885
    goto/16 :goto_7

    .line 886
    :cond_2e
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    new-array v3, v2, [B

    .line 890
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 892
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 893
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 894
    nop

    .line 897
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 899
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    .line 900
    goto/16 :goto_7

    .line 855
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2f

    move v4, v5

    nop

    .line 856
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v4, v5, :cond_30

    .line 857
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 859
    goto/16 :goto_7

    .line 860
    :cond_30
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    new-array v3, v2, [B

    .line 864
    .restart local v3    # "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 866
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 867
    .restart local v5    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 868
    nop

    .line 871
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_array_offset_0":J
    new-instance v0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {v0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 872
    .local v0, "data":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
    invoke-virtual {v0, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 873
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    invoke-direct {v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;-><init>()V

    .line 874
    .local v1, "hs20Data":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;
    invoke-virtual {v1, p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 875
    invoke-virtual {p0, v3, v0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onAnqpQueryDone([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    .line 876
    goto/16 :goto_7

    .line 830
    .end local v0    # "data":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;
    .end local v1    # "hs20Data":Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;
    .end local v3    # "bssid":[B
    .end local v4    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_31

    move v4, v5

    nop

    .line 831
    .restart local v4    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v4, v5, :cond_32

    .line 832
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 833
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 834
    goto :goto_7

    .line 835
    :cond_32
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 838
    .local v3, "newState":I
    new-array v5, v2, [B

    .line 840
    .local v5, "bssid":[B
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 842
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 843
    .restart local v6    # "_hidl_array_offset_0":J
    invoke-virtual {v0, v6, v7, v5, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 844
    nop

    .line 847
    .end local v0    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 848
    .local v0, "id":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 849
    .local v1, "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v3, v5, v0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onStateChanged(I[BILjava/util/ArrayList;)V

    .line 850
    goto :goto_7

    .line 816
    .end local v0    # "id":I
    .end local v1    # "ssid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "newState":I
    .end local v4    # "_hidl_is_oneway":Z
    .end local v5    # "bssid":[B
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_33

    move v4, v5

    nop

    :cond_33
    move v0, v4

    .line 817
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_34

    .line 818
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 820
    goto :goto_7

    .line 821
    :cond_34
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 824
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onNetworkRemoved(I)V

    .line 825
    goto :goto_7

    .line 802
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_35

    move v4, v5

    nop

    :cond_35
    move v0, v4

    .line 803
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_36

    .line 804
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 806
    goto :goto_7

    .line 807
    :cond_36
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 810
    .restart local v1    # "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->onNetworkAdded(I)V

    .line 811
    nop

    .line 1307
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :cond_37
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 755
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 781
    const-string v0, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    return-object p0

    .line 784
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

    .line 788
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 746
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 775
    const/4 v0, 0x1

    return v0
.end method
