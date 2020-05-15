.class public final Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "CarrierIdProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/CarrierIdProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;


# instance fields
.field public carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    .line 33
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 2

    .line 14
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    if-nez v1, :cond_0

    .line 18
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    sput-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 1
    .param p0, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 1

    .line 36
    invoke-static {}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->emptyArray()[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->cachedSize:I

    .line 40
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 62
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 63
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    aget-object v2, v2, v1

    .line 66
    .local v2, "element":Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    if-eqz v2, :cond_0

    .line 67
    nop

    .line 68
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 64
    .end local v2    # "element":Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    if-eqz v1, :cond_2

    .line 73
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    .line 74
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 6
    .param p1, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 85
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 90
    return-object p0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    .end local v0    # "tag":I
    goto :goto_3

    .line 95
    .restart local v0    # "tag":I
    :cond_1
    nop

    .line 96
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 97
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    array-length v2, v2

    .line 98
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    .line 100
    .local v4, "newArray":[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    if-eqz v2, :cond_3

    .line 101
    iget-object v5, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :cond_3
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 104
    new-instance v3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;-><init>()V

    aput-object v3, v4, v2

    .line 105
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 109
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;-><init>()V

    aput-object v3, v4, v2

    .line 110
    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 111
    iput-object v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    .line 112
    nop

    .line 119
    .end local v0    # "tag":I
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    :cond_5
    :goto_3
    goto :goto_0

    .line 87
    .restart local v0    # "tag":I
    :cond_6
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

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

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    aget-object v1, v1, v0

    .line 49
    .local v1, "element":Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    if-eqz v1, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 47
    .end local v1    # "element":Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    if-eqz v0, :cond_2

    .line 55
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 57
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 58
    return-void
.end method
