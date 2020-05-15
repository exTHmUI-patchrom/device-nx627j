.class public final Landroid/hardware/radio/V1_2/NetworkScanRequest;
.super Ljava/lang/Object;
.source "NetworkScanRequest.java"


# instance fields
.field public incrementalResults:Z

.field public incrementalResultsPeriodicity:I

.field public interval:I

.field public maxSearchTime:I

.field public final mccMncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final specifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_1/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_2/NetworkScanRequest;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/NetworkScanRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 127
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 128
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 129
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 128
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 132
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 134
    new-instance v5, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v5}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 135
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    mul-int/lit8 v6, v4, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 136
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
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
            "Landroid/hardware/radio/V1_2/NetworkScanRequest;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/NetworkScanRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 194
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 195
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 196
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 197
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x38

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 198
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 199
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    mul-int/lit8 v5, v2, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 204
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 205
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 50
    return v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 53
    return v1

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    if-eq v2, v3, :cond_2

    .line 56
    return v1

    .line 58
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    .line 59
    .local v2, "other":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    iget v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    iget v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    if-eq v3, v4, :cond_3

    .line 60
    return v1

    .line 62
    :cond_3
    iget v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    iget v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    if-eq v3, v4, :cond_4

    .line 63
    return v1

    .line 65
    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 66
    return v1

    .line 68
    :cond_5
    iget v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    iget v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    if-eq v3, v4, :cond_6

    .line 69
    return v1

    .line 71
    :cond_6
    iget-boolean v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    if-eq v3, v4, :cond_7

    .line 72
    return v1

    .line 74
    :cond_7
    iget v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    iget v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    if-eq v3, v4, :cond_8

    .line 75
    return v1

    .line 77
    :cond_8
    iget-object v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 78
    return v1

    .line 80
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 85
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    .line 88
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    .line 92
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 85
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 145
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    .line 146
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    .line 148
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 149
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x48

    int-to-long v9, v7

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 149
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 153
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 154
    const/4 v8, 0x0

    move v9, v8

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 155
    new-instance v10, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    invoke-direct {v10}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;-><init>()V

    .line 156
    .local v10, "_hidl_vec_element":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    mul-int/lit8 v11, v9, 0x48

    int-to-long v11, v11

    move-object/from16 v13, p1

    invoke-virtual {v10, v13, v7, v11, v12}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 157
    iget-object v11, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v10    # "_hidl_vec_element":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 160
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    :cond_0
    move-object/from16 v13, p1

    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    .line 161
    const-wide/16 v6, 0x1c

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    .line 162
    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 164
    const-wide/16 v6, 0x28

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 165
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x10

    int-to-long v9, v5

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v5, p3, v6

    add-long v18, v5, v2

    const/16 v20, 0x1

    .line 165
    move-wide v14, v9

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 169
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 170
    move v3, v8

    .local v3, "_hidl_index_0":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 171
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 172
    .local v5, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    .line 174
    nop

    .line 175
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 176
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    mul-int/lit8 v9, v3, 0x10

    add-int/2addr v9, v8

    int-to-long v9, v9

    const/16 v20, 0x0

    .line 174
    move-object/from16 v13, p1

    move-wide v14, v6

    move-wide/from16 v18, v9

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 179
    iget-object v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v5    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 118
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 119
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 120
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_1/ScanType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", .interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .specifiers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .maxSearchTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", .incrementalResults = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", .incrementalResultsPeriodicity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", .mccMncs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
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

    .line 209
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 210
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 212
    iget-object v4, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 213
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 214
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 215
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x48

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 216
    .local v7, "childBlob":Landroid/os/HwBlob;
    move v8, v11

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 217
    iget-object v12, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    mul-int/lit8 v13, v8, 0x48

    int-to-long v9, v13

    invoke-virtual {v12, v7, v9, v10}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 216
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v9, 0xc

    goto :goto_0

    .line 219
    .end local v8    # "_hidl_index_0":I
    :cond_0
    add-long v8, p2, v5

    add-long/2addr v8, v2

    invoke-virtual {v1, v8, v9, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 221
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    iget v4, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 222
    const-wide/16 v7, 0x1c

    add-long v7, p2, v7

    iget-boolean v4, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 223
    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    iget v4, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 225
    iget-object v4, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 226
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x28

    add-long v9, p2, v7

    add-long/2addr v9, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 227
    add-long v5, p2, v7

    const-wide/16 v9, 0xc

    add-long/2addr v5, v9

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 228
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 229
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v11, "_hidl_index_0":I
    :goto_1
    move v6, v11

    .end local v11    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v4, :cond_1

    .line 230
    mul-int/lit8 v9, v6, 0x10

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 229
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v11    # "_hidl_index_0":I
    goto :goto_1

    .line 232
    .end local v11    # "_hidl_index_0":I
    :cond_1
    add-long v6, p2, v7

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 234
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 185
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 186
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 188
    return-void
.end method
