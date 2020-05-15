.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiPowerStats"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;


# instance fields
.field public energyConsumedMah:D

.field public idleTimeMs:J

.field public loggingDurationMs:J

.field public rxTimeMs:J

.field public txTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6879
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 6880
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    .line 6881
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 2

    .line 6853
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-nez v0, :cond_1

    .line 6854
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6856
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-nez v1, :cond_0

    .line 6857
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    .line 6859
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6861
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6989
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6983
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 4

    .line 6884
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    .line 6885
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    .line 6886
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    .line 6887
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    .line 6888
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    .line 6889
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->cachedSize:I

    .line 6890
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 6917
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 6918
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 6919
    const/4 v1, 0x1

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    .line 6920
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6922
    :cond_0
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    .line 6923
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    .line 6924
    const/4 v1, 0x2

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    .line 6925
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 6927
    :cond_1
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 6928
    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    .line 6929
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6931
    :cond_2
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 6932
    const/4 v1, 0x4

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    .line 6933
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6935
    :cond_3
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 6936
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    .line 6937
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6939
    :cond_4
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6847
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6947
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6948
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 6952
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6953
    return-object p0

    .line 6974
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    .end local v0    # "tag":I
    goto :goto_1

    .line 6970
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    .line 6971
    goto :goto_1

    .line 6966
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    .line 6967
    goto :goto_1

    .line 6962
    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    .line 6963
    goto :goto_1

    .line 6958
    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    .line 6959
    nop

    .line 6978
    .end local v0    # "tag":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 6950
    .restart local v0    # "tag":I
    :cond_6
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6896
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6897
    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6899
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    .line 6900
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 6901
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 6903
    :cond_1
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 6904
    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6906
    :cond_2
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 6907
    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6909
    :cond_3
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 6910
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6912
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6913
    return-void
.end method
