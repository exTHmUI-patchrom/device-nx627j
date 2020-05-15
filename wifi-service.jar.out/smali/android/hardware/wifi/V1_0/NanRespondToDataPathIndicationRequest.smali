.class public final Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;
.super Ljava/lang/Object;
.source "NanRespondToDataPathIndicationRequest.java"


# instance fields
.field public acceptRequest:Z

.field public final appInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public ifaceName:Ljava/lang/String;

.field public ndpInstanceId:I

.field public final securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

.field public final serviceNameOutOfBand:Ljava/util/ArrayList;
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

    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

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
            "Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 115
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 116
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 117
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 116
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 120
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 122
    new-instance v5, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 123
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;
    mul-int/lit8 v6, v4, 0x70

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 124
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
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
            "Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 181
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 182
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 183
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 184
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x70

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 185
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 186
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    mul-int/lit8 v5, v2, 0x70

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 191
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 192
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 44
    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 47
    return v1

    .line 49
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    if-eq v2, v3, :cond_2

    .line 50
    return v1

    .line 52
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    .line 53
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    if-eq v3, v4, :cond_3

    .line 54
    return v1

    .line 56
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    if-eq v3, v4, :cond_4

    .line 57
    return v1

    .line 59
    :cond_4
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 60
    return v1

    .line 62
    :cond_5
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 63
    return v1

    .line 65
    :cond_6
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 66
    return v1

    .line 68
    :cond_7
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 69
    return v1

    .line 71
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 80
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    .line 81
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 82
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 76
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 133
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    .line 134
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    .line 135
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    .line 137
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    .line 138
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v6, p3, v4

    add-long v12, v6, v2

    .line 137
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 142
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v7, 0x18

    add-long v7, p3, v7

    move-object/from16 v12, p1

    invoke-virtual {v6, v12, v1, v7, v8}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 144
    const-wide/16 v6, 0x50

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 145
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x1

    int-to-long v10, v9

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v6, p3, v6

    add-long/2addr v6, v2

    .line 145
    const/16 v16, 0x1

    move-object v9, v12

    move-wide v12, v13

    move-wide v14, v6

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 149
    .local v6, "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 150
    const/4 v7, 0x0

    move v9, v7

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 152
    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 153
    .local v10, "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 157
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_vec_size":I
    .end local v9    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v8, 0x60

    add-long v10, p3, v8

    add-long/2addr v10, v4

    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 158
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v10, v5

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v5, p3, v8

    add-long v14, v5, v2

    const/16 v16, 0x1

    .line 158
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 162
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 163
    nop

    .local v7, "_hidl_index_0":I
    :goto_1
    move v3, v7

    .end local v7    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v4, :cond_1

    .line 165
    mul-int/lit8 v5, v3, 0x1

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 166
    .local v5, "_hidl_vec_element":B
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v7    # "_hidl_index_0":I
    goto :goto_1

    .line 169
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "_hidl_index_0":I
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 106
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 107
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ".acceptRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", .ndpInstanceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", .ifaceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", .securityConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", .appInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", .serviceNameOutOfBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
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

    .line 196
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-boolean v6, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 197
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget v6, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 198
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget-object v8, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 199
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    invoke-virtual {v6, v1, v7, v8}, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 201
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 202
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x50

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 203
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 204
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 205
    .local v9, "childBlob":Landroid/os/HwBlob;
    move v10, v13

    .local v10, "_hidl_index_0":I
    :goto_0
    if-ge v10, v6, :cond_0

    .line 206
    mul-int/lit8 v13, v10, 0x1

    int-to-long v11, v13

    iget-object v13, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 205
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v11, 0xc

    const/4 v13, 0x0

    goto :goto_0

    .line 208
    .end local v10    # "_hidl_index_0":I
    :cond_0
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 211
    .end local v6    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 212
    .restart local v6    # "_hidl_vec_size":I
    const-wide/16 v7, 0x60

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 213
    add-long v4, p2, v7

    const-wide/16 v9, 0xc

    add-long/2addr v4, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 214
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v6, 0x1

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 215
    .local v4, "childBlob":Landroid/os/HwBlob;
    nop

    .local v9, "_hidl_index_0":I
    :goto_1
    move v5, v9

    .end local v9    # "_hidl_index_0":I
    .local v5, "_hidl_index_0":I
    if-ge v5, v6, :cond_1

    .line 216
    mul-int/lit8 v9, v5, 0x1

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 215
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "_hidl_index_0":I
    .restart local v9    # "_hidl_index_0":I
    goto :goto_1

    .line 218
    .end local v9    # "_hidl_index_0":I
    :cond_1
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 220
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 172
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 173
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 175
    return-void
.end method
