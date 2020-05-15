.class public final Landroid/print/PrintDocumentInfo;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintDocumentInfo$Builder;,
        Landroid/print/PrintDocumentInfo$ContentType;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_DOCUMENT:I = 0x0

.field public static final CONTENT_TYPE_PHOTO:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrintDocumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_COUNT_UNKNOWN:I = -0x1


# instance fields
.field private mContentType:I

.field private mDataSize:J

.field private mName:Ljava/lang/String;

.field private mPageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 370
    new-instance v0, Landroid/print/PrintDocumentInfo$1;

    invoke-direct {v0}, Landroid/print/PrintDocumentInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    .line 153
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintDocumentInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PrintDocumentInfo$1;

    .line 77
    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/print/PrintDocumentInfo$1;

    .line 77
    invoke-direct {p0}, Landroid/print/PrintDocumentInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/print/PrintDocumentInfo;)V
    .locals 2
    .param p1, "prototype"    # Landroid/print/PrintDocumentInfo;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget-object v0, p1, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    .line 140
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    .line 141
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mContentType:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    .line 142
    iget-wide v0, p1, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/print/PrintDocumentInfo;
    .param p2, "x1"    # Landroid/print/PrintDocumentInfo$1;

    .line 77
    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;)V

    return-void
.end method

.method static synthetic access$102(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintDocumentInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/print/PrintDocumentInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/print/PrintDocumentInfo;

    .line 77
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return v0
.end method

.method static synthetic access$202(Landroid/print/PrintDocumentInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintDocumentInfo;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return p1
.end method

.method static synthetic access$302(Landroid/print/PrintDocumentInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintDocumentInfo;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return p1
.end method

.method private contentTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "contentType"    # I

    .line 277
    packed-switch p1, :pswitch_data_0

    .line 285
    const-string v0, "CONTENT_TYPE_UNKNOWN"

    return-object v0

    .line 282
    :pswitch_0
    const-string v0, "CONTENT_TYPE_PHOTO"

    return-object v0

    .line 279
    :pswitch_1
    const-string v0, "CONTENT_TYPE_DOCUMENT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 239
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 240
    return v0

    .line 242
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 243
    return v1

    .line 245
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 246
    return v1

    .line 248
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/print/PrintDocumentInfo;

    .line 249
    .local v2, "other":Landroid/print/PrintDocumentInfo;
    iget-object v3, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 250
    return v1

    .line 252
    :cond_3
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    iget v4, v2, Landroid/print/PrintDocumentInfo;->mContentType:I

    if-eq v3, v4, :cond_4

    .line 253
    return v1

    .line 255
    :cond_4
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iget v4, v2, Landroid/print/PrintDocumentInfo;->mPageCount:I

    if-eq v3, v4, :cond_5

    .line 256
    return v1

    .line 258
    :cond_5
    iget-wide v3, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iget-wide v5, v2, Landroid/print/PrintDocumentInfo;->mDataSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 259
    return v1

    .line 261
    :cond_6
    return v0
.end method

.method public getContentType()I
    .locals 1

    .line 189
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return v0
.end method

.method public getDataSize()J
    .locals 2

    .line 198
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 176
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 227
    const/16 v0, 0x1f

    .line 228
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 229
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v3, v4

    .line 230
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget v4, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    add-int/2addr v1, v4

    .line 231
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget v4, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    add-int/2addr v3, v4

    .line 232
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    long-to-int v4, v4

    add-int/2addr v1, v4

    .line 233
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v2, v1

    iget-wide v3, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 234
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public setDataSize(J)V
    .locals 0
    .param p1, "dataSize"    # J

    .line 209
    iput-wide p1, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintDocumentInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ", pageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-direct {p0, v1}, Landroid/print/PrintDocumentInfo;->contentTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 219
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    return-void
.end method
