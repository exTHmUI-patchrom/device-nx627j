.class public final Landroid/location/GnssNavigationMessage;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$Callback;,
        Landroid/location/GnssNavigationMessage$GnssNavigationMessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:I = 0x1

.field public static final STATUS_PARITY_REBUILT:I = 0x2

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final TYPE_BDS_D1:I = 0x501

.field public static final TYPE_BDS_D2:I = 0x502

.field public static final TYPE_GAL_F:I = 0x602

.field public static final TYPE_GAL_I:I = 0x601

.field public static final TYPE_GLO_L1CA:I = 0x301

.field public static final TYPE_GPS_CNAV2:I = 0x104

.field public static final TYPE_GPS_L1CA:I = 0x101

.field public static final TYPE_GPS_L2CNAV:I = 0x102

.field public static final TYPE_GPS_L5CNAV:I = 0x103

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mData:[B

.field private mMessageId:I

.field private mStatus:I

.field private mSubmessageId:I

.field private mSvid:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    .line 368
    new-instance v0, Landroid/location/GnssNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/location/GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    .line 144
    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .locals 2

    .line 356
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 362
    :pswitch_0
    const-string v0, "ParityRebuilt"

    return-object v0

    .line 360
    :pswitch_1
    const-string v0, "ParityPassed"

    return-object v0

    .line 358
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

    .line 191
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    if-eqz v0, :cond_1

    const/16 v1, 0x301

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 211
    :pswitch_0
    const-string v0, "Galileo F"

    return-object v0

    .line 209
    :pswitch_1
    const-string v0, "Galileo I"

    return-object v0

    .line 207
    :pswitch_2
    const-string v0, "Beidou D2"

    return-object v0

    .line 205
    :pswitch_3
    const-string v0, "Beidou D1"

    return-object v0

    .line 201
    :pswitch_4
    const-string v0, "GPS CNAV2"

    return-object v0

    .line 199
    :pswitch_5
    const-string v0, "GPS L5-CNAV"

    return-object v0

    .line 197
    :pswitch_6
    const-string v0, "GPS L2-CNAV"

    return-object v0

    .line 195
    :pswitch_7
    const-string v0, "GPS L1 C/A"

    return-object v0

    .line 203
    :cond_0
    const-string v0, "Glonass L1 C/A"

    return-object v0

    .line 193
    :cond_1
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x501
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x601
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 434
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 435
    const/4 v1, -0x1

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 436
    iput v1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 437
    sget-object v1, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 438
    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 439
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 257
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 339
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return v0
.end method

.method public getSubmessageId()I
    .locals 1

    .line 284
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return v0
.end method

.method public getSvid()I
    .locals 1

    .line 223
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 174
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return v0
.end method

.method public reset()V
    .locals 0

    .line 166
    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    .line 167
    return-void
.end method

.method public set(Landroid/location/GnssNavigationMessage;)V
    .locals 1
    .param p1, "navigationMessage"    # Landroid/location/GnssNavigationMessage;

    .line 152
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mType:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 153
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSvid:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 154
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 155
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 156
    iget-object v0, p1, Landroid/location/GnssNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 157
    iget v0, p1, Landroid/location/GnssNavigationMessage;->mStatus:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 158
    return-void
.end method

.method public setData([B)V
    .locals 2
    .param p1, "value"    # [B

    .line 328
    if-eqz p1, :cond_0

    .line 332
    iput-object p1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    .line 333
    return-void

    .line 329
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Data must be a non-null array"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 266
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    .line 267
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "value"    # I

    .line 348
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    .line 349
    return-void
.end method

.method public setSubmessageId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 293
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    .line 294
    return-void
.end method

.method public setSvid(I)V
    .locals 0
    .param p1, "value"    # I

    .line 232
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    .line 233
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "value"    # I

    .line 183
    iput p1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 411
    const-string v0, "   %-15s = %s\n"

    .line 412
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GnssNavigationMessage:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "   %-15s = %s\n"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Type"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Svid"

    aput-object v5, v4, v6

    iget v5, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Status"

    aput-object v5, v4, v6

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getStatusString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "MessageId"

    aput-object v5, v4, v6

    iget v5, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "SubmessageId"

    aput-object v5, v4, v6

    iget v5, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v2, "   %-15s = %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Data"

    aput-object v4, v3, v6

    const-string/jumbo v4, "{"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v2, "        "

    .line 422
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v4, v3

    :goto_0
    if-ge v6, v4, :cond_0

    aget-byte v5, v3, v6

    .line 423
    .local v5, "value":B
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const-string v2, ", "

    .line 422
    .end local v5    # "value":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 427
    :cond_0
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 395
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 401
    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    return-void
.end method
