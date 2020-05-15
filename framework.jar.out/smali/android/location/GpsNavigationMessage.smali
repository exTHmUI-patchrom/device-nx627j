.class public Landroid/location/GpsNavigationMessage;
.super Ljava/lang/Object;
.source "GpsNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:S = 0x1s

.field public static final STATUS_PARITY_REBUILT:S = 0x2s

.field public static final STATUS_UNKNOWN:S = 0x0s

.field public static final TYPE_CNAV2:B = 0x4t

.field public static final TYPE_L1CA:B = 0x1t

.field public static final TYPE_L2CNAV:B = 0x2t

.field public static final TYPE_L5CNAV:B = 0x3t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mData:[B

.field private mMessageId:S

.field private mPrn:B

.field private mStatus:S

.field private mSubmessageId:S

.field private mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/location/GpsNavigationMessage;->EMPTY_ARRAY:[B

    .line 246
    new-instance v0, Landroid/location/GpsNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GpsNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/location/GpsNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->initialize()V

    .line 90
    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .locals 2

    .line 234
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    packed-switch v0, :pswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 240
    :pswitch_0
    const-string v0, "ParityRebuilt"

    return-object v0

    .line 238
    :pswitch_1
    const-string v0, "ParityPassed"

    return-object v0

    .line 236
    :pswitch_2
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    .line 130
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    packed-switch v0, :pswitch_data_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/location/GpsNavigationMessage;->mType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :pswitch_0
    const-string v0, "CNAV-2"

    return-object v0

    .line 138
    :pswitch_1
    const-string v0, "L5-CNAV"

    return-object v0

    .line 136
    :pswitch_2
    const-string v0, "L2-CNAV"

    return-object v0

    .line 134
    :pswitch_3
    const-string v0, "L1 C/A"

    return-object v0

    .line 132
    :pswitch_4
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .line 317
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    .line 318
    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    .line 319
    const/4 v1, -0x1

    iput-short v1, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    .line 320
    iput-short v1, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    .line 321
    sget-object v1, Landroid/location/GpsNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v1, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    .line 322
    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    .line 323
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    return-object v0
.end method

.method public getMessageId()S
    .locals 1

    .line 168
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    return v0
.end method

.method public getPrn()B
    .locals 1

    .line 151
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    return v0
.end method

.method public getStatus()S
    .locals 1

    .line 219
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    return v0
.end method

.method public getSubmessageId()S
    .locals 1

    .line 185
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    return v0
.end method

.method public getType()B
    .locals 1

    .line 115
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    return v0
.end method

.method public reset()V
    .locals 0

    .line 108
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->initialize()V

    .line 109
    return-void
.end method

.method public set(Landroid/location/GpsNavigationMessage;)V
    .locals 1
    .param p1, "navigationMessage"    # Landroid/location/GpsNavigationMessage;

    .line 96
    iget-byte v0, p1, Landroid/location/GpsNavigationMessage;->mType:B

    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    .line 97
    iget-byte v0, p1, Landroid/location/GpsNavigationMessage;->mPrn:B

    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    .line 98
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mMessageId:S

    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    .line 99
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    .line 100
    iget-object v0, p1, Landroid/location/GpsNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    .line 101
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mStatus:S

    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    .line 102
    return-void
.end method

.method public setData([B)V
    .locals 2
    .param p1, "value"    # [B

    .line 208
    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    .line 213
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Data must be a non-null array"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageId(S)V
    .locals 0
    .param p1, "value"    # S

    .line 175
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    .line 176
    return-void
.end method

.method public setPrn(B)V
    .locals 0
    .param p1, "value"    # B

    .line 158
    iput-byte p1, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    .line 159
    return-void
.end method

.method public setStatus(S)V
    .locals 0
    .param p1, "value"    # S

    .line 226
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    .line 227
    return-void
.end method

.method public setSubmessageId(S)V
    .locals 0
    .param p1, "value"    # S

    .line 192
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    .line 193
    return-void
.end method

.method public setType(B)V
    .locals 0
    .param p1, "value"    # B

    .line 122
    iput-byte p1, p0, Landroid/location/GpsNavigationMessage;->mType:B

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 295
    const-string v0, "   %-15s = %s\n"

    .line 296
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GpsNavigationMessage:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "   %-15s = %s\n"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Type"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Prn"

    aput-object v5, v4, v6

    iget-byte v5, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Status"

    aput-object v5, v4, v6

    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->getStatusString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "MessageId"

    aput-object v5, v4, v6

    iget-short v5, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "SubmessageId"

    aput-object v5, v4, v6

    iget-short v5, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v2, "   %-15s = %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Data"

    aput-object v4, v3, v6

    const-string/jumbo v4, "{"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v2, "        "

    .line 306
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    array-length v4, v3

    :goto_0
    if-ge v6, v4, :cond_0

    aget-byte v5, v3, v6

    .line 307
    .local v5, "value":B
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    const-string v2, ", "

    .line 306
    .end local v5    # "value":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 311
    :cond_0
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 279
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 280
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 281
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 285
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    return-void
.end method
