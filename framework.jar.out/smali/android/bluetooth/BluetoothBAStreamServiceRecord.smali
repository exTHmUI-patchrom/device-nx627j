.class public final Landroid/bluetooth/BluetoothBAStreamServiceRecord;
.super Ljava/lang/Object;
.source "BluetoothBAStreamServiceRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BSSR_AFH_CHANNEL_MAP_UPDATE_METHOD_NONE:J = 0x0L

.field public static final BSSR_AFH_CHANNEL_MAP_UPDATE_METHOD_SCM:J = 0x1L

.field public static final BSSR_AFH_CHANNEL_MAP_UPDATE_METHOD_TRIGGERED_SYNC_TRAIN:J = 0x2L

.field public static final BSSR_CHANNELS_MONO:J = 0x1L

.field public static final BSSR_CHANNELS_STEREO:J = 0x4L

.field public static final BSSR_CODEC_FREQ_11025HZ:J = 0x2L

.field public static final BSSR_CODEC_FREQ_128KHZ:J = 0x1000L

.field public static final BSSR_CODEC_FREQ_12KHZ:J = 0x4L

.field public static final BSSR_CODEC_FREQ_16KHZ:J = 0x8L

.field public static final BSSR_CODEC_FREQ_176400HZ:J = 0x2000L

.field public static final BSSR_CODEC_FREQ_192KHZ:J = 0x4000L

.field public static final BSSR_CODEC_FREQ_22050HZ:J = 0x10L

.field public static final BSSR_CODEC_FREQ_24KHZ:J = 0x20L

.field public static final BSSR_CODEC_FREQ_32KHZ:J = 0x40L

.field public static final BSSR_CODEC_FREQ_44100HZ:J = 0x80L

.field public static final BSSR_CODEC_FREQ_48KHZ:J = 0x100L

.field public static final BSSR_CODEC_FREQ_64KHZ:J = 0x200L

.field public static final BSSR_CODEC_FREQ_88200HZ:J = 0x400L

.field public static final BSSR_CODEC_FREQ_8KHZ:J = 0x1L

.field public static final BSSR_CODEC_FREQ_96KHZ:J = 0x800L

.field public static final BSSR_CODEC_TYPE_CELT:J = 0x1L

.field public static final BSSR_ERASURE_CODE_2_5:J = 0x1L

.field public static final BSSR_ERASURE_CODE_3_7:J = 0x2L

.field public static final BSSR_ERASURE_CODE_3_8:J = 0x3L

.field public static final BSSR_ERASURE_CODE_3_9:J = 0x4L

.field public static final BSSR_ERASURE_CODE_NONE:J = 0x0L

.field public static final BSSR_SAMPLE_SIZE_16_BIT:J = 0x2L

.field public static final BSSR_SAMPLE_SIZE_24_BIT:J = 0x4L

.field public static final BSSR_SAMPLE_SIZE_8_BIT:J = 0x1L

.field public static final BSSR_SCMST_SUPPORT_COPY:J = 0x1L

.field public static final BSSR_SCMST_SUPPORT_FORWARD:J = 0x2L

.field public static final BSSR_SECURITY_ENCRYPT_TYPE_AESCCM:J = 0x200L

.field public static final BSSR_SECURITY_ENCRYPT_TYPE_NONE:J = 0x100L

.field public static final BSSR_SECURITY_KEY_TYPE_PRIVATE:J = 0x1L

.field public static final BSSR_SECURITY_KEY_TYPE_TEMP:J = 0x2L

.field public static final BSSR_TYPE_AFH_UPDATE_METHOD_ID:I = 0x9

.field public static final BSSR_TYPE_AFH_UPDATE_METHOD_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_CHANNELS_ID:I = 0x7

.field public static final BSSR_TYPE_CHANNELS_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FRAME_SAMPLES_ID:I = 0xc

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FRAME_SAMPLES_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FRAME_SIZE_ID:I = 0xb

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FRAME_SIZE_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FREQ_ID:I = 0xa

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_FREQ_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_ID:I = 0x3

.field public static final BSSR_TYPE_CODEC_CONFIG_CELT_ID_LEN:I = 0x6

.field public static final BSSR_TYPE_CODEC_TYPE_ID:I = 0x2

.field public static final BSSR_TYPE_CODEC_TYPE_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_ERASURE_CODE_ID:I = 0x6

.field public static final BSSR_TYPE_ERASURE_CODE_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_SAMPLE_SIZE_ID:I = 0x8

.field public static final BSSR_TYPE_SAMPLE_SIZE_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_SCMST_SUPPORT_ID:I = 0x5

.field public static final BSSR_TYPE_SCMST_SUPPORT_ID_LEN:I = 0x1

.field public static final BSSR_TYPE_SECURITY_ID:I = 0x1

.field public static final BSSR_TYPE_SECURITY_ID_LEN:I = 0x2

.field public static final BSSR_TYPE_STREAM_ID:I = 0x0

.field public static final BSSR_TYPE_STREAM_ID_LEN:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothBAStreamServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "BluetoothBAStreamServiceRecord"


# instance fields
.field mNumRecords:I

.field private mServiceRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Landroid/bluetooth/BluetoothBAStreamServiceRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothBAStreamServiceRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "numRec"    # I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    .line 193
    iput p1, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mNumRecords:I

    .line 194
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mNumRecords:I

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "recordSize":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "recordSize":I
    :goto_0
    iget v3, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mNumRecords:I

    if-ge v0, v3, :cond_1

    .line 178
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v3, "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    move v4, v1

    .local v4, "k":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 183
    .end local v4    # "k":I
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v3    # "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothBAStreamServiceRecord$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/bluetooth/BluetoothBAStreamServiceRecord$1;

    .line 45
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothBAStreamServiceRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addServiceRecord(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p1, "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 244
    .local v1, "mRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    .end local v1    # "mRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public addServiceRecordValue(Ljava/lang/Long;ILjava/lang/Long;)V
    .locals 4
    .param p1, "streamId"    # Ljava/lang/Long;
    .param p2, "recordAttribId"    # I
    .param p3, "recordAttribVal"    # Ljava/lang/Long;

    .line 214
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 216
    .local v2, "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void

    .line 221
    .end local v2    # "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    goto :goto_0

    .line 224
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v0, "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getNumRecords()I
    .locals 1

    .line 202
    iget v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mNumRecords:I

    return v0
.end method

.method public getServiceRecord(Ljava/lang/Long;)Ljava/util/Map;
    .locals 5
    .param p1, "streamId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    return-object v1

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 285
    .local v2, "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    return-object v2

    .line 289
    .end local v2    # "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    goto :goto_0

    .line 291
    :cond_2
    return-object v1
.end method

.method public getServiceRecordValue(Ljava/lang/Long;I)Ljava/lang/Long;
    .locals 4
    .param p1, "streamId"    # Ljava/lang/Long;
    .param p2, "recordAttribId"    # I

    .line 263
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 265
    .local v1, "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 269
    .end local v1    # "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    goto :goto_0

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public getStreamIds()[Ljava/lang/Long;
    .locals 6

    .line 300
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    .line 303
    .local v0, "streamIdList":[Ljava/lang/Long;
    const/4 v1, 0x0

    .line 304
    .local v1, "k":I
    iget-object v2, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 305
    .local v3, "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    add-int/lit8 v5, v1, 0x1

    .local v5, "k":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    aput-object v4, v0, v1

    .line 307
    .end local v1    # "k":I
    .end local v3    # "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    move v1, v5

    .end local v5    # "k":I
    .restart local v1    # "k":I
    :cond_1
    goto :goto_0

    .line 308
    :cond_2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Landroid/bluetooth/BluetoothBAStreamServiceRecord;->mServiceRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 154
    .local v1, "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 157
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    goto :goto_1

    .line 160
    .end local v1    # "mServiceRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method
