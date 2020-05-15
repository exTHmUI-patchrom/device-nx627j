.class public final Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;
.super Ljava/lang/Object;
.source "NanDiscoveryCommonConfig.java"


# instance fields
.field public configRangingIndications:I

.field public disableDiscoveryTerminationIndication:Z

.field public disableFollowupReceivedIndication:Z

.field public disableMatchExpirationIndication:Z

.field public discoveryCount:B

.field public discoveryMatchIndicator:I

.field public discoveryWindowPeriod:S

.field public distanceEgressCm:S

.field public distanceIngressCm:S

.field public final extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public rangingIntervalMsec:I

.field public rangingRequired:Z

.field public final rxMatchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

.field public final serviceName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final serviceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public sessionId:B

.field public ttlSec:S

.field public final txMatchFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public useRssiThreshold:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

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
            "Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 296
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 297
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xb0

    int-to-long v5, v3

    .line 298
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 297
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 301
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 303
    new-instance v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;-><init>()V

    .line 304
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;
    mul-int/lit16 v6, v4, 0xb0

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 305
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
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
            "Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 406
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 407
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 408
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 409
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0xb0

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 410
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 411
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    mul-int/lit16 v5, v2, 0xb0

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 416
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 417
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 141
    return v0

    .line 143
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 144
    return v1

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    if-eq v2, v3, :cond_2

    .line 147
    return v1

    .line 149
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    .line 150
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    if-eq v3, v4, :cond_3

    .line 151
    return v1

    .line 153
    :cond_3
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    if-eq v3, v4, :cond_4

    .line 154
    return v1

    .line 156
    :cond_4
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    if-eq v3, v4, :cond_5

    .line 157
    return v1

    .line 159
    :cond_5
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    if-eq v3, v4, :cond_6

    .line 160
    return v1

    .line 162
    :cond_6
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 163
    return v1

    .line 165
    :cond_7
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    if-eq v3, v4, :cond_8

    .line 166
    return v1

    .line 168
    :cond_8
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 169
    return v1

    .line 171
    :cond_9
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 172
    return v1

    .line 174
    :cond_a
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 175
    return v1

    .line 177
    :cond_b
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 178
    return v1

    .line 180
    :cond_c
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    if-eq v3, v4, :cond_d

    .line 181
    return v1

    .line 183
    :cond_d
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    if-eq v3, v4, :cond_e

    .line 184
    return v1

    .line 186
    :cond_e
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    if-eq v3, v4, :cond_f

    .line 187
    return v1

    .line 189
    :cond_f
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    if-eq v3, v4, :cond_10

    .line 190
    return v1

    .line 192
    :cond_10
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 193
    return v1

    .line 195
    :cond_11
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    if-eq v3, v4, :cond_12

    .line 196
    return v1

    .line 198
    :cond_12
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    if-eq v3, v4, :cond_13

    .line 199
    return v1

    .line 201
    :cond_13
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 202
    return v1

    .line 204
    :cond_14
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    if-eq v3, v4, :cond_15

    .line 205
    return v1

    .line 207
    :cond_15
    iget-short v3, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    iget-short v4, v2, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    if-eq v3, v4, :cond_16

    .line 208
    return v1

    .line 210
    :cond_16
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 215
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 216
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    .line 217
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 218
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 219
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    .line 220
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 222
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 223
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    .line 224
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    .line 225
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 226
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 227
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 228
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 229
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 230
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 231
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 234
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 235
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 215
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

    .line 314
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    .line 315
    const-wide/16 v4, 0x2

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    .line 316
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v4

    iput-short v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    .line 317
    const-wide/16 v4, 0x6

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 319
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 320
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x1

    int-to-long v9, v7

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 320
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 324
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 325
    const/4 v8, 0x0

    move v9, v8

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 327
    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 328
    .local v10, "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 331
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 333
    const-wide/16 v6, 0x20

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 334
    .local v9, "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x1

    int-to-long v12, v10

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v6, p3, v6

    add-long v16, v6, v2

    const/16 v18, 0x1

    .line 334
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 338
    .local v6, "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 339
    move v7, v8

    .local v7, "_hidl_index_0":I
    :goto_1
    if-ge v7, v9, :cond_1

    .line 341
    mul-int/lit8 v10, v7, 0x1

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 342
    .restart local v10    # "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 346
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_1
    const-wide/16 v6, 0x30

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 347
    .restart local v9    # "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x1

    int-to-long v12, v10

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v6, p3, v6

    add-long v16, v6, v2

    const/16 v18, 0x1

    .line 347
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 351
    .restart local v6    # "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 352
    move v7, v8

    .restart local v7    # "_hidl_index_0":I
    :goto_2
    if-ge v7, v9, :cond_2

    .line 354
    mul-int/lit8 v10, v7, 0x1

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 355
    .restart local v10    # "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 359
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_2
    const-wide/16 v6, 0x40

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 360
    .restart local v9    # "_hidl_vec_size":I
    mul-int/lit8 v10, v9, 0x1

    int-to-long v12, v10

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    add-long v6, p3, v6

    add-long v16, v6, v2

    const/16 v18, 0x1

    .line 360
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 364
    .restart local v6    # "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 365
    move v7, v8

    .restart local v7    # "_hidl_index_0":I
    :goto_3
    if-ge v7, v9, :cond_3

    .line 367
    mul-int/lit8 v10, v7, 0x1

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 368
    .restart local v10    # "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 372
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v9    # "_hidl_vec_size":I
    :cond_3
    const-wide/16 v6, 0x50

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 373
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v10, v5

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v5, p3, v6

    add-long v14, v5, v2

    const/16 v16, 0x1

    .line 373
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 377
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 378
    nop

    .local v8, "_hidl_index_0":I
    :goto_4
    move v3, v8

    .end local v8    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v4, :cond_4

    .line 380
    mul-int/lit8 v5, v3, 0x1

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 381
    .local v5, "_hidl_vec_element":B
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v8    # "_hidl_index_0":I
    goto :goto_4

    .line 384
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    .end local v8    # "_hidl_index_0":I
    :cond_4
    const-wide/16 v2, 0x60

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 385
    const-wide/16 v2, 0x61

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 386
    const-wide/16 v2, 0x62

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 387
    const-wide/16 v2, 0x63

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 388
    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v3, 0x68

    add-long v3, p3, v3

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 389
    const-wide/16 v2, 0xa0

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 390
    const-wide/16 v2, 0xa4

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    .line 391
    const-wide/16 v2, 0xa8

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 392
    const-wide/16 v2, 0xac

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    .line 393
    const-wide/16 v2, 0xae

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    .line 394
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 287
    const-wide/16 v0, 0xb0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 288
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 289
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ".sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", .ttlSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", .discoveryWindowPeriod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, ", .discoveryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", .serviceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, ", .discoveryMatchIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanMatchAlg;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, ", .serviceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ", .extendedServiceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, ", .rxMatchFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ", .txMatchFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ", .useRssiThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, ", .disableDiscoveryTerminationIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, ", .disableMatchExpirationIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, ", .disableFollowupReceivedIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, ", .securityConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, ", .rangingRequired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, ", .rangingIntervalMsec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", .configRangingIndications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-static {v1}, Landroid/hardware/wifi/V1_0/NanRangingIndication;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, ", .distanceIngressCm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, ", .distanceEgressCm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-short v1, p0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
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

    .line 421
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-byte v6, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 422
    const-wide/16 v4, 0x2

    add-long v4, p2, v4

    iget-short v6, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 423
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget-short v6, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 424
    const-wide/16 v4, 0x6

    add-long v4, p2, v4

    iget-byte v6, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 426
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 427
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 428
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 429
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x1

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 430
    .local v7, "childBlob":Landroid/os/HwBlob;
    move v8, v11

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 431
    mul-int/lit8 v12, v8, 0x1

    int-to-long v12, v12

    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v7, v12, v13, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 430
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 433
    .end local v8    # "_hidl_index_0":I
    :cond_0
    add-long v11, p2, v5

    add-long/2addr v11, v2

    invoke-virtual {v1, v11, v12, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 435
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    iget v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 437
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 438
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x20

    add-long v11, p2, v7

    add-long/2addr v11, v5

    invoke-virtual {v1, v11, v12, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 439
    add-long v11, p2, v7

    add-long/2addr v11, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 440
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 441
    .local v11, "childBlob":Landroid/os/HwBlob;
    const/4 v12, 0x0

    .local v12, "_hidl_index_0":I
    :goto_1
    if-ge v12, v4, :cond_1

    .line 442
    mul-int/lit8 v13, v12, 0x1

    int-to-long v9, v13

    iget-object v13, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v11, v9, v10, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 441
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v9, 0xc

    goto :goto_1

    .line 444
    .end local v12    # "_hidl_index_0":I
    :cond_1
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 447
    .end local v4    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 448
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x30

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 449
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 450
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v4, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 451
    .local v9, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_2
    if-ge v10, v4, :cond_2

    .line 452
    mul-int/lit8 v11, v10, 0x1

    int-to-long v11, v11

    iget-object v13, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 451
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 454
    .end local v10    # "_hidl_index_0":I
    :cond_2
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 457
    .end local v4    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 458
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x40

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 459
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 460
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v4, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 461
    .restart local v9    # "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .restart local v10    # "_hidl_index_0":I
    :goto_3
    if-ge v10, v4, :cond_3

    .line 462
    mul-int/lit8 v11, v10, 0x1

    int-to-long v11, v11

    iget-object v13, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 461
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 464
    .end local v10    # "_hidl_index_0":I
    :cond_3
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 467
    .end local v4    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 468
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x50

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 469
    add-long v5, p2, v7

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v5, v6, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 470
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 471
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v13, "_hidl_index_0":I
    :goto_4
    move v6, v13

    .end local v13    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v4, :cond_4

    .line 472
    mul-int/lit8 v9, v6, 0x1

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 471
    add-int/lit8 v13, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v13    # "_hidl_index_0":I
    goto :goto_4

    .line 474
    .end local v13    # "_hidl_index_0":I
    :cond_4
    add-long v6, p2, v7

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 476
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x60

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 477
    const-wide/16 v2, 0x61

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 478
    const-wide/16 v2, 0x62

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 479
    const-wide/16 v2, 0x63

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 480
    iget-object v2, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v3, 0x68

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 481
    const-wide/16 v2, 0xa0

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 482
    const-wide/16 v2, 0xa4

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingIntervalMsec:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 483
    const-wide/16 v2, 0xa8

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->configRangingIndications:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 484
    const-wide/16 v2, 0xac

    add-long v2, p2, v2

    iget-short v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceIngressCm:S

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 485
    const-wide/16 v2, 0xae

    add-long v2, p2, v2

    iget-short v4, v0, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->distanceEgressCm:S

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 486
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 397
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xb0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 398
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 399
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 400
    return-void
.end method
