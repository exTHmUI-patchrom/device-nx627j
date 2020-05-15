.class public abstract Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantIface.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 817
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 820
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 862
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 863
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 864
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 865
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 866
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

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 832
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 851
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 871
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 872
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

    .line 900
    const-wide/16 v0, 0x8

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_f

    .line 1294
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v3, v4

    nop

    :cond_0
    move v0, v3

    .line 1295
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2d

    .line 1296
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1297
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1298
    goto/16 :goto_f

    .line 1281
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    move v3, v4

    nop

    :cond_1
    move v0, v3

    .line 1282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_2

    .line 1283
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1284
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1285
    goto/16 :goto_f

    .line 1286
    :cond_2
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->notifySyspropsChanged()V

    .line 1289
    goto/16 :goto_f

    .line 1265
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    move v0, v4

    .line 1266
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_4

    .line 1267
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1268
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1269
    goto/16 :goto_f

    .line 1270
    :cond_4
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 1273
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1274
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1275
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1276
    goto/16 :goto_f

    .line 1250
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    move v0, v4

    .line 1251
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_6

    .line 1252
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1253
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1254
    goto/16 :goto_f

    .line 1255
    :cond_6
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->ping()V

    .line 1258
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1259
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1260
    goto/16 :goto_f

    .line 1240
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v3, v4

    nop

    :cond_7
    move v0, v3

    .line 1241
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2d

    .line 1242
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1243
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1244
    goto/16 :goto_f

    .line 1227
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8

    move v3, v4

    nop

    :cond_8
    move v0, v3

    .line 1228
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_9

    .line 1229
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1230
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1231
    goto/16 :goto_f

    .line 1232
    :cond_9
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->setHALInstrumentation()V

    .line 1235
    goto/16 :goto_f

    .line 1194
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    move v4, v3

    .line 1195
    .local v4, "_hidl_is_oneway":Z
    :goto_2
    if-eqz v4, :cond_b

    .line 1196
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1197
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1198
    goto/16 :goto_f

    .line 1199
    :cond_b
    const-string v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 1202
    .local v2, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1204
    new-instance v5, Landroid/os/HwBlob;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1206
    .local v5, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1207
    .local v6, "_hidl_vec_size":I
    invoke-virtual {v5, v0, v1, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1208
    const-wide/16 v0, 0xc

    invoke-virtual {v5, v0, v1, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1209
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, v6, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1210
    .local v0, "childBlob":Landroid/os/HwBlob;
    nop

    .local v3, "_hidl_index_0":I
    :goto_3
    move v1, v3

    .end local v3    # "_hidl_index_0":I
    .local v1, "_hidl_index_0":I
    if-ge v1, v6, :cond_c

    .line 1212
    mul-int/lit8 v3, v1, 0x20

    int-to-long v7, v3

    .line 1213
    .local v7, "_hidl_array_offset_1":J
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v7, v8, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1214
    nop

    .line 1210
    .end local v7    # "_hidl_array_offset_1":J
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "_hidl_index_0":I
    .restart local v3    # "_hidl_index_0":I
    goto :goto_3

    .line 1217
    .end local v3    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1219
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1221
    .end local v5    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1222
    goto/16 :goto_f

    .line 1178
    .end local v2    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    move v4, v3

    :goto_4
    move v0, v4

    .line 1179
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_e

    .line 1180
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1181
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1182
    goto/16 :goto_f

    .line 1183
    :cond_e
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1187
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1189
    goto/16 :goto_f

    .line 1164
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move v4, v3

    :goto_5
    move v0, v4

    .line 1165
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_10

    .line 1166
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1168
    goto/16 :goto_f

    .line 1169
    :cond_10
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1173
    goto/16 :goto_f

    .line 1148
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    move v4, v3

    :goto_6
    move v0, v4

    .line 1149
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12

    .line 1150
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1152
    goto/16 :goto_f

    .line 1153
    :cond_12
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 1156
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1157
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1158
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1159
    goto/16 :goto_f

    .line 1131
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13

    goto :goto_7

    :cond_13
    move v4, v3

    :goto_7
    move v0, v4

    .line 1132
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_14

    .line 1133
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto/16 :goto_f

    .line 1136
    :cond_14
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1139
    .local v1, "configMethods":S
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1140
    .local v2, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1141
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_f

    .line 1114
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "configMethods":S
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    goto :goto_8

    :cond_15
    move v4, v3

    :goto_8
    move v0, v4

    .line 1115
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16

    .line 1116
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1118
    goto/16 :goto_f

    .line 1119
    :cond_16
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1122
    .local v1, "serialNumber":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1123
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1124
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1126
    goto/16 :goto_f

    .line 1097
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serialNumber":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    goto :goto_9

    :cond_17
    move v4, v3

    :goto_9
    move v0, v4

    .line 1098
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_18

    .line 1099
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1100
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1101
    goto/16 :goto_f

    .line 1102
    :cond_18
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "modelNumber":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1106
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1107
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1108
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1109
    goto/16 :goto_f

    .line 1080
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "modelNumber":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19

    goto :goto_a

    :cond_19
    move v4, v3

    :goto_a
    move v0, v4

    .line 1081
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a

    .line 1082
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1084
    goto/16 :goto_f

    .line 1085
    :cond_1a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, "modelName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1089
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1090
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1091
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1092
    goto/16 :goto_f

    .line 1063
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "modelName":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    goto :goto_b

    :cond_1b
    move v4, v3

    :goto_b
    move v0, v4

    .line 1064
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_1c

    .line 1065
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1066
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1067
    goto/16 :goto_f

    .line 1068
    :cond_1c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1071
    .local v1, "manufacturer":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1072
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1073
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1075
    goto/16 :goto_f

    .line 1038
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "manufacturer":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_5
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_1d

    goto :goto_c

    :cond_1d
    move v4, v3

    .line 1039
    .restart local v4    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v4, :cond_1e

    .line 1040
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1042
    goto/16 :goto_f

    .line 1043
    :cond_1e
    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    const/16 v2, 0x8

    new-array v5, v2, [B

    .line 1047
    .local v5, "type":[B
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
    invoke-virtual {p0, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v0

    .line 1055
    .local v0, "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1056
    invoke-virtual {v0, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1057
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1058
    goto/16 :goto_f

    .line 1021
    .end local v0    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    .end local v4    # "_hidl_is_oneway":Z
    .end local v5    # "type":[B
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    goto :goto_d

    :cond_1f
    move v4, v3

    :goto_d
    move v0, v4

    .line 1022
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_20

    .line 1023
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1024
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1025
    goto/16 :goto_f

    .line 1026
    :cond_20
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1029
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 1030
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1031
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1033
    goto/16 :goto_f

    .line 1001
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21

    move v3, v4

    nop

    :cond_21
    move v0, v3

    .line 1002
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_22

    .line 1003
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1005
    goto/16 :goto_f

    .line 1006
    :cond_22
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$5;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$5;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    .line 1016
    goto/16 :goto_f

    .line 980
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23

    move v3, v4

    nop

    :cond_23
    move v0, v3

    .line 981
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_24

    .line 982
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 983
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 984
    goto/16 :goto_f

    .line 985
    :cond_24
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 988
    .local v1, "id":I
    new-instance v2, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$4;

    invoke-direct {v2, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$4;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1, v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    .line 996
    goto/16 :goto_f

    .line 963
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    goto :goto_e

    :cond_25
    move v4, v3

    :goto_e
    move v0, v4

    .line 964
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_26

    .line 965
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 967
    goto/16 :goto_f

    .line 968
    :cond_26
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 971
    .restart local v1    # "id":I
    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    .line 972
    .restart local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 973
    invoke-virtual {v2, p3}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 974
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 975
    goto :goto_f

    .line 943
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "id":I
    .end local v2    # "_hidl_out_status":Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27

    move v3, v4

    nop

    :cond_27
    move v0, v3

    .line 944
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28

    .line 945
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 946
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 947
    goto :goto_f

    .line 948
    :cond_28
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$3;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$3;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    .line 958
    goto :goto_f

    .line 923
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_29

    move v3, v4

    nop

    :cond_29
    move v0, v3

    .line 924
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2a

    .line 925
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto :goto_f

    .line 928
    :cond_2a
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$2;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$2;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->getType(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    .line 938
    goto :goto_f

    .line 903
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2b

    move v3, v4

    nop

    :cond_2b
    move v0, v3

    .line 904
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c

    .line 905
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 907
    goto :goto_f

    .line 908
    :cond_2c
    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    new-instance v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$1;

    invoke-direct {v1, p0, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub$1;-><init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->getName(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    .line 918
    nop

    .line 1303
    .end local v0    # "_hidl_is_oneway":Z
    :cond_2d
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 856
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 882
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    return-object p0

    .line 885
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

    .line 889
    invoke-virtual {p0, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->registerService(Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 847
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 876
    const/4 v0, 0x1

    return v0
.end method
