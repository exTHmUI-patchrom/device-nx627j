.class Lcom/android/internal/telephony/cat/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static sLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private static sThread:Landroid/os/HandlerThread;


# instance fields
.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 51
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 71
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 48
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 75
    return-void
.end method

.method private static bitToBnW(I)I
    .locals 1
    .param p0, "bit"    # I

    .line 273
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 274
    const/4 v0, -0x1

    return v0

    .line 276
    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;
    .locals 2
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    return-object v0

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Cat Icon Loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 84
    new-instance v0, Lcom/android/internal/telephony/cat/IconLoader;

    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    return-object v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMask(I)I
    .locals 1
    .param p0, "numOfBits"    # I

    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "mask":I
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 360
    :pswitch_0
    const/16 v0, 0xff

    goto :goto_0

    .line 357
    :pswitch_1
    const/16 v0, 0x7f

    .line 358
    goto :goto_0

    .line 354
    :pswitch_2
    const/16 v0, 0x3f

    .line 355
    goto :goto_0

    .line 351
    :pswitch_3
    const/16 v0, 0x1f

    .line 352
    goto :goto_0

    .line 348
    :pswitch_4
    const/16 v0, 0xf

    .line 349
    goto :goto_0

    .line 345
    :pswitch_5
    const/4 v0, 0x7

    .line 346
    goto :goto_0

    .line 342
    :pswitch_6
    const/4 v0, 0x3

    .line 343
    goto :goto_0

    .line 339
    :pswitch_7
    const/4 v0, 0x1

    .line 340
    nop

    .line 363
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .locals 2
    .param p1, "rawData"    # [B

    .line 183
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    if-nez v1, :cond_0

    .line 185
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_0
    return v0
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    .end local v0    # "valueIndex":I
    and-int/lit16 v0, v0, 0xff

    .line 242
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    .line 243
    .local v1, "height":I
    mul-int v3, v0, v1

    .line 245
    .local v3, "numOfPixels":I
    new-array v4, v3, [I

    .line 247
    .local v4, "pixels":[I
    const/4 v5, 0x0

    .line 248
    .local v5, "pixelIndex":I
    const/4 v6, 0x7

    .line 249
    .local v6, "bitIndex":I
    const/4 v7, 0x0

    .line 250
    .local v7, "currentByte":B
    :goto_0
    if-ge v5, v3, :cond_1

    .line 252
    rem-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_0

    .line 253
    add-int/lit8 v8, v2, 0x1

    .local v8, "valueIndex":I
    aget-byte v2, p0, v2

    .line 254
    .end local v7    # "currentByte":B
    .local v2, "currentByte":B
    const/4 v6, 0x7

    .line 256
    move v7, v2

    move v2, v8

    .end local v8    # "valueIndex":I
    .local v2, "valueIndex":I
    .restart local v7    # "currentByte":B
    :cond_0
    add-int/lit8 v8, v5, 0x1

    .local v8, "pixelIndex":I
    add-int/lit8 v9, v6, -0x1

    .local v9, "bitIndex":I
    shr-int v6, v7, v6

    .end local v6    # "bitIndex":I
    and-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/cat/IconLoader;->bitToBnW(I)I

    move-result v6

    aput v6, v4, v5

    .line 249
    .end local v5    # "pixelIndex":I
    move v5, v8

    move v6, v9

    goto :goto_0

    .line 259
    .end local v8    # "pixelIndex":I
    .end local v9    # "bitIndex":I
    .restart local v5    # "pixelIndex":I
    .restart local v6    # "bitIndex":I
    :cond_1
    if-eq v5, v3, :cond_2

    .line 260
    const-string v8, "IconLoader"

    const-string v9, "parseToBnW; size error"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z
    .param p3, "clut"    # [B

    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "valueIndex":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    .line 293
    .local v1, "width":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "valueIndex":I
    aget-byte v2, p0, v2

    .end local v2    # "valueIndex":I
    and-int/lit16 v2, v2, 0xff

    .line 294
    .local v2, "height":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "valueIndex":I
    aget-byte v3, p0, v3

    .end local v3    # "valueIndex":I
    and-int/lit16 v3, v3, 0xff

    .line 295
    .local v3, "bitsPerImg":I
    add-int/lit8 v5, v4, 0x1

    .local v5, "valueIndex":I
    aget-byte v4, p0, v4

    .end local v4    # "valueIndex":I
    and-int/lit16 v4, v4, 0xff

    .line 297
    .local v4, "numOfClutEntries":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v8, p2

    if-ne v7, v8, :cond_0

    .line 298
    add-int/lit8 v9, v4, -0x1

    aput-byte v6, p3, v9

    .line 301
    :cond_0
    mul-int v9, v1, v2

    .line 302
    .local v9, "numOfPixels":I
    new-array v10, v9, [I

    .line 304
    .local v10, "pixels":[I
    const/4 v5, 0x6

    .line 305
    const/4 v11, 0x0

    .line 306
    .local v11, "pixelIndex":I
    const/16 v12, 0x8

    rsub-int/lit8 v13, v3, 0x8

    .line 307
    .local v13, "bitsStartOffset":I
    move v14, v13

    .line 308
    .local v14, "bitIndex":I
    add-int/lit8 v15, v5, 0x1

    .local v15, "valueIndex":I
    aget-byte v5, p0, v5

    .line 309
    .local v5, "currentByte":B
    invoke-static {v3}, Lcom/android/internal/telephony/cat/IconLoader;->getMask(I)I

    move-result v16

    .line 310
    .local v16, "mask":I
    rem-int/2addr v12, v3

    if-nez v12, :cond_1

    move v6, v7

    nop

    .line 311
    .local v6, "bitsOverlaps":Z
    :cond_1
    :goto_0
    if-ge v11, v9, :cond_4

    .line 313
    if-gez v14, :cond_3

    .line 314
    add-int/lit8 v7, v15, 0x1

    .local v7, "valueIndex":I
    aget-byte v5, p0, v15

    .line 315
    .end local v15    # "valueIndex":I
    if-eqz v6, :cond_2

    move v12, v13

    goto :goto_1

    :cond_2
    mul-int/lit8 v12, v14, -0x1

    :goto_1
    move v14, v12

    .line 317
    move v15, v7

    .end local v7    # "valueIndex":I
    .restart local v15    # "valueIndex":I
    :cond_3
    shr-int v7, v5, v14

    and-int v7, v7, v16

    .line 318
    .local v7, "clutEntry":I
    mul-int/lit8 v12, v7, 0x3

    .line 319
    .local v12, "clutIndex":I
    add-int/lit8 v17, v11, 0x1

    .local v17, "pixelIndex":I
    aget-byte v0, p3, v12

    add-int/lit8 v18, v12, 0x1

    move/from16 v19, v4

    aget-byte v4, p3, v18

    .end local v4    # "numOfClutEntries":I
    .local v19, "numOfClutEntries":I
    add-int/lit8 v18, v12, 0x2

    move/from16 v20, v5

    aget-byte v5, p3, v18

    .end local v5    # "currentByte":B
    .local v20, "currentByte":B
    invoke-static {v0, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v10, v11

    .line 321
    .end local v11    # "pixelIndex":I
    sub-int/2addr v14, v3

    .line 322
    .end local v7    # "clutEntry":I
    .end local v12    # "clutIndex":I
    nop

    .line 310
    move/from16 v11, v17

    move/from16 v4, v19

    move/from16 v5, v20

    goto :goto_0

    .line 324
    .end local v17    # "pixelIndex":I
    .end local v19    # "numOfClutEntries":I
    .end local v20    # "currentByte":B
    .restart local v4    # "numOfClutEntries":I
    .restart local v5    # "currentByte":B
    .restart local v11    # "pixelIndex":I
    :cond_4
    move/from16 v19, v4

    .end local v4    # "numOfClutEntries":I
    .restart local v19    # "numOfClutEntries":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private postIcon()V
    .locals 3

    .line 218
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 221
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 224
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 231
    :cond_2
    :goto_0
    return-void
.end method

.method private readClut()V
    .locals 8

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    mul-int/2addr v0, v1

    .line 193
    .local v0, "length":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 194
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v6, 0x5

    aget-byte v5, v5, v6

    move v6, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 197
    return-void
.end method

.method private readIconData()V
    .locals 7

    .line 212
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v2, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 214
    return-void
.end method

.method private readId()V
    .locals 3

    .line 201
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    if-gez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 204
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    .line 208
    return-void
.end method

.method private startLoadingIcon(I)V
    .locals 2
    .param p1, "recordNumber"    # I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 114
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 115
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 122
    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readId()V

    .line 127
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 367
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 368
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 369
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:Landroid/os/HandlerThread;

    .line 371
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 372
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 373
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 134
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 160
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 161
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 162
    .local v1, "clut":[B
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/android/internal/telephony/cat/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 164
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "clut":[B
    goto :goto_0

    .line 144
    :pswitch_1
    const-string v0, "load icon done"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 146
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 147
    .local v1, "rawData":[B
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v2, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 148
    array-length v2, v1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v2, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v3, 0x21

    if-ne v2, v3, :cond_1

    .line 152
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readClut()V

    goto :goto_0

    .line 155
    :cond_1
    const-string v2, "else  /postIcon "

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 158
    goto :goto_0

    .line 136
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "rawData":[B
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 137
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->handleImageDescriptor([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readIconData()V

    goto :goto_0

    .line 140
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unable to parse image descriptor"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_0
    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Icon load failed"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method loadIcon(ILandroid/os/Message;)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .line 103
    if-nez p2, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 108
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    .line 109
    return-void
.end method

.method loadIcons([ILandroid/os/Message;)V
    .locals 2
    .param p1, "recordNumbers"    # [I
    .param p2, "msg"    # Landroid/os/Message;

    .line 90
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 95
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 98
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 99
    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    .line 100
    return-void

    .line 91
    :cond_1
    :goto_0
    return-void
.end method
