.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonySettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings$WiFiCallingMode;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings$RilNetworkMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;


# instance fields
.field public isAirplaneMode:Z

.field public isCellularDataEnabled:Z

.field public isDataRoamingEnabled:Z

.field public isEnhanced4GLteModeEnabled:Z

.field public isVtOverLteEnabled:Z

.field public isVtOverWifiEnabled:Z

.field public isWifiCallingEnabled:Z

.field public isWifiEnabled:Z

.field public preferredNetworkMode:I

.field public wifiCallingMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 934
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 935
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 936
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 2

    .line 893
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_1

    .line 894
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v1, :cond_0

    .line 897
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 899
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 901
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 1
    .param p0, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1149
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1143
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 1

    .line 939
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    .line 940
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    .line 941
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    .line 942
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 943
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    .line 944
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    .line 945
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 946
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    .line 947
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    .line 948
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 950
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->cachedSize:I

    .line 951
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 992
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 993
    .local v0, "size":I
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    if-eqz v1, :cond_0

    .line 994
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    .line 995
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 997
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    if-eqz v1, :cond_1

    .line 998
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    .line 999
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1001
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    if-eqz v1, :cond_2

    .line 1002
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    .line 1003
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1005
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    if-eqz v1, :cond_3

    .line 1006
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 1007
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1009
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    if-eqz v1, :cond_4

    .line 1010
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    .line 1011
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1013
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    if-eqz v1, :cond_5

    .line 1014
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    .line 1015
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1017
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    if-eqz v1, :cond_6

    .line 1018
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 1019
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1021
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    if-eqz v1, :cond_7

    .line 1022
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    .line 1023
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1025
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    if-eqz v1, :cond_8

    .line 1026
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    .line 1027
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1029
    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    if-eqz v1, :cond_9

    .line 1030
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    .line 1031
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1033
    :cond_9
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 3
    .param p1, "input"    # Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1042
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1046
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1047
    return-object p0

    .line 1134
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    .end local v0    # "tag":I
    goto :goto_1

    .line 1130
    .restart local v0    # "tag":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    .line 1131
    goto :goto_1

    .line 1113
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1114
    .local v1, "initialPos":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 1115
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 1123
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1124
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    .line 1125
    goto :goto_1

    .line 1120
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    .line 1121
    goto :goto_1

    .line 1109
    .end local v1    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 1110
    goto :goto_1

    .line 1105
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    .line 1106
    goto :goto_1

    .line 1101
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    .line 1102
    goto :goto_1

    .line 1064
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1065
    .restart local v1    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 1066
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 1094
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1095
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    .line 1096
    goto :goto_1

    .line 1091
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 1092
    goto :goto_1

    .line 1060
    .end local v1    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    .line 1061
    goto :goto_1

    .line 1056
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    .line 1057
    goto :goto_1

    .line 1052
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    .line 1053
    goto :goto_1

    .line 1044
    :sswitch_a
    return-object p0

    .line 1138
    .end local v0    # "tag":I
    :cond_0
    :goto_1
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 958
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 960
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    if-eqz v0, :cond_1

    .line 961
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 963
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    if-eqz v0, :cond_2

    .line 964
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 966
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    if-eqz v0, :cond_3

    .line 967
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 969
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    if-eqz v0, :cond_4

    .line 970
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 972
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    if-eqz v0, :cond_5

    .line 973
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 975
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    if-eqz v0, :cond_6

    .line 976
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 978
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    if-eqz v0, :cond_7

    .line 979
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 981
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    if-eqz v0, :cond_8

    .line 982
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 984
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    if-eqz v0, :cond_9

    .line 985
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 987
    :cond_9
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 988
    return-void
.end method
