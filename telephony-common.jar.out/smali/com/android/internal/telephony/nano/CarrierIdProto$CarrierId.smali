.class public final Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "CarrierIdProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/CarrierIdProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;


# instance fields
.field public canonicalId:I

.field public carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

.field public carrierName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    .line 162
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    .locals 2

    .line 140
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    if-nez v0, :cond_1

    .line 141
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    if-nez v1, :cond_0

    .line 144
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    sput-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    .line 146
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 148
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    .locals 1
    .param p0, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    .locals 1

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->canonicalId:I

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierName:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->emptyArray()[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->cachedSize:I

    .line 170
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 195
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 196
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->canonicalId:I

    if-eqz v1, :cond_0

    .line 197
    iget v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->canonicalId:I

    .line 198
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierName:Ljava/lang/String;

    .line 202
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 206
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    aget-object v2, v2, v1

    .line 207
    .local v2, "element":Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    if-eqz v2, :cond_2

    .line 208
    const/4 v3, 0x3

    .line 209
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 205
    .end local v2    # "element":Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    .locals 6
    .param p1, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 222
    .local v0, "tag":I
    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 226
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 227
    return-object p0

    .line 240
    :cond_0
    nop

    .line 241
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 242
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    array-length v2, v2

    .line 243
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    .line 245
    .local v4, "newArray":[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    if-eqz v2, :cond_2

    .line 246
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    :cond_2
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 249
    new-instance v3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;-><init>()V

    aput-object v3, v4, v2

    .line 250
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 251
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 254
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;-><init>()V

    aput-object v3, v4, v2

    .line 255
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 256
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    .line 257
    goto :goto_3

    .line 236
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierName:Ljava/lang/String;

    .line 237
    goto :goto_3

    .line 232
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->canonicalId:I

    .line 233
    nop

    .line 260
    .end local v0    # "tag":I
    :cond_6
    :goto_3
    goto :goto_0

    .line 224
    .restart local v0    # "tag":I
    :cond_7
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->canonicalId:I

    if-eqz v0, :cond_0

    .line 177
    iget v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->canonicalId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    aget-object v1, v1, v0

    .line 185
    .local v1, "element":Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    if-eqz v1, :cond_2

    .line 186
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 183
    .end local v1    # "element":Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 191
    return-void
.end method
