.class public final Landroid/hardware/wifi/V1_0/NanMatchInd;
.super Ljava/lang/Object;
.source "NanMatchInd.java"


# instance fields
.field public final addr:[B

.field public discoverySessionId:B

.field public final extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final matchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public matchOccuredInBeaconFlag:Z

.field public outOfResourceFlag:Z

.field public peerCipherType:I

.field public peerId:I

.field public peerRequiresRanging:Z

.field public peerRequiresSecurityEnabledInNdp:Z

.field public rangingIndicationType:I

.field public rangingMeasurementInCm:I

.field public rssiValue:B

.field public final serviceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/NanMatchInd;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanMatchInd;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 223
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 224
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 225
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 224
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 228
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 229
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 230
    new-instance v5, Landroid/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    .line 231
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanMatchInd;
    mul-int/lit8 v6, v4, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 232
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanMatchInd;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/NanMatchInd;",
            ">;)V"
        }
    .end annotation

    .line 305
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanMatchInd;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 307
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 308
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 309
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 310
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x58

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 311
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 312
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanMatchInd;

    mul-int/lit8 v5, v2, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 317
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 318
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 104
    return v0

    .line 106
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 107
    return v1

    .line 109
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanMatchInd;

    if-eq v2, v3, :cond_2

    .line 110
    return v1

    .line 112
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanMatchInd;

    .line 113
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanMatchInd;
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    if-eq v3, v4, :cond_3

    .line 114
    return v1

    .line 116
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    if-eq v3, v4, :cond_4

    .line 117
    return v1

    .line 119
    :cond_4
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 120
    return v1

    .line 122
    :cond_5
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 123
    return v1

    .line 125
    :cond_6
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 126
    return v1

    .line 128
    :cond_7
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 129
    return v1

    .line 131
    :cond_8
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    if-eq v3, v4, :cond_9

    .line 132
    return v1

    .line 134
    :cond_9
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    if-eq v3, v4, :cond_a

    .line 135
    return v1

    .line 137
    :cond_a
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    if-eq v3, v4, :cond_b

    .line 138
    return v1

    .line 140
    :cond_b
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    if-eq v3, v4, :cond_c

    .line 141
    return v1

    .line 143
    :cond_c
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    if-eq v3, v4, :cond_d

    .line 144
    return v1

    .line 146
    :cond_d
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    if-eq v3, v4, :cond_e

    .line 147
    return v1

    .line 149
    :cond_e
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    if-eq v3, v4, :cond_f

    .line 150
    return v1

    .line 152
    :cond_f
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 153
    return v1

    .line 155
    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 160
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 161
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    .line 163
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 164
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 165
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    .line 166
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 169
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 171
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 160
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 241
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    .line 242
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    .line 244
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 245
    .local v6, "_hidl_array_offset_0":J
    iget-object v8, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    const/4 v9, 0x6

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 246
    nop

    .line 249
    .end local v6    # "_hidl_array_offset_0":J
    const-wide/16 v6, 0x10

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 250
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x1

    int-to-long v11, v9

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v6, p3, v6

    add-long v15, v6, v2

    .line 250
    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 254
    .local v6, "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 255
    const/4 v7, 0x0

    move v9, v7

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 257
    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 258
    .local v10, "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 262
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_vec_size":I
    .end local v9    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v8, 0x20

    add-long v10, p3, v8

    add-long/2addr v10, v4

    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 263
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v10, v6, 0x1

    int-to-long v12, v10

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v8, p3, v8

    add-long v16, v8, v2

    const/16 v18, 0x1

    .line 263
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 267
    .local v8, "childBlob":Landroid/os/HwBlob;
    iget-object v9, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 268
    move v9, v7

    .restart local v9    # "_hidl_index_0":I
    :goto_1
    if-ge v9, v6, :cond_1

    .line 270
    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 271
    .restart local v10    # "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 275
    .end local v6    # "_hidl_vec_size":I
    .end local v8    # "childBlob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    :cond_1
    const-wide/16 v8, 0x30

    add-long v10, p3, v8

    add-long/2addr v10, v4

    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 276
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v11, v5

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v5, p3, v8

    add-long v15, v5, v2

    const/16 v17, 0x1

    .line 276
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 280
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 281
    nop

    .local v7, "_hidl_index_0":I
    :goto_2
    move v3, v7

    .end local v7    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v4, :cond_2

    .line 283
    mul-int/lit8 v5, v3, 0x1

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 284
    .local v5, "_hidl_vec_element":B
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v7    # "_hidl_index_0":I
    goto :goto_2

    .line 287
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "_hidl_index_0":I
    :cond_2
    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    .line 288
    const-wide/16 v2, 0x41

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    .line 289
    const-wide/16 v2, 0x42

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    .line 290
    const-wide/16 v2, 0x44

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    .line 291
    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 292
    const-wide/16 v2, 0x49

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    .line 293
    const-wide/16 v2, 0x4c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    .line 294
    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    .line 295
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 214
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 215
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanMatchInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 216
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ".discoverySessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", .peerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", .addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", .serviceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", .extendedServiceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ", .matchFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ", .matchOccuredInBeaconFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, ", .outOfResourceFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ", .rssiValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ", .peerCipherType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanCipherSuiteType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", .peerRequiresSecurityEnabledInNdp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ", .peerRequiresRanging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ", .rangingMeasurementInCm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ", .rangingIndicationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanRangingIndication;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    move-object v0, p0

    move-object/from16 v1, p1

    .line 322
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-byte v6, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->discoverySessionId:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 323
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget v6, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 325
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    .line 326
    .local v6, "_hidl_array_offset_0":J
    iget-object v8, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->addr:[B

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 327
    nop

    .line 330
    .end local v6    # "_hidl_array_offset_0":J
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 331
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x10

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 332
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 333
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 334
    .local v9, "childBlob":Landroid/os/HwBlob;
    move v10, v13

    .local v10, "_hidl_index_0":I
    :goto_0
    if-ge v10, v6, :cond_0

    .line 335
    mul-int/lit8 v13, v10, 0x1

    int-to-long v11, v13

    iget-object v13, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 334
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v11, 0xc

    const/4 v13, 0x0

    goto :goto_0

    .line 337
    .end local v10    # "_hidl_index_0":I
    :cond_0
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 340
    .end local v6    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 341
    .restart local v6    # "_hidl_vec_size":I
    const-wide/16 v7, 0x20

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 342
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 343
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 344
    .restart local v9    # "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .restart local v10    # "_hidl_index_0":I
    :goto_1
    if-ge v10, v6, :cond_1

    .line 345
    mul-int/lit8 v11, v10, 0x1

    int-to-long v11, v11

    iget-object v13, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 344
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 347
    .end local v10    # "_hidl_index_0":I
    :cond_1
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 350
    .end local v6    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 351
    .restart local v6    # "_hidl_vec_size":I
    const-wide/16 v7, 0x30

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 352
    add-long v4, p2, v7

    const-wide/16 v9, 0xc

    add-long/2addr v4, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v4, v5, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 353
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v6, 0x1

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 354
    .local v4, "childBlob":Landroid/os/HwBlob;
    nop

    .local v11, "_hidl_index_0":I
    :goto_2
    move v5, v11

    .end local v11    # "_hidl_index_0":I
    .local v5, "_hidl_index_0":I
    if-ge v5, v6, :cond_2

    .line 355
    mul-int/lit8 v9, v5, 0x1

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchFilter:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 354
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "_hidl_index_0":I
    .restart local v11    # "_hidl_index_0":I
    goto :goto_2

    .line 357
    .end local v11    # "_hidl_index_0":I
    :cond_2
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 359
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    const-wide/16 v2, 0x40

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->matchOccuredInBeaconFlag:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 360
    const-wide/16 v2, 0x41

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->outOfResourceFlag:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 361
    const-wide/16 v2, 0x42

    add-long v2, p2, v2

    iget-byte v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rssiValue:B

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 362
    const-wide/16 v2, 0x44

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerCipherType:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 363
    const-wide/16 v2, 0x48

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 364
    const-wide/16 v2, 0x49

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->peerRequiresRanging:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 365
    const-wide/16 v2, 0x4c

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingMeasurementInCm:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 366
    const-wide/16 v2, 0x50

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/wifi/V1_0/NanMatchInd;->rangingIndicationType:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 367
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 298
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 299
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanMatchInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 300
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 301
    return-void
.end method
