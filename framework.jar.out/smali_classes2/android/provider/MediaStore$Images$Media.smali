.class public final Landroid/provider/MediaStore$Images$Media;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Images$ImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "bucket_display_name"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1034
    const-string v0, "internal"

    .line 1035
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1041
    const-string v0, "external"

    .line 1042
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1041
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "id"    # J
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "kind"    # I

    move-object v1, p0

    .line 926
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v0

    .line 928
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v10, p4, v0

    .line 929
    .local v10, "scaleX":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v11, p5, v0

    .line 931
    .local v11, "scaleY":F
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 933
    nop

    .line 934
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 935
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 933
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move-object v7, v9

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 938
    .local v2, "thumb":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    move-object v3, v0

    .line 939
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "kind"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    const-string v0, "image_id"

    move-wide v4, p2

    long-to-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    const-string v0, "height"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const-string/jumbo v0, "width"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 944
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    move-object v6, v0

    .line 947
    .local v6, "url":Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 949
    .local v0, "thumbOut":Ljava/io/OutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v2, v8, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 950
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    return-object v2

    .line 956
    .end local v0    # "thumbOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 957
    .local v0, "ex":Ljava/io/IOException;
    return-object v7

    .line 953
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 954
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-object v7
.end method

.method public static final getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 887
    .local v0, "input":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 888
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 889
    return-object v1
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/images/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 973
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v10, v0

    .line 974
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "title"

    move-object/from16 v11, p2

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v0, "description"

    move-object/from16 v12, p3

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string/jumbo v0, "mime_type"

    const-string v1, "image/jpeg"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v1, 0x0

    .line 979
    .local v1, "url":Landroid/net/Uri;
    const/4 v13, 0x0

    move-object v14, v13

    .line 982
    .local v14, "stringUrl":Ljava/lang/String;
    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    .line 984
    .end local v1    # "url":Landroid/net/Uri;
    .local v15, "url":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 985
    :try_start_1
    invoke-virtual {v8, v15}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v0

    .line 987
    .local v7, "imageOut":Ljava/io/OutputStream;
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x32

    invoke-virtual {v9, v0, v1, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 989
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 990
    nop

    .line 992
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    move-wide v5, v0

    .line 994
    .local v5, "id":J
    const/4 v0, 0x1

    invoke-static {v8, v5, v6, v0, v13}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 997
    .local v2, "miniThumb":Landroid/graphics/Bitmap;
    const/high16 v0, 0x42480000    # 50.0f

    const/high16 v16, 0x42480000    # 50.0f

    const/16 v17, 0x3

    move-object v1, v8

    move-wide v3, v5

    move-wide/from16 v18, v5

    move v5, v0

    .line 997
    .end local v5    # "id":J
    .local v18, "id":J
    move/from16 v6, v16

    move-object v13, v7

    move/from16 v7, v17

    .line 997
    .end local v7    # "imageOut":Ljava/io/OutputStream;
    .local v13, "imageOut":Ljava/io/OutputStream;
    invoke-static/range {v1 .. v7}, Landroid/provider/MediaStore$Images$Media;->StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;

    .line 999
    .end local v2    # "miniThumb":Landroid/graphics/Bitmap;
    .end local v13    # "imageOut":Ljava/io/OutputStream;
    .end local v18    # "id":J
    goto :goto_0

    .line 989
    .restart local v7    # "imageOut":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object v13, v7

    .line 989
    .end local v7    # "imageOut":Ljava/io/OutputStream;
    .restart local v13    # "imageOut":Ljava/io/OutputStream;
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 1004
    .end local v13    # "imageOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1000
    :cond_0
    const-string v0, "MediaStore"

    const-string v1, "Failed to create thumbnail, removing original"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v1, 0x0

    invoke-virtual {v8, v15, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1002
    const/4 v15, 0x0

    .line 1010
    :goto_0
    goto :goto_2

    .line 1004
    .end local v15    # "url":Landroid/net/Uri;
    .restart local v1    # "url":Landroid/net/Uri;
    :catch_1
    move-exception v0

    move-object v15, v1

    .line 1005
    .end local v1    # "url":Landroid/net/Uri;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "url":Landroid/net/Uri;
    :goto_1
    const-string v1, "MediaStore"

    const-string v2, "Failed to insert image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    if-eqz v15, :cond_1

    .line 1007
    const/4 v1, 0x0

    invoke-virtual {v8, v15, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1008
    const/4 v15, 0x0

    .line 1012
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    if-eqz v15, :cond_2

    .line 1013
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1016
    :cond_2
    return-object v14
.end method

.method public static final insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 905
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 907
    .local v0, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 908
    .local v1, "bm":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, p2, p3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 909
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    nop

    .line 913
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 915
    goto :goto_0

    .line 914
    :catch_0
    move-exception v3

    .line 910
    :goto_0
    return-object v2

    .line 912
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 913
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 915
    goto :goto_1

    .line 914
    :catch_1
    move-exception v2

    .line 915
    :goto_1
    throw v1
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .line 861
    const-string v5, "bucket_display_name"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .line 866
    nop

    .line 867
    if-nez p4, :cond_0

    const-string v0, "bucket_display_name"

    .line 866
    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .line 872
    nop

    .line 873
    if-nez p5, :cond_0

    const-string v0, "bucket_display_name"

    .line 872
    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p5

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
