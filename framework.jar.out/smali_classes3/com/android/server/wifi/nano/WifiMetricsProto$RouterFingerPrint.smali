.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouterFingerPrint"
.end annotation


# static fields
.field public static final AUTH_ENTERPRISE:I = 0x3

.field public static final AUTH_OPEN:I = 0x1

.field public static final AUTH_PERSONAL:I = 0x2

.field public static final AUTH_UNKNOWN:I = 0x0

.field public static final ROAM_TYPE_DBDC:I = 0x3

.field public static final ROAM_TYPE_ENTERPRISE:I = 0x2

.field public static final ROAM_TYPE_NONE:I = 0x1

.field public static final ROAM_TYPE_UNKNOWN:I = 0x0

.field public static final ROUTER_TECH_A:I = 0x1

.field public static final ROUTER_TECH_AC:I = 0x5

.field public static final ROUTER_TECH_B:I = 0x2

.field public static final ROUTER_TECH_G:I = 0x3

.field public static final ROUTER_TECH_N:I = 0x4

.field public static final ROUTER_TECH_OTHER:I = 0x6

.field public static final ROUTER_TECH_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;


# instance fields
.field public authentication:I

.field public channelInfo:I

.field public dtim:I

.field public hidden:Z

.field public passpoint:Z

.field public roamType:I

.field public routerTechnology:I

.field public supportsIpv6:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3087
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 3088
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    .line 3089
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 2

    .line 3052
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    if-nez v0, :cond_1

    .line 3053
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3055
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    if-nez v1, :cond_0

    .line 3056
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    .line 3058
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3060
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3258
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3252
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1

    .line 3092
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    .line 3093
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    .line 3094
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 3095
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 3096
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    .line 3097
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    .line 3098
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    .line 3099
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    .line 3100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->cachedSize:I

    .line 3101
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 3136
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3137
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    if-eqz v1, :cond_0

    .line 3138
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    .line 3139
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3141
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    if-eqz v1, :cond_1

    .line 3142
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    .line 3143
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3145
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    if-eqz v1, :cond_2

    .line 3146
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 3147
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3149
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    if-eqz v1, :cond_3

    .line 3150
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 3151
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3153
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    if-eqz v1, :cond_4

    .line 3154
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    .line 3155
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3157
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    if-eqz v1, :cond_5

    .line 3158
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    .line 3159
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3161
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    if-eqz v1, :cond_6

    .line 3162
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    .line 3163
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3165
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    if-eqz v1, :cond_7

    .line 3166
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    .line 3167
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3169
    :cond_7
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3025
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3177
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3178
    .local v0, "tag":I
    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 3182
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3183
    return-object p0

    .line 3243
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    .end local v0    # "tag":I
    goto :goto_4

    .line 3239
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    .line 3240
    goto :goto_4

    .line 3224
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3225
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3233
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    .line 3236
    :goto_1
    goto :goto_4

    .line 3220
    .end local v1    # "value":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    .line 3221
    goto :goto_4

    .line 3208
    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3209
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 3214
    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    .line 3217
    :goto_2
    goto :goto_4

    .line 3204
    .end local v1    # "value":I
    :cond_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    .line 3205
    goto :goto_4

    .line 3200
    :cond_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    .line 3201
    goto :goto_4

    .line 3188
    :cond_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3189
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_2

    goto :goto_3

    .line 3194
    :pswitch_2
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    .line 3197
    :goto_3
    nop

    .line 3247
    .end local v0    # "tag":I
    .end local v1    # "value":I
    :cond_8
    :goto_4
    goto :goto_0

    .line 3180
    .restart local v0    # "tag":I
    :cond_9
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3107
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    if-eqz v0, :cond_0

    .line 3108
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3110
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    if-eqz v0, :cond_1

    .line 3111
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3113
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    if-eqz v0, :cond_2

    .line 3114
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3116
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    if-eqz v0, :cond_3

    .line 3117
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3119
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    if-eqz v0, :cond_4

    .line 3120
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3122
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    if-eqz v0, :cond_5

    .line 3123
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3125
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    if-eqz v0, :cond_6

    .line 3126
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3128
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    if-eqz v0, :cond_7

    .line 3129
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3131
    :cond_7
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3132
    return-void
.end method
