.class public Landroid/media/DataSourceDesc$Builder;
.super Ljava/lang/Object;
.source "DataSourceDesc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/DataSourceDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEndPositionMs:J

.field private mFD:Ljava/io/FileDescriptor;

.field private mFDLength:J

.field private mFDOffset:J

.field private mMedia2DataSource:Landroid/media/Media2DataSource;

.field private mMediaId:Ljava/lang/String;

.field private mStartPositionMs:J

.field private mType:I

.field private mUri:Landroid/net/Uri;

.field private mUriContext:Landroid/content/Context;

.field private mUriCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field private mUriHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/DataSourceDesc$Builder;->mFDOffset:J

    .line 219
    const-wide v2, 0x7ffffffffffffffL

    iput-wide v2, p0, Landroid/media/DataSourceDesc$Builder;->mFDLength:J

    .line 227
    iput-wide v0, p0, Landroid/media/DataSourceDesc$Builder;->mStartPositionMs:J

    .line 228
    iput-wide v2, p0, Landroid/media/DataSourceDesc$Builder;->mEndPositionMs:J

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/media/DataSourceDesc;)V
    .locals 4
    .param p1, "dsd"    # Landroid/media/DataSourceDesc;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/DataSourceDesc$Builder;->mFDOffset:J

    .line 219
    const-wide v2, 0x7ffffffffffffffL

    iput-wide v2, p0, Landroid/media/DataSourceDesc$Builder;->mFDLength:J

    .line 227
    iput-wide v0, p0, Landroid/media/DataSourceDesc$Builder;->mStartPositionMs:J

    .line 228
    iput-wide v2, p0, Landroid/media/DataSourceDesc$Builder;->mEndPositionMs:J

    .line 242
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$000(Landroid/media/DataSourceDesc;)I

    move-result v0

    iput v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    .line 243
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$100(Landroid/media/DataSourceDesc;)Landroid/media/Media2DataSource;

    move-result-object v0

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mMedia2DataSource:Landroid/media/Media2DataSource;

    .line 244
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$200(Landroid/media/DataSourceDesc;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    .line 245
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$300(Landroid/media/DataSourceDesc;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/DataSourceDesc$Builder;->mFDOffset:J

    .line 246
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$400(Landroid/media/DataSourceDesc;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/DataSourceDesc$Builder;->mFDLength:J

    .line 247
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$500(Landroid/media/DataSourceDesc;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    .line 248
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$600(Landroid/media/DataSourceDesc;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUriHeader:Ljava/util/Map;

    .line 249
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$700(Landroid/media/DataSourceDesc;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUriCookies:Ljava/util/List;

    .line 250
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$800(Landroid/media/DataSourceDesc;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    .line 252
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$900(Landroid/media/DataSourceDesc;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mMediaId:Ljava/lang/String;

    .line 253
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$1000(Landroid/media/DataSourceDesc;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/DataSourceDesc$Builder;->mStartPositionMs:J

    .line 254
    invoke-static {p1}, Landroid/media/DataSourceDesc;->access$1100(Landroid/media/DataSourceDesc;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/DataSourceDesc$Builder;->mEndPositionMs:J

    .line 255
    return-void
.end method

.method private resetDataSource()V
    .locals 3

    .line 469
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mMedia2DataSource:Landroid/media/Media2DataSource;

    .line 471
    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    .line 472
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/DataSourceDesc$Builder;->mFDOffset:J

    .line 473
    const-wide v1, 0x7ffffffffffffffL

    iput-wide v1, p0, Landroid/media/DataSourceDesc$Builder;->mFDLength:J

    .line 474
    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    .line 475
    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUriHeader:Ljava/util/Map;

    .line 476
    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUriCookies:Ljava/util/List;

    .line 477
    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    .line 478
    return-void
.end method


# virtual methods
.method public build()Landroid/media/DataSourceDesc;
    .locals 4

    .line 265
    iget v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/media/DataSourceDesc$Builder;->mStartPositionMs:J

    iget-wide v2, p0, Landroid/media/DataSourceDesc$Builder;->mEndPositionMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 275
    new-instance v0, Landroid/media/DataSourceDesc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/DataSourceDesc;-><init>(Landroid/media/DataSourceDesc$1;)V

    .line 276
    .local v0, "dsd":Landroid/media/DataSourceDesc;
    iget v1, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    invoke-static {v0, v1}, Landroid/media/DataSourceDesc;->access$002(Landroid/media/DataSourceDesc;I)I

    .line 277
    iget-object v1, p0, Landroid/media/DataSourceDesc$Builder;->mMedia2DataSource:Landroid/media/Media2DataSource;

    invoke-static {v0, v1}, Landroid/media/DataSourceDesc;->access$102(Landroid/media/DataSourceDesc;Landroid/media/Media2DataSource;)Landroid/media/Media2DataSource;

    .line 278
    iget-object v1, p0, Landroid/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    invoke-static {v0, v1}, Landroid/media/DataSourceDesc;->access$202(Landroid/media/DataSourceDesc;Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 279
    iget-wide v1, p0, Landroid/media/DataSourceDesc$Builder;->mFDOffset:J

    invoke-static {v0, v1, v2}, Landroid/media/DataSourceDesc;->access$302(Landroid/media/DataSourceDesc;J)J

    .line 280
    iget-wide v1, p0, Landroid/media/DataSourceDesc$Builder;->mFDLength:J

    invoke-static {v0, v1, v2}, Landroid/media/DataSourceDesc;->access$402(Landroid/media/DataSourceDesc;J)J

    .line 281
    iget-object v1, p0, Landroid/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/DataSourceDesc;->access$502(Landroid/media/DataSourceDesc;Landroid/net/Uri;)Landroid/net/Uri;

    .line 282
    iget-object v1, p0, Landroid/media/DataSourceDesc$Builder;->mUriHeader:Ljava/util/Map;

    invoke-static {v0, v1}, Landroid/media/DataSourceDesc;->access$602(Landroid/media/DataSourceDesc;Ljava/util/Map;)Ljava/util/Map;

    .line 283
    iget-object v1, p0, Landroid/media/DataSourceDesc$Builder;->mUriCookies:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/media/DataSourceDesc;->access$702(Landroid/media/DataSourceDesc;Ljava/util/List;)Ljava/util/List;

    .line 284
    iget-object v1, p0, Landroid/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/media/DataSourceDesc;->access$802(Landroid/media/DataSourceDesc;Landroid/content/Context;)Landroid/content/Context;

    .line 286
    iget-object v1, p0, Landroid/media/DataSourceDesc$Builder;->mMediaId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/DataSourceDesc;->access$902(Landroid/media/DataSourceDesc;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    iget-wide v1, p0, Landroid/media/DataSourceDesc$Builder;->mStartPositionMs:J

    invoke-static {v0, v1, v2}, Landroid/media/DataSourceDesc;->access$1002(Landroid/media/DataSourceDesc;J)J

    .line 288
    iget-wide v1, p0, Landroid/media/DataSourceDesc$Builder;->mEndPositionMs:J

    invoke-static {v0, v1, v2}, Landroid/media/DataSourceDesc;->access$1102(Landroid/media/DataSourceDesc;J)J

    .line 290
    return-object v0

    .line 271
    .end local v0    # "dsd":Landroid/media/DataSourceDesc;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start/end position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/media/DataSourceDesc$Builder;->mStartPositionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/media/DataSourceDesc$Builder;->mEndPositionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/DataSourceDesc$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 406
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string/jumbo v0, "uri cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-direct {p0}, Landroid/media/DataSourceDesc$Builder;->resetDataSource()V

    .line 409
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    .line 410
    iput-object p2, p0, Landroid/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    .line 411
    iput-object p1, p0, Landroid/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    .line 412
    return-object p0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)Landroid/media/DataSourceDesc$Builder;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Landroid/media/DataSourceDesc$Builder;"
        }
    .end annotation

    .line 444
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    if-eqz p4, :cond_1

    .line 447
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 448
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/net/CookieManager;

    if-eqz v1, :cond_0

    .end local v0    # "cookieHandler":Ljava/net/CookieHandler;
    goto :goto_0

    .line 449
    .restart local v0    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The cookie handler has to be of CookieManager type when cookies are provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    .end local v0    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/media/DataSourceDesc$Builder;->resetDataSource()V

    .line 456
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    .line 457
    iput-object p2, p0, Landroid/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    .line 458
    if-eqz p3, :cond_2

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUriHeader:Ljava/util/Map;

    .line 461
    :cond_2
    if-eqz p4, :cond_3

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/DataSourceDesc$Builder;->mUriCookies:Ljava/util/List;

    .line 464
    :cond_3
    iput-object p1, p0, Landroid/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    .line 465
    return-object p0
.end method

.method public setDataSource(Landroid/media/Media2DataSource;)Landroid/media/DataSourceDesc$Builder;
    .locals 1
    .param p1, "m2ds"    # Landroid/media/Media2DataSource;

    .line 343
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-direct {p0}, Landroid/media/DataSourceDesc$Builder;->resetDataSource()V

    .line 345
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    .line 346
    iput-object p1, p0, Landroid/media/DataSourceDesc$Builder;->mMedia2DataSource:Landroid/media/Media2DataSource;

    .line 347
    return-object p0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)Landroid/media/DataSourceDesc$Builder;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 360
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-direct {p0}, Landroid/media/DataSourceDesc$Builder;->resetDataSource()V

    .line 362
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    .line 363
    iput-object p1, p0, Landroid/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    .line 364
    return-object p0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)Landroid/media/DataSourceDesc$Builder;
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .line 382
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 384
    const-wide/16 p2, 0x0

    .line 386
    :cond_0
    cmp-long v0, p4, v0

    if-gez v0, :cond_1

    .line 387
    const-wide p4, 0x7ffffffffffffffL

    .line 389
    :cond_1
    invoke-direct {p0}, Landroid/media/DataSourceDesc$Builder;->resetDataSource()V

    .line 390
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/DataSourceDesc$Builder;->mType:I

    .line 391
    iput-object p1, p0, Landroid/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    .line 392
    iput-wide p2, p0, Landroid/media/DataSourceDesc$Builder;->mFDOffset:J

    .line 393
    iput-wide p4, p0, Landroid/media/DataSourceDesc$Builder;->mFDLength:J

    .line 394
    return-object p0
.end method

.method public setEndPosition(J)Landroid/media/DataSourceDesc$Builder;
    .locals 2
    .param p1, "position"    # J

    .line 328
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 329
    const-wide p1, 0x7ffffffffffffffL

    .line 331
    :cond_0
    iput-wide p1, p0, Landroid/media/DataSourceDesc$Builder;->mEndPositionMs:J

    .line 332
    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroid/media/DataSourceDesc$Builder;
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .line 300
    iput-object p1, p0, Landroid/media/DataSourceDesc$Builder;->mMediaId:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public setStartPosition(J)Landroid/media/DataSourceDesc$Builder;
    .locals 2
    .param p1, "position"    # J

    .line 313
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 314
    const-wide/16 p1, 0x0

    .line 316
    :cond_0
    iput-wide p1, p0, Landroid/media/DataSourceDesc$Builder;->mStartPositionMs:J

    .line 317
    return-object p0
.end method
