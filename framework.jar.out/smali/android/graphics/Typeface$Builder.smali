.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final BOLD_WEIGHT:I = 0x2bc

.field public static final NORMAL_WEIGHT:I = 0x190


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mFallbackFamilyName:Ljava/lang/String;

.field private mFd:Ljava/io/FileDescriptor;

.field private mFontBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mFonts:[Landroid/provider/FontsContract$FontInfo;

.field private mItalic:I

.field private mPath:Ljava/lang/String;

.field private mTtcIndex:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 362
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 401
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 402
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "path"    # Ljava/io/File;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 362
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 370
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 362
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 382
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 362
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 391
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public constructor <init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V
    .locals 1
    .param p1, "fonts"    # [Landroid/provider/FontsContract$FontInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/provider/FontsContract$FontInfo;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 419
    .local p2, "buffers":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 362
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 420
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    .line 421
    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    .line 422
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;

    .line 343
    invoke-static/range {p0 .. p6}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I
    .param p6, "fallback"    # Ljava/lang/String;

    .line 538
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    .line 539
    .local v0, "pkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 541
    .local v2, "size":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 542
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 545
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v4, "--"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v4, "--"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    if-eqz p3, :cond_1

    .line 558
    array-length v4, p3

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, p3, v3

    .line 559
    .local v5, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .end local v5    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 564
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private resolveFallbackTypeface()Landroid/graphics/Typeface;
    .locals 6

    .line 568
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 569
    const/4 v0, 0x0

    return-object v0

    .line 572
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    iget-object v1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 573
    .local v0, "base":Landroid/graphics/Typeface;
    if-nez v0, :cond_1

    .line 574
    sget-object v0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 577
    :cond_1
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v1, v2, :cond_2

    .line 578
    return-object v0

    .line 581
    :cond_2
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Landroid/graphics/Typeface;->access$100(Landroid/graphics/Typeface;)I

    move-result v1

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 583
    .local v1, "weight":I
    :goto_0
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_5

    invoke-static {v0}, Landroid/graphics/Typeface;->access$200(Landroid/graphics/Typeface;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_4
    goto :goto_2

    :cond_5
    iget v2, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v2, v5, :cond_4

    goto :goto_1

    :goto_2
    move v2, v4

    .line 584
    .local v2, "italic":Z
    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->access$300(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public build()Landroid/graphics/Typeface;
    .locals 18

    .line 593
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 594
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, v1, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    .line 595
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 596
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    .line 597
    .local v10, "size":J
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v13

    .line 599
    .local v13, "buffer":Ljava/nio/ByteBuffer;
    new-instance v6, Landroid/graphics/FontFamily;

    invoke-direct {v6}, Landroid/graphics/FontFamily;-><init>()V

    .line 600
    .local v6, "fontFamily":Landroid/graphics/FontFamily;
    iget v14, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget-object v15, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v8, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object v12, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 601
    invoke-virtual {v6}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 602
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 602
    return-object v3

    .line 604
    :cond_0
    :try_start_3
    invoke-virtual {v6}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v7

    if-nez v7, :cond_1

    .line 605
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 610
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 605
    return-object v3

    .line 607
    :cond_1
    :try_start_5
    new-array v4, v4, [Landroid/graphics/FontFamily;

    aput-object v6, v4, v3

    move-object v3, v4

    .line 608
    .local v3, "families":[Landroid/graphics/FontFamily;
    iget-object v4, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v8, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 610
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 608
    return-object v4

    .line 610
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v3    # "families":[Landroid/graphics/FontFamily;
    .end local v6    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v10    # "size":J
    .end local v13    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 610
    :goto_0
    if-eqz v3, :cond_2

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 611
    .local v0, "e":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 613
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_7

    .line 614
    iget-object v5, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v6, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget v9, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v10, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    iget-object v11, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-static/range {v5 .. v11}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 617
    .local v5, "key":Ljava/lang/String;
    invoke-static {}, Landroid/graphics/Typeface;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 618
    :try_start_a
    invoke-static {}, Landroid/graphics/Typeface;->access$600()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 619
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_4

    monitor-exit v6

    return-object v0

    .line 620
    :cond_4
    new-instance v2, Landroid/graphics/FontFamily;

    invoke-direct {v2}, Landroid/graphics/FontFamily;-><init>()V

    .line 621
    .local v2, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v9, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iget v10, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    const/4 v11, 0x1

    iget v12, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget v13, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v14, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    iget-object v15, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object v7, v2

    invoke-virtual/range {v7 .. v15}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 623
    invoke-virtual {v2}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 624
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    monitor-exit v6

    return-object v3

    .line 626
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v7

    if-nez v7, :cond_6

    .line 627
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    monitor-exit v6

    return-object v3

    .line 629
    :cond_6
    new-array v4, v4, [Landroid/graphics/FontFamily;

    aput-object v2, v4, v3

    move-object v3, v4

    .line 630
    .restart local v3    # "families":[Landroid/graphics/FontFamily;
    iget-object v4, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v8, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v4

    move-object v0, v4

    .line 632
    invoke-static {}, Landroid/graphics/Typeface;->access$600()Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    monitor-exit v6

    return-object v0

    .line 634
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    .end local v2    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v3    # "families":[Landroid/graphics/FontFamily;
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    .line 635
    .end local v5    # "key":Ljava/lang/String;
    :cond_7
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 636
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 637
    .local v0, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v6, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget v9, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v10, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v2

    if-nez v2, :cond_8

    .line 638
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 639
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 641
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v2

    if-nez v2, :cond_9

    .line 642
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 644
    :cond_9
    new-array v2, v4, [Landroid/graphics/FontFamily;

    aput-object v0, v2, v3

    .line 645
    .local v2, "families":[Landroid/graphics/FontFamily;
    iget-object v3, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v4, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v5, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    .line 647
    .end local v0    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v2    # "families":[Landroid/graphics/FontFamily;
    :cond_a
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_f

    .line 648
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 649
    .restart local v0    # "fontFamily":Landroid/graphics/FontFamily;
    const/4 v5, 0x0

    .line 650
    .local v5, "atLeastOneFont":Z
    iget-object v11, v1, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    array-length v12, v11

    move v13, v3

    move v14, v5

    .end local v5    # "atLeastOneFont":Z
    .local v14, "atLeastOneFont":Z
    :goto_2
    if-ge v13, v12, :cond_d

    aget-object v15, v11, v13

    .line 651
    .local v15, "font":Landroid/provider/FontsContract$FontInfo;
    iget-object v5, v1, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ljava/nio/ByteBuffer;

    .line 652
    .local v16, "fontBuffer":Ljava/nio/ByteBuffer;
    if-nez v16, :cond_b

    .line 653
    goto :goto_3

    .line 655
    :cond_b
    nop

    .line 656
    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->getTtcIndex()I

    move-result v7

    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v8

    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->getWeight()I

    move-result v9

    .line 657
    invoke-virtual {v15}, Landroid/provider/FontsContract$FontInfo;->isItalic()Z

    move-result v10

    .line 655
    move-object v5, v0

    move-object/from16 v6, v16

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v5

    .line 658
    .local v5, "success":Z
    if-nez v5, :cond_c

    .line 659
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 660
    return-object v2

    .line 662
    :cond_c
    const/4 v5, 0x1

    .line 650
    .end local v14    # "atLeastOneFont":Z
    .end local v15    # "font":Landroid/provider/FontsContract$FontInfo;
    .end local v16    # "fontBuffer":Ljava/nio/ByteBuffer;
    .local v5, "atLeastOneFont":Z
    move v14, v5

    .end local v5    # "atLeastOneFont":Z
    .restart local v14    # "atLeastOneFont":Z
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 664
    :cond_d
    if-nez v14, :cond_e

    .line 667
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 668
    return-object v2

    .line 670
    :cond_e
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    .line 671
    new-array v2, v4, [Landroid/graphics/FontFamily;

    aput-object v0, v2, v3

    .line 672
    .restart local v2    # "families":[Landroid/graphics/FontFamily;
    iget-object v3, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v4, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v5, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    .line 677
    .end local v0    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v2    # "families":[Landroid/graphics/FontFamily;
    .end local v14    # "atLeastOneFont":Z
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No source was set."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 0
    .param p1, "familyName"    # Ljava/lang/String;

    .line 523
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    .line 524
    return-object p0
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 2
    .param p1, "variationSettings"    # Ljava/lang/String;

    .line 472
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v0, :cond_0

    .line 479
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 480
    return-object p0

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .locals 2
    .param p1, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 489
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v0, :cond_0

    .line 496
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 497
    return-object p0

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setItalic(Z)Landroid/graphics/Typeface$Builder;
    .locals 0
    .param p1, "italic"    # Z

    .line 444
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 445
    return-object p0
.end method

.method public setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .locals 2
    .param p1, "ttcIndex"    # I

    .line 456
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_0

    .line 460
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    .line 461
    return-object p0

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TTC index can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWeight(I)Landroid/graphics/Typeface$Builder;
    .locals 0
    .param p1, "weight"    # I

    .line 432
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 433
    return-object p0
.end method
