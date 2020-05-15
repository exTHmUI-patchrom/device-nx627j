.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 622
    const-string v0, "_id"

    const-string v1, "_data"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 624
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "groupId"    # J

    .line 662
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cancel"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "orig_id"

    .line 663
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "group_id"

    .line 664
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 665
    .local v0, "cancelUri":Landroid/net/Uri;
    const/4 v1, 0x0

    move-object v7, v1

    .line 667
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    .end local v7    # "c":Landroid/database/Cursor;
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 672
    :cond_0
    return-void

    .line 670
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local v7    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    move-object v2, v1

    .line 632
    .local v2, "thumbUri":Landroid/net/Uri;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 633
    .local v3, "thumbId":J
    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, "filePath":Ljava/lang/String;
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    move-object v2, v6

    .line 635
    const-string/jumbo v6, "r"

    invoke-virtual {p2, v2, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 636
    .local v6, "pfdInput":Landroid/os/ParcelFileDescriptor;
    nop

    .line 637
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 636
    invoke-static {v7, v1, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .line 638
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v3    # "thumbId":J
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 643
    :catch_0
    move-exception v1

    .line 644
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to allocate memory for thumbnail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ex":Ljava/lang/OutOfMemoryError;
    goto :goto_1

    .line 641
    :catch_1
    move-exception v1

    .line 642
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t open thumbnail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 639
    :catch_2
    move-exception v1

    .line 640
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v3, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t open thumbnail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 647
    :goto_1
    return-object v0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 26
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p7, "baseUri"    # Landroid/net/Uri;
    .param p8, "isVideo"    # Z

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 691
    move/from16 v15, p8

    const/4 v7, 0x0

    .line 696
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 695
    :goto_0
    invoke-static {v0}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v8

    .line 697
    .local v8, "thumbFile":Landroid/media/MiniThumbFile;
    const/4 v0, 0x0

    move-object v6, v0

    .line 699
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v8, v10, v11}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    move-wide/from16 v16, v1

    .line 700
    .local v16, "magic":J
    const-wide/16 v1, 0x0

    cmp-long v1, v16, v1

    const/16 v5, 0x2710

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 701
    if-ne v12, v4, :cond_4

    .line 702
    :try_start_1
    sget-object v1, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 703
    :try_start_2
    sget-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v0, :cond_1

    .line 704
    new-array v0, v5, [B

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 706
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    invoke-virtual {v8, v10, v11, v0}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 707
    sget-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v3, v3

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    .line 708
    if-nez v7, :cond_2

    .line 709
    const-string v0, "MediaStore"

    const-string v2, "couldn\'t decode byte array."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 713
    nop

    .line 780
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_3
    invoke-virtual {v8}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 783
    const/4 v0, 0x0

    .line 713
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v0, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v7

    .line 712
    .end local v0    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 780
    .end local v16    # "magic":J
    :catchall_1
    move-exception v0

    .line 780
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v1, "thumbFile":Landroid/media/MiniThumbFile;
    .local v24, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v24, v7

    :goto_2
    move-object v1, v8

    goto/16 :goto_e

    .line 777
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catch_0
    move-exception v0

    .line 777
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    :goto_3
    move-object v1, v8

    goto/16 :goto_c

    .line 714
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v16    # "magic":J
    :cond_4
    if-ne v12, v3, :cond_8

    .line 715
    if-eqz v15, :cond_5

    const-string/jumbo v1, "video_id="
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :cond_5
    :try_start_5
    const-string v1, "image_id="

    .line 716
    .local v1, "column":Ljava/lang/String;
    :goto_4
    sget-object v18, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v1

    move-object v1, v9

    .end local v1    # "column":Ljava/lang/String;
    .local v23, "column":Ljava/lang/String;
    move-object v2, v14

    move-object/from16 v24, v7

    move v7, v3

    move-object/from16 v3, v18

    .line 716
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    move v7, v4

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v18, v6

    move-object/from16 v6, v22

    .line 716
    .end local v6    # "c":Landroid/database/Cursor;
    .local v18, "c":Landroid/database/Cursor;
    :try_start_6
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v6, v1

    .line 717
    .end local v18    # "c":Landroid/database/Cursor;
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_9

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 718
    invoke-static {v6, v14, v9, v13}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 719
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7

    .line 720
    nop

    .line 780
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_6
    invoke-virtual {v8}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 783
    const/4 v0, 0x0

    .line 720
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v0    # "thumbFile":Landroid/media/MiniThumbFile;
    return-object v1

    .line 726
    .end local v0    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v23    # "column":Ljava/lang/String;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :cond_7
    move-object/from16 v24, v1

    goto :goto_7

    .line 780
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "magic":J
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 777
    :catch_1
    move-exception v0

    .line 777
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    move-object v1, v8

    goto :goto_6

    .line 780
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v18    # "c":Landroid/database/Cursor;
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_3
    move-exception v0

    move-object v1, v8

    move-object/from16 v6, v18

    goto/16 :goto_e

    .line 777
    :catch_2
    move-exception v0

    move-object v1, v8

    move-object/from16 v6, v18

    .line 777
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v18    # "c":Landroid/database/Cursor;
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_6
    move-object/from16 v7, v24

    goto/16 :goto_c

    .line 780
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catchall_4
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v24, v7

    move-object v1, v8

    .line 780
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "c":Landroid/database/Cursor;
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_e

    .line 777
    .end local v18    # "c":Landroid/database/Cursor;
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v24, v7

    move-object v1, v8

    .line 777
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "c":Landroid/database/Cursor;
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_c

    .line 726
    .end local v18    # "c":Landroid/database/Cursor;
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "magic":J
    :cond_8
    move-object/from16 v18, v6

    move-object/from16 v24, v7

    move v7, v4

    .line 726
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "c":Landroid/database/Cursor;
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v6, v18

    .line 726
    .end local v18    # "c":Landroid/database/Cursor;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_9
    :goto_7
    :try_start_8
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "blocking"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "orig_id"

    .line 727
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "group_id"

    .line 728
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    .line 729
    .local v2, "blockingUri":Landroid/net/Uri;
    if-eqz v6, :cond_a

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 730
    :cond_a
    :try_start_a
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    move-object v1, v9

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    .line 730
    .end local v6    # "c":Landroid/database/Cursor;
    .local v19, "c":Landroid/database/Cursor;
    :try_start_b
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    .line 732
    .end local v19    # "c":Landroid/database/Cursor;
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_c

    .line 780
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_b
    invoke-virtual {v8}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 783
    const/4 v3, 0x0

    .line 732
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v3, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v0

    .line 735
    .end local v3    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :cond_c
    if-ne v12, v7, :cond_f

    .line 736
    :try_start_c
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 737
    :try_start_d
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_d

    .line 738
    const/16 v4, 0x2710

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 740
    :cond_d
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 741
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    invoke-virtual {v8, v10, v11, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v4

    if-eqz v4, :cond_e

    .line 742
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v24, v4

    .line 743
    if-nez v24, :cond_e

    .line 744
    const-string v4, "MediaStore"

    const-string v5, "couldn\'t decode byte array."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_e
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 757
    const/4 v7, 0x1

    goto :goto_9

    .line 747
    :catchall_5
    move-exception v0

    move-object/from16 v7, v24

    .line 747
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_8
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 780
    .end local v2    # "blockingUri":Landroid/net/Uri;
    .end local v16    # "magic":J
    :catchall_6
    move-exception v0

    move-object v6, v1

    goto/16 :goto_1

    .line 777
    :catch_4
    move-exception v0

    move-object v6, v1

    goto/16 :goto_3

    .line 747
    .restart local v2    # "blockingUri":Landroid/net/Uri;
    .restart local v16    # "magic":J
    :catchall_7
    move-exception v0

    goto :goto_8

    .line 780
    .end local v2    # "blockingUri":Landroid/net/Uri;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "magic":J
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_8
    move-exception v0

    move-object v6, v1

    goto/16 :goto_2

    .line 777
    :catch_5
    move-exception v0

    move-object v6, v1

    goto/16 :goto_5

    .line 748
    .restart local v2    # "blockingUri":Landroid/net/Uri;
    .restart local v16    # "magic":J
    :cond_f
    const/4 v7, 0x1

    if-ne v12, v7, :cond_19

    .line 749
    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-eqz v3, :cond_10

    .line 750
    :try_start_11
    invoke-static {v1, v14, v9, v13}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 757
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v24, v3

    .line 757
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    :cond_10
    :goto_9
    if-nez v24, :cond_16

    .line 758
    :try_start_12
    const-string v3, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create the thumbnail in memory: origId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", kind="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isVideo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    nop

    .line 761
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 762
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "thumbnails"

    const-string/jumbo v5, "media"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 760
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 763
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_11

    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 764
    :cond_11
    :try_start_14
    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v3, v9

    move v0, v7

    move-object/from16 v7, v18

    move-object/from16 v25, v1

    move-object v1, v8

    move-object/from16 v8, v19

    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v1, "thumbFile":Landroid/media/MiniThumbFile;
    .local v25, "c":Landroid/database/Cursor;
    :try_start_15
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    move-object v6, v3

    .line 765
    .end local v25    # "c":Landroid/database/Cursor;
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_14

    :try_start_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_a

    .line 768
    :cond_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 770
    if-eqz v15, :cond_13

    .line 771
    invoke-static {v0, v12}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_b

    .line 773
    :cond_13
    invoke-static {v0, v12}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move-object/from16 v24, v3

    .line 773
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "blockingUri":Landroid/net/Uri;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v16    # "magic":J
    goto :goto_b

    .line 780
    :catchall_9
    move-exception v0

    goto/16 :goto_e

    .line 777
    :catch_6
    move-exception v0

    goto/16 :goto_6

    .line 766
    .restart local v2    # "blockingUri":Landroid/net/Uri;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v16    # "magic":J
    :cond_14
    :goto_a
    nop

    .line 780
    if-eqz v6, :cond_15

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_15
    invoke-virtual {v1}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 783
    const/4 v0, 0x0

    .line 766
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v0, "thumbFile":Landroid/media/MiniThumbFile;
    const/4 v1, 0x0

    return-object v1

    .line 780
    .end local v0    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v2    # "blockingUri":Landroid/net/Uri;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v16    # "magic":J
    .local v1, "c":Landroid/database/Cursor;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :cond_16
    move-object/from16 v25, v1

    move-object v1, v8

    move-object/from16 v6, v25

    .line 780
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v1, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_17
    :goto_b
    if-eqz v6, :cond_18

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_18
    invoke-virtual {v1}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 783
    const/4 v0, 0x0

    .line 784
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v0    # "thumbFile":Landroid/media/MiniThumbFile;
    nop

    .line 785
    move-object/from16 v7, v24

    goto/16 :goto_d

    .line 780
    .end local v0    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v6    # "c":Landroid/database/Cursor;
    .local v1, "c":Landroid/database/Cursor;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catchall_a
    move-exception v0

    move-object/from16 v25, v1

    move-object v1, v8

    move-object/from16 v6, v25

    .line 780
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v1, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v25    # "c":Landroid/database/Cursor;
    goto/16 :goto_e

    .line 777
    .end local v25    # "c":Landroid/database/Cursor;
    .local v1, "c":Landroid/database/Cursor;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catch_7
    move-exception v0

    move-object/from16 v25, v1

    move-object v1, v8

    move-object/from16 v7, v24

    move-object/from16 v6, v25

    .line 777
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v1, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v25    # "c":Landroid/database/Cursor;
    goto :goto_c

    .line 753
    .end local v25    # "c":Landroid/database/Cursor;
    .local v1, "c":Landroid/database/Cursor;
    .restart local v2    # "blockingUri":Landroid/net/Uri;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v16    # "magic":J
    :cond_19
    move-object/from16 v25, v1

    move-object v1, v8

    .line 753
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v1, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v25    # "c":Landroid/database/Cursor;
    :try_start_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported kind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 780
    .end local v2    # "blockingUri":Landroid/net/Uri;
    .end local v16    # "magic":J
    :catchall_b
    move-exception v0

    move-object/from16 v6, v25

    goto :goto_e

    .line 777
    :catch_8
    move-exception v0

    move-object/from16 v7, v24

    move-object/from16 v6, v25

    goto :goto_c

    .line 780
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v25    # "c":Landroid/database/Cursor;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v19    # "c":Landroid/database/Cursor;
    :catchall_c
    move-exception v0

    move-object v1, v8

    move-object/from16 v6, v19

    .line 780
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    goto :goto_e

    .line 777
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catch_9
    move-exception v0

    move-object v1, v8

    move-object/from16 v6, v19

    move-object/from16 v7, v24

    .line 777
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    goto :goto_c

    .line 780
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v19    # "c":Landroid/database/Cursor;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catchall_d
    move-exception v0

    move-object/from16 v19, v6

    move-object v1, v8

    .line 780
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v19    # "c":Landroid/database/Cursor;
    goto :goto_e

    .line 777
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v19    # "c":Landroid/database/Cursor;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catch_a
    move-exception v0

    move-object/from16 v19, v6

    move-object v1, v8

    move-object/from16 v7, v24

    .line 777
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v19    # "c":Landroid/database/Cursor;
    goto :goto_c

    .line 780
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v19    # "c":Landroid/database/Cursor;
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catchall_e
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v24, v7

    move-object v1, v8

    .line 780
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v18    # "c":Landroid/database/Cursor;
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_e

    .line 777
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .end local v18    # "c":Landroid/database/Cursor;
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    :catch_b
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v24, v7

    move-object v1, v8

    .line 778
    .end local v8    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    :goto_c
    :try_start_18
    const-string v2, "MediaStore"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    .line 780
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_1a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_1a
    invoke-virtual {v1}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 783
    const/4 v0, 0x0

    .line 784
    .end local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v0, "thumbFile":Landroid/media/MiniThumbFile;
    nop

    .line 785
    :goto_d
    return-object v7

    .line 780
    .end local v0    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v1    # "thumbFile":Landroid/media/MiniThumbFile;
    :catchall_f
    move-exception v0

    move-object/from16 v24, v7

    .line 780
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v24    # "bitmap":Landroid/graphics/Bitmap;
    :goto_e
    if-eqz v6, :cond_1b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_1b
    invoke-virtual {v1}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 783
    const/4 v1, 0x0

    throw v0
.end method
