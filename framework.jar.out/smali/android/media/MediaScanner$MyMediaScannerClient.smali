.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;
    }
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDate:J

.field private final mDateFormatter:Ljava/text/SimpleDateFormat;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mMonitorHandler:Landroid/os/Handler;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mScanSuccess:Z

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 1

    .line 678
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    .line 680
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 682
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMonitorHandler:Landroid/os/Handler;

    .line 684
    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .line 1043
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    const/4 v1, 0x1

    return v1

    .line 1047
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v1, 0x0

    return v1
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 1474
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1475
    .local v0, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1476
    .local v2, "filenameLength":I
    const/4 v3, 0x0

    invoke-virtual {p1, v0, p2, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, v0, v2

    .line 1477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 20
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 1226
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1227
    :cond_0
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1230
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 1231
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "title"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1236
    .end local v0    # "title":Ljava/lang/String;
    .local v5, "title":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object v5, v0

    goto :goto_2

    .line 1233
    .end local v5    # "title":Ljava/lang/String;
    .restart local v0    # "title":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v5, "_data"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1234
    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    .end local v0    # "title":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    :goto_2
    const-string v0, "album"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "album":Ljava/lang/String;
    const-string v6, "<unknown>"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 1238
    const-string v6, "_data"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1241
    .local v8, "lastSlash":I
    if-ltz v8, :cond_6

    .line 1242
    move v9, v7

    .line 1244
    .local v9, "previousSlash":I
    :goto_3
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 1245
    .local v10, "idx":I
    if-ltz v10, :cond_5

    if-lt v10, v8, :cond_4

    .line 1246
    goto :goto_4

    .line 1248
    :cond_4
    move v9, v10

    .line 1249
    .end local v10    # "idx":I
    goto :goto_3

    .line 1250
    :cond_5
    :goto_4
    if-eqz v9, :cond_6

    .line 1251
    add-int/lit8 v6, v9, 0x1

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1252
    const-string v6, "album"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    .end local v0    # "album":Ljava/lang/String;
    .end local v8    # "lastSlash":I
    .end local v9    # "previousSlash":I
    .local v6, "album":Ljava/lang/String;
    :cond_6
    move-object v6, v0

    iget-wide v8, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1257
    .local v8, "rowId":J
    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_9

    cmp-long v0, v8, v11

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 1262
    :cond_7
    const-string/jumbo v0, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1263
    const-string/jumbo v0, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1264
    const-string/jumbo v0, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1265
    const-string/jumbo v0, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1266
    const-string/jumbo v0, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1321
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "album":Ljava/lang/String;
    .local v17, "title":Ljava/lang/String;
    .local v18, "album":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_8

    .line 1267
    .end local v17    # "title":Ljava/lang/String;
    .end local v18    # "album":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    .restart local v6    # "album":Ljava/lang/String;
    :cond_9
    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v11, 0x1f

    if-eq v0, v11, :cond_a

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v11, 0x25

    if-eq v0, v11, :cond_a

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 1269
    invoke-static {v0}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_a
    iget-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v0, :cond_12

    .line 1270
    move-object v11, v13

    .line 1272
    .local v11, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v12, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v0, v12}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    .line 1275
    goto :goto_5

    .line 1273
    :catch_0
    move-exception v0

    .line 1276
    :goto_5
    if-eqz v11, :cond_12

    .line 1277
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1278
    .local v0, "latlng":[F
    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1279
    const-string/jumbo v12, "latitude"

    aget v13, v0, v7

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1280
    const-string/jumbo v12, "longitude"

    aget v13, v0, v10

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1283
    :cond_b
    invoke-virtual {v11}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v12

    .line 1284
    .local v12, "time":J
    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    if-eqz v16, :cond_c

    .line 1285
    const-string v7, "datetaken"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1297
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_6

    .line 1291
    :cond_c
    invoke-virtual {v11}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v12

    .line 1292
    cmp-long v7, v12, v14

    if-eqz v7, :cond_d

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    iget-wide v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 1292
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "album":Ljava/lang/String;
    .restart local v17    # "title":Ljava/lang/String;
    .restart local v18    # "album":Ljava/lang/String;
    const-wide/16 v14, 0x3e8

    mul-long/2addr v5, v14

    sub-long/2addr v5, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v14, 0x5265c00

    cmp-long v5, v5, v14

    if-ltz v5, :cond_e

    .line 1293
    const-string v5, "datetaken"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    .line 1297
    .end local v17    # "title":Ljava/lang/String;
    .end local v18    # "album":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    .restart local v6    # "album":Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 1297
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "album":Ljava/lang/String;
    .restart local v17    # "title":Ljava/lang/String;
    .restart local v18    # "album":Ljava/lang/String;
    :cond_e
    :goto_6
    const-string v5, "Orientation"

    const/4 v6, -0x1

    invoke-virtual {v11, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    .line 1299
    .local v5, "orientation":I
    if-eq v5, v6, :cond_13

    .line 1302
    const/4 v6, 0x3

    if-eq v5, v6, :cond_11

    const/4 v7, 0x6

    if-eq v5, v7, :cond_10

    const/16 v7, 0x8

    if-eq v5, v7, :cond_f

    .line 1313
    const/4 v7, 0x0

    goto :goto_7

    .line 1310
    :cond_f
    const/16 v7, 0x10e

    .line 1311
    .local v7, "degree":I
    goto :goto_7

    .line 1304
    .end local v7    # "degree":I
    :cond_10
    const/16 v7, 0x5a

    .line 1305
    .restart local v7    # "degree":I
    goto :goto_7

    .line 1307
    .end local v7    # "degree":I
    :cond_11
    const/16 v7, 0xb4

    .line 1308
    .restart local v7    # "degree":I
    nop

    .line 1313
    :goto_7
    nop

    .line 1316
    const-string/jumbo v10, "orientation"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1316
    .end local v0    # "latlng":[F
    .end local v5    # "orientation":I
    .end local v7    # "degree":I
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .end local v12    # "time":J
    goto :goto_8

    .line 1321
    .end local v17    # "title":Ljava/lang/String;
    .end local v18    # "album":Ljava/lang/String;
    .local v5, "title":Ljava/lang/String;
    .restart local v6    # "album":Ljava/lang/String;
    :cond_12
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 1321
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "album":Ljava/lang/String;
    .restart local v17    # "title":Ljava/lang/String;
    .restart local v18    # "album":Ljava/lang/String;
    :cond_13
    :goto_8
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    .line 1322
    .local v0, "tableUri":Landroid/net/Uri;
    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v5

    .line 1323
    .local v5, "inserter":Landroid/media/MediaInserter;
    iget-boolean v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v6, :cond_16

    iget-boolean v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v6, :cond_16

    .line 1324
    iget v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1325
    iget-object v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_9

    .line 1326
    :cond_14
    iget v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1327
    iget-object v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_9

    .line 1328
    :cond_15
    iget v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1329
    iget-object v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    .line 1332
    :cond_16
    :goto_9
    const/4 v6, 0x0

    .line 1333
    .local v6, "result":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1337
    .local v7, "needToSetSettings":Z
    if-eqz v3, :cond_18

    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 1338
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1339
    invoke-static {v11}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1340
    :cond_17
    const/4 v7, 0x1

    goto :goto_a

    .line 1342
    :cond_18
    if-eqz p2, :cond_1a

    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 1343
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1344
    invoke-static {v11}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1345
    :cond_19
    const/4 v7, 0x1

    goto :goto_a

    .line 1347
    :cond_1a
    if-eqz p4, :cond_1c

    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 1348
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    iget-object v10, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1349
    invoke-static {v11}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1350
    :cond_1b
    const/4 v7, 0x1

    .line 1354
    :cond_1c
    :goto_a
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Lnubia/media/NubiaMediaScanner;

    move-result-object v10

    if-eqz v10, :cond_1d

    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1355
    invoke-static {v10}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Lnubia/media/NubiaMediaScanner;

    move-result-object v10

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v3, v12, v7}, Lnubia/media/NubiaMediaScanner;->isNeedToSetSettingsForMessage(Ljava/lang/String;ZZZ)Z

    move-result v10

    if-eqz v10, :cond_1d

    const/4 v10, 0x1

    goto :goto_b

    :cond_1d
    const/4 v10, 0x0

    :goto_b
    move v7, v10

    .line 1359
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_26

    .line 1360
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)I

    move-result v10

    if-eqz v10, :cond_1e

    .line 1361
    const-string/jumbo v10, "media_scanner_new_object_id"

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1363
    :cond_1e
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v10

    if-ne v0, v10, :cond_20

    .line 1364
    iget v10, v2, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    .line 1365
    .local v10, "format":I
    if-nez v10, :cond_1f

    .line 1366
    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1368
    :cond_1f
    const-string v11, "format"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1375
    .end local v10    # "format":I
    :cond_20
    if-eqz v5, :cond_23

    if-eqz v7, :cond_21

    goto :goto_c

    .line 1385
    :cond_21
    iget v10, v2, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v11, 0x3001

    if-ne v10, v11, :cond_22

    .line 1386
    invoke-virtual {v5, v0, v4}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_d

    .line 1388
    :cond_22
    invoke-virtual {v5, v0, v4}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_d

    .line 1376
    :cond_23
    :goto_c
    if-eqz v5, :cond_24

    .line 1377
    invoke-virtual {v5}, Landroid/media/MediaInserter;->flushAll()V

    .line 1380
    :cond_24
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-boolean v10, v10, Landroid/media/MediaScanner;->isAutoScan:Z

    if-eqz v10, :cond_25

    if-eqz v4, :cond_25

    .line 1381
    const-string v10, "autoScan"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    :cond_25
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v10

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1391
    :goto_d
    if-eqz v6, :cond_2c

    .line 1392
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 1393
    iput-wide v8, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    goto :goto_f

    .line 1397
    :cond_26
    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1400
    const-string v10, "_data"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1402
    const/4 v10, 0x0

    .line 1403
    .local v10, "mediaType":I
    iget-boolean v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v11, :cond_2b

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2b

    .line 1404
    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v11}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v11

    .line 1405
    .local v11, "fileType":I
    invoke-static {v11}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 1406
    const/4 v10, 0x2

    goto :goto_e

    .line 1407
    :cond_27
    invoke-static {v11}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 1408
    const/4 v10, 0x3

    goto :goto_e

    .line 1409
    :cond_28
    invoke-static {v11}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 1410
    const/4 v10, 0x1

    goto :goto_e

    .line 1411
    :cond_29
    invoke-static {v11}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 1412
    const/4 v10, 0x4

    .line 1414
    :cond_2a
    :goto_e
    const-string/jumbo v12, "media_type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    .end local v11    # "fileType":I
    :cond_2b
    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v4, v12, v12}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1419
    .end local v10    # "mediaType":I
    :cond_2c
    :goto_f
    if-eqz v7, :cond_33

    .line 1420
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_2d

    .line 1421
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "endFile,needToSetSettings : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ";entry: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_2d
    if-eqz v3, :cond_30

    .line 1430
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Lnubia/media/NubiaMediaScanner;

    move-result-object v10

    if-eqz v10, :cond_2e

    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Lnubia/media/NubiaMediaScanner;

    move-result-object v10

    invoke-virtual {v10}, Lnubia/media/NubiaMediaScanner;->isNeedToSetMessageSetting()Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 1431
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Lnubia/media/NubiaMediaScanner;

    move-result-object v10

    invoke-virtual {v10, v0, v8, v9}, Lnubia/media/NubiaMediaScanner;->setSettingIfNotSet(Landroid/net/Uri;J)V

    .line 1432
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Lnubia/media/NubiaMediaScanner;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lnubia/media/NubiaMediaScanner;->setDefaultMessageSet(Z)V

    .line 1433
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Lnubia/media/NubiaMediaScanner;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lnubia/media/NubiaMediaScanner;->setNeedToSetMessageSetting(Z)V

    .line 1436
    :cond_2e
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2f

    iget-object v10, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 1437
    invoke-static {v11}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 1438
    :cond_2f
    const-string/jumbo v10, "notification_sound"

    invoke-direct {v1, v10, v0, v8, v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1439
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/media/MediaScanner;->access$802(Landroid/media/MediaScanner;Z)Z

    goto :goto_11

    .line 1442
    :cond_30
    if-eqz p2, :cond_32

    .line 1445
    const-string/jumbo v10, "ringtone_default"

    invoke-direct {v1, v10, v0, v8, v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1450
    const-string/jumbo v10, "ringtone"

    invoke-direct {v1, v10, v0, v8, v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1452
    const-string/jumbo v10, "ringtone_2"

    invoke-direct {v1, v10, v0, v8, v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1453
    const-string/jumbo v10, "ringtone_3"

    invoke-direct {v1, v10, v0, v8, v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1455
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_31

    .line 1456
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    .line 1457
    .local v10, "phoneCount":I
    const/16 v19, 0x3

    .line 1457
    .local v19, "i":I
    :goto_10
    move/from16 v11, v19

    .line 1457
    .end local v19    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_31

    .line 1459
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ringtone_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12, v0, v8, v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1457
    add-int/lit8 v19, v11, 0x1

    .line 1457
    .end local v11    # "i":I
    .restart local v19    # "i":I
    goto :goto_10

    .line 1463
    .end local v10    # "phoneCount":I
    .end local v19    # "i":I
    :cond_31
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/media/MediaScanner;->access$1002(Landroid/media/MediaScanner;Z)Z

    goto :goto_11

    .line 1464
    :cond_32
    const/4 v11, 0x1

    if-eqz p4, :cond_33

    .line 1465
    const-string v10, "alarm_alert"

    invoke-direct {v1, v10, v0, v8, v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1466
    iget-object v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v10, v11}, Landroid/media/MediaScanner;->access$1202(Landroid/media/MediaScanner;Z)Z

    .line 1470
    :cond_33
    :goto_11
    return-object v6
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 1517
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    const/4 v0, 0x0

    return v0

    .line 1521
    :cond_0
    const/4 v0, 0x0

    .line 1523
    .local v0, "resultFileType":I
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1524
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v2, Landroid/drm/DrmManagerClient;

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/media/MediaScanner;->access$2902(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1527
    :cond_1
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1528
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 1529
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1530
    .local v1, "drmMimetype":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1531
    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1532
    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 1535
    .end local v1    # "drmMimetype":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 3
    .param p1, "date"    # Ljava/lang/String;

    .line 968
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/text/ParseException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    .line 975
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 976
    .local v0, "length":I
    if-ne p2, v0, :cond_0

    return p3

    .line 978
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .local v1, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 980
    .local p2, "ch":C
    const/16 v2, 0x30

    if-lt p2, v2, :cond_5

    const/16 v3, 0x39

    if-le p2, v3, :cond_1

    goto :goto_2

    .line 982
    :cond_1
    add-int/lit8 v4, p2, -0x30

    .line 983
    .local v4, "result":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 984
    add-int/lit8 v5, v1, 0x1

    .local v5, "start":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 985
    .end local v1    # "start":I
    if-lt p2, v2, :cond_3

    if-le p2, v3, :cond_2

    goto :goto_1

    .line 986
    :cond_2
    mul-int/lit8 v1, v4, 0xa

    add-int/lit8 v6, p2, -0x30

    add-int v4, v1, v6

    .line 982
    move v1, v5

    goto :goto_0

    .line 985
    :cond_3
    :goto_1
    return v4

    .line 989
    .end local v5    # "start":I
    .restart local v1    # "start":I
    :cond_4
    return v4

    .line 980
    .end local v4    # "result":I
    :cond_5
    :goto_2
    return p3
.end method

.method private processImageFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 1124
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1125
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1126
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1127
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1128
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 1129
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 1130
    :catch_0
    move-exception v1

    .line 1133
    return v0
.end method

.method private sendMonitorMsg(Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "time"    # J

    .line 692
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMonitorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 693
    new-instance v0, Landroid/media/MediaScanner$ScanFileShot;

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {v0, v1, p1, p3, p4}, Landroid/media/MediaScanner$ScanFileShot;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;J)V

    .line 694
    .local v0, "shot":Landroid/media/MediaScanner$ScanFileShot;
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMonitorHandler:Landroid/os/Handler;

    invoke-static {v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 695
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 696
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 698
    .end local v0    # "shot":Landroid/media/MediaScanner$ScanFileShot;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 6
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .line 1501
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, p1}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    return-void

    .line 1505
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1506
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, "existingSettingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1508
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1509
    .local v2, "settingUri":Landroid/net/Uri;
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1510
    .local v3, "ringtoneUri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    .line 1511
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v5

    .line 1510
    invoke-static {v4, v5, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1513
    .end local v2    # "settingUri":Landroid/net/Uri;
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2, p1}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1514
    return-void
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 4
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .line 1482
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, p1}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1483
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1484
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was already set,  do not set again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_0
    return-void

    .line 1488
    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1493
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1494
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1493
    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1496
    :cond_2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3, p1}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1497
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .line 1052
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1053
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1054
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1055
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1056
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1057
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1058
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1059
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1060
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1061
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1062
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1063
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1064
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1065
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1066
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    .line 1165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1167
    .local v0, "map":Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string/jumbo v1, "title"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v1, "date_modified"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1170
    const-string v1, "_size"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1171
    const-string/jumbo v1, "mime_type"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string/jumbo v1, "is_drm"

    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1174
    const/4 v1, 0x0

    .line 1175
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 1176
    const-string/jumbo v2, "width"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1177
    const-string v2, "height"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_b

    .line 1182
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1183
    const-string v2, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1184
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "<unknown>"

    .line 1183
    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v2, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1186
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, "<unknown>"

    .line 1185
    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    if-eqz v1, :cond_3

    .line 1189
    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_3
    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    .line 1192
    const-string v2, "datetaken"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5

    .line 1194
    :cond_4
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_5

    .line 1196
    :cond_5
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1197
    const-string v2, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1198
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v3, "<unknown>"

    .line 1197
    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v2, "album_artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 1200
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 1199
    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v2, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 1202
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const-string v3, "<unknown>"

    .line 1201
    :goto_4
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v2, "composer"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v2, "genre"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_9

    .line 1206
    const-string/jumbo v2, "year"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    :cond_9
    const-string/jumbo v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1209
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1210
    const-string v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1212
    :cond_a
    :goto_5
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-nez v2, :cond_b

    .line 1214
    const-string/jumbo v2, "media_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1217
    :cond_b
    return-object v0
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 23
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    .line 703
    iput-object v9, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 704
    const/4 v12, 0x0

    iput v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 705
    move-wide/from16 v13, p5

    iput-wide v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 706
    iput-boolean v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 707
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    .line 709
    if-nez p7, :cond_4

    .line 710
    if-nez p8, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    const/4 v1, 0x1

    .end local p8    # "noMedia":Z
    .local v1, "noMedia":Z
    goto :goto_0

    .line 713
    .end local v1    # "noMedia":Z
    .restart local p8    # "noMedia":Z
    :cond_0
    move/from16 v1, p8

    .end local p8    # "noMedia":Z
    .restart local v1    # "noMedia":Z
    :goto_0
    iput-boolean v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 716
    if-eqz v9, :cond_1

    .line 717
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 721
    :cond_1
    iget v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v2, :cond_2

    .line 722
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v2

    .line 723
    .local v2, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v2, :cond_2

    .line 724
    iget v3, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 725
    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 726
    iget-object v3, v2, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 731
    .end local v2    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 732
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 736
    :cond_3
    move v15, v1

    goto :goto_1

    .end local v1    # "noMedia":Z
    .restart local p8    # "noMedia":Z
    :cond_4
    move/from16 v15, p8

    .end local p8    # "noMedia":Z
    .local v15, "noMedia":Z
    :goto_1
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-virtual {v1, v8}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v5

    .line 738
    .local v5, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v5, :cond_5

    iget-wide v2, v5, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v2, v10, v2

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    :goto_2
    move-wide/from16 v17, v2

    .line 739
    .local v17, "delta":J
    const-wide/16 v1, 0x1

    cmp-long v1, v17, v1

    if-gtz v1, :cond_7

    const-wide/16 v1, -0x1

    cmp-long v1, v17, v1

    if-gez v1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v12

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v7

    :goto_4
    move/from16 v19, v1

    .line 740
    .local v19, "wasModified":Z
    if-eqz v5, :cond_8

    if-eqz v19, :cond_b

    .line 741
    :cond_8
    if-eqz v19, :cond_9

    .line 742
    iput-wide v10, v5, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 747
    move v12, v7

    goto :goto_6

    .line 744
    :cond_9
    new-instance v20, Landroid/media/MediaScanner$FileEntry;

    const-wide/16 v2, 0x0

    .line 745
    if-eqz p7, :cond_a

    const/16 v1, 0x3001

    move/from16 v21, v1

    goto :goto_5

    :cond_a
    move/from16 v21, v12

    :goto_5
    move-object/from16 v1, v20

    move-object v4, v8

    move-object/from16 v16, v5

    move-wide v5, v10

    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .local v16, "entry":Landroid/media/MediaScanner$FileEntry;
    move v12, v7

    move/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 747
    .end local v16    # "entry":Landroid/media/MediaScanner$FileEntry;
    .local v1, "entry":Landroid/media/MediaScanner$FileEntry;
    move-object v5, v1

    .end local v1    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    :goto_6
    iput-boolean v12, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 750
    :cond_b
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 751
    iget-object v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    return-object v2

    .line 757
    :cond_c
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 758
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 759
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 760
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 761
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 762
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 763
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 764
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 765
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 766
    iput-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 767
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    .line 768
    iput-wide v10, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 769
    iput-object v2, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 770
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 771
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 772
    iput v1, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 774
    return-object v5
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZLandroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;)Landroid/net/Uri;
    .locals 23
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z
    .param p10, "param"    # Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p9

    .line 819
    move-object/from16 v14, p10

    const/4 v15, 0x0

    .line 822
    .local v15, "result":Landroid/net/Uri;
    move-object v9, v11

    .line 824
    .local v9, "tmpMonitorPath":Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScanFile path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scanAlways:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " noMedia:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    :cond_0
    move/from16 v8, p8

    :goto_0
    if-nez p7, :cond_1

    :try_start_0
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    const/16 v0, 0x1f8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v10, v9, v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 958
    :catch_0
    move-exception v0

    move-object v2, v9

    move-object v1, v14

    goto/16 :goto_12

    .line 831
    :cond_1
    :goto_1
    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object v14, v9

    move v9, v13

    .line 831
    .end local v9    # "tmpMonitorPath":Ljava/lang/String;
    .local v14, "tmpMonitorPath":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v1 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 834
    .local v0, "entry":Landroid/media/MediaScanner$FileEntry;
    if-nez p7, :cond_2

    :try_start_2
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    const/16 v1, 0x1f9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v10, v14, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 958
    .end local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    :catch_1
    move-exception v0

    move/from16 v8, p8

    .line 958
    .end local v14    # "tmpMonitorPath":Ljava/lang/String;
    .end local p1    # "path":Ljava/lang/String;
    .end local p8    # "scanAlways":Z
    .local v2, "tmpMonitorPath":Ljava/lang/String;
    .local v8, "scanAlways":Z
    .local v11, "path":Ljava/lang/String;
    :goto_2
    move-object v2, v14

    move-object/from16 v1, p10

    goto/16 :goto_12

    .line 839
    .end local v2    # "tmpMonitorPath":Ljava/lang/String;
    .end local v8    # "scanAlways":Z
    .end local v11    # "path":Ljava/lang/String;
    .restart local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v14    # "tmpMonitorPath":Ljava/lang/String;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p8    # "scanAlways":Z
    :cond_2
    :goto_3
    if-nez v0, :cond_3

    .line 840
    const/4 v1, 0x0

    return-object v1

    .line 846
    :cond_3
    :try_start_3
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)I

    move-result v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v1, :cond_4

    .line 847
    const-wide/16 v1, 0x0

    :try_start_4
    iput-wide v1, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 849
    :cond_4
    :try_start_5
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v2, 0x11

    if-lt v1, v2, :cond_5

    :try_start_6
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScanFile 2 path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 850
    :cond_5
    :try_start_7
    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    if-eqz v1, :cond_a

    .line 851
    :try_start_8
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 852
    invoke-static {v2}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 853
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 854
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 855
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    .line 856
    invoke-static {v2}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 857
    :cond_8
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forcing rescan of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "since ringtone setting didn\'t finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v1, 0x1

    .line 871
    .end local p8    # "scanAlways":Z
    .local v1, "scanAlways":Z
    .restart local v8    # "scanAlways":Z
    :goto_4
    move v8, v1

    goto :goto_5

    .line 861
    .end local v1    # "scanAlways":Z
    .end local v8    # "scanAlways":Z
    .restart local p8    # "scanAlways":Z
    :cond_9
    iget-object v1, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$1400(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 866
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forcing rescan of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since build fingerprint changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 868
    const/4 v1, 0x1

    goto :goto_4

    .line 871
    :cond_a
    move/from16 v8, p8

    .line 871
    .end local p8    # "scanAlways":Z
    .restart local v8    # "scanAlways":Z
    :goto_5
    :try_start_9
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    const/16 v2, 0xc

    if-lt v1, v2, :cond_b

    :try_start_a
    const-string v1, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScanFile 3 path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " scanAlways:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Changed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 958
    .end local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 873
    .restart local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_b
    :goto_6
    if-eqz v0, :cond_24

    iget-boolean v3, v0, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_c

    if-eqz v8, :cond_24

    .line 874
    :cond_c
    const/16 v9, 0x1ff

    const/16 v3, 0x1fe

    if-eqz v13, :cond_f

    .line 876
    if-nez p7, :cond_d

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v10, v14, v3, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V

    .line 880
    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v1

    move-object v15, v1

    .line 882
    if-nez p7, :cond_e

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v10, v14, v9, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V

    .line 960
    .end local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v14    # "tmpMonitorPath":Ljava/lang/String;
    .end local p1    # "path":Ljava/lang/String;
    .restart local v2    # "tmpMonitorPath":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    :cond_e
    :goto_7
    move-object v2, v14

    move-object/from16 v1, p10

    goto/16 :goto_11

    .line 887
    .end local v2    # "tmpMonitorPath":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .restart local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v14    # "tmpMonitorPath":Ljava/lang/String;
    .restart local p1    # "path":Ljava/lang/String;
    :cond_f
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v4

    if-lt v4, v2, :cond_10

    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doScanFile 4 path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_10
    iget v4, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    move v7, v4

    .line 889
    .local v7, "isaudio":Z
    iget v4, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    move v5, v4

    .line 890
    .local v5, "isvideo":Z
    iget v4, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    .line 891
    .local v4, "isimage":Z
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v6

    if-lt v6, v2, :cond_11

    const-string v6, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doScanFile 5 path:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  isaudio:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isvideo:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isimage:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_11
    if-nez v7, :cond_12

    if-nez v5, :cond_12

    if-eqz v4, :cond_13

    .line 893
    :cond_12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Environment;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 894
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 898
    .end local p1    # "path":Ljava/lang/String;
    .local v1, "path":Ljava/lang/String;
    move-object v11, v1

    .line 898
    .end local v1    # "path":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    :cond_13
    if-nez v7, :cond_15

    if-eqz v5, :cond_14

    goto :goto_8

    .line 913
    :cond_14
    move/from16 v18, v4

    goto :goto_a

    .line 901
    :cond_15
    :goto_8
    if-nez p7, :cond_16

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 902
    const/16 v1, 0x1fa

    move/from16 v18, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 902
    .end local v4    # "isimage":Z
    .local v18, "isimage":Z
    invoke-direct {v10, v14, v1, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V

    goto :goto_9

    .line 905
    .end local v18    # "isimage":Z
    .restart local v4    # "isimage":Z
    :cond_16
    move/from16 v18, v4

    .line 905
    .end local v4    # "isimage":Z
    .restart local v18    # "isimage":Z
    :goto_9
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v1

    if-lt v1, v2, :cond_17

    const-string v1, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "to call processFile path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mimeType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_17
    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1, v11, v12, v10}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z

    move-result v1

    iput-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    .line 908
    if-nez p7, :cond_18

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 909
    const/16 v1, 0x1fb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v10, v14, v1, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V

    .line 913
    :cond_18
    :goto_a
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v1

    if-lt v1, v2, :cond_19

    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScanFile 6 path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isimage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v18

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v18    # "isimage":Z
    .restart local v4    # "isimage":Z
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 915
    .end local v4    # "isimage":Z
    .restart local v18    # "isimage":Z
    :cond_19
    move/from16 v4, v18

    .line 915
    .end local v18    # "isimage":Z
    .restart local v4    # "isimage":Z
    :goto_b
    if-eqz v4, :cond_1b

    .line 917
    if-nez p7, :cond_1a

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 918
    const/16 v1, 0x1fc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v10, v14, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V

    .line 921
    :cond_1a
    invoke-direct {v10, v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    .line 923
    if-nez p7, :cond_1b

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 924
    const/16 v1, 0x1fd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v10, v14, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V

    .line 929
    :cond_1b
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 930
    .local v9, "lowpath":Ljava/lang/String;
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    const-string v1, "/ringtones/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_c

    :cond_1c
    move v1, v2

    :goto_c
    move/from16 v18, v1

    .line 931
    .local v18, "ringtones":Z
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_1d

    const-string v1, "/notifications/"

    .line 932
    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_d

    :cond_1d
    move v1, v2

    :goto_d
    move/from16 v19, v1

    .line 933
    .local v19, "notifications":Z
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_1e

    const-string v1, "/alarms/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_e

    :cond_1e
    move v1, v2

    :goto_e
    move/from16 v20, v1

    .line 934
    .local v20, "alarms":Z
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_1f

    const-string v1, "/podcasts/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_f

    :cond_1f
    move v1, v2

    :goto_f
    move/from16 v21, v1

    .line 935
    .local v21, "podcasts":Z
    iget-boolean v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v1, :cond_21

    const-string v1, "/music/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_20

    if-nez v18, :cond_21

    if-nez v19, :cond_21

    if-nez v20, :cond_21

    if-nez v21, :cond_21

    :cond_20
    const/4 v6, 0x1

    goto :goto_10

    :cond_21
    move v6, v2

    .line 939
    .local v6, "music":Z
    :goto_10
    if-nez p7, :cond_22

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x1fe

    invoke-direct {v10, v14, v3, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V

    .line 943
    :cond_22
    move-object v1, v10

    move-object v2, v0

    move/from16 v3, v18

    move/from16 v16, v4

    move/from16 v4, v19

    .line 943
    .end local v4    # "isimage":Z
    .local v16, "isimage":Z
    move/from16 v17, v5

    move/from16 v5, v20

    .line 943
    .end local v5    # "isvideo":Z
    .local v17, "isvideo":Z
    move/from16 v22, v7

    move/from16 v7, v21

    .line 943
    .end local v7    # "isaudio":Z
    .local v22, "isaudio":Z
    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v1

    move-object v15, v1

    .line 945
    if-nez p7, :cond_23

    iget-object v1, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x1ff

    invoke-direct {v10, v14, v3, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    .line 949
    .end local v6    # "music":Z
    .end local v9    # "lowpath":Ljava/lang/String;
    .end local v16    # "isimage":Z
    .end local v17    # "isvideo":Z
    .end local v18    # "ringtones":Z
    .end local v19    # "notifications":Z
    .end local v20    # "alarms":Z
    .end local v21    # "podcasts":Z
    .end local v22    # "isaudio":Z
    :cond_23
    goto/16 :goto_7

    .line 952
    .end local v11    # "path":Ljava/lang/String;
    .restart local p1    # "path":Ljava/lang/String;
    :cond_24
    if-eqz v0, :cond_26

    :try_start_b
    iget-boolean v1, v0, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4

    if-nez v1, :cond_26

    move-object v2, v14

    move-object/from16 v1, p10

    if-eqz v1, :cond_27

    .line 952
    .end local v14    # "tmpMonitorPath":Ljava/lang/String;
    .restart local v2    # "tmpMonitorPath":Ljava/lang/String;
    if-eqz p7, :cond_27

    .line 953
    :try_start_c
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_25

    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no modified! skip scan :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_25
    const/4 v3, 0x1

    iput v3, v1, Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;->canScanState:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    .line 954
    .end local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_11

    .line 958
    :catch_3
    move-exception v0

    goto :goto_12

    .line 960
    .end local v2    # "tmpMonitorPath":Ljava/lang/String;
    .restart local v14    # "tmpMonitorPath":Ljava/lang/String;
    :cond_26
    move-object v2, v14

    move-object/from16 v1, p10

    .line 960
    .end local v14    # "tmpMonitorPath":Ljava/lang/String;
    .end local p1    # "path":Ljava/lang/String;
    .restart local v2    # "tmpMonitorPath":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    :cond_27
    :goto_11
    goto :goto_13

    .line 958
    .end local v2    # "tmpMonitorPath":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .restart local v14    # "tmpMonitorPath":Ljava/lang/String;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object v2, v14

    move-object/from16 v1, p10

    goto :goto_12

    .line 958
    .end local v8    # "scanAlways":Z
    .restart local p8    # "scanAlways":Z
    :catch_5
    move-exception v0

    move-object v2, v14

    move-object/from16 v1, p10

    move/from16 v8, p8

    .line 959
    .end local v14    # "tmpMonitorPath":Ljava/lang/String;
    .end local p1    # "path":Ljava/lang/String;
    .end local p8    # "scanAlways":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "tmpMonitorPath":Ljava/lang/String;
    .restart local v8    # "scanAlways":Z
    .restart local v11    # "path":Ljava/lang/String;
    :goto_12
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-object v15
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "genreTagValue"    # Ljava/lang/String;

    .line 1070
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1071
    return-object v0

    .line 1073
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1075
    .local v1, "length":I
    if-lez v1, :cond_c

    .line 1076
    const/4 v2, 0x0

    .line 1077
    .local v2, "parenthesized":Z
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1078
    .local v3, "number":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 1079
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1080
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1081
    .local v5, "c":C
    if-nez v4, :cond_1

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    .line 1082
    const/4 v2, 0x1

    goto :goto_1

    .line 1083
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1084
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1079
    .end local v5    # "c":C
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1089
    :cond_2
    if-ge v4, v1, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_3
    const/16 v5, 0x20

    .line 1090
    .local v5, "charAfterNumber":C
    :goto_2
    const/16 v6, 0x29

    if-eqz v2, :cond_4

    if-eq v5, v6, :cond_5

    :cond_4
    if-nez v2, :cond_c

    .line 1091
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1093
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v7

    .line 1094
    .local v7, "genreIndex":S
    if-ltz v7, :cond_b

    .line 1095
    invoke-static {}, Landroid/media/MediaScanner;->access$1700()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_6

    invoke-static {}, Landroid/media/MediaScanner;->access$1700()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    if-eqz v8, :cond_6

    .line 1096
    invoke-static {}, Landroid/media/MediaScanner;->access$1700()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    return-object v0

    .line 1097
    :cond_6
    const/16 v8, 0xff

    if-ne v7, v8, :cond_7

    .line 1098
    return-object v0

    .line 1099
    :cond_7
    if-ge v7, v8, :cond_a

    add-int/lit8 v0, v4, 0x1

    if-ge v0, v1, :cond_a

    .line 1102
    if-eqz v2, :cond_8

    if-ne v5, v6, :cond_8

    .line 1103
    add-int/lit8 v4, v4, 0x1

    .line 1105
    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1107
    return-object v0

    .line 1109
    .end local v0    # "ret":Ljava/lang/String;
    :cond_9
    goto :goto_3

    .line 1111
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1115
    .end local v7    # "genreIndex":S
    :cond_b
    :goto_3
    goto :goto_4

    .line 1114
    :catch_0
    move-exception v0

    .line 1119
    .end local v2    # "parenthesized":Z
    .end local v3    # "number":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "charAfterNumber":C
    :cond_c
    :goto_4
    return-object p1
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 993
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "title;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 998
    :cond_0
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "artist;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 1000
    :cond_1
    const-string v0, "albumartist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "albumartist;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "band"

    .line 1001
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "band;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 1003
    :cond_2
    const-string v0, "album"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "album;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 1005
    :cond_3
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "composer;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 1007
    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "genre"

    .line 1008
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "genre;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1009
    :cond_5
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_9

    .line 1010
    :cond_6
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const-string/jumbo v0, "year;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_3

    .line 1012
    :cond_7
    const-string/jumbo v0, "tracknumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "tracknumber;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_2

    .line 1017
    :cond_8
    const-string v0, "discnumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "set"

    .line 1018
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "set;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 1023
    :cond_9
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1024
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_9

    .line 1025
    :cond_a
    const-string/jumbo v0, "writer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "writer;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 1027
    :cond_b
    const-string v0, "compilation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1028
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_9

    .line 1029
    :cond_c
    const-string/jumbo v0, "isdrm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1030
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_9

    .line 1031
    :cond_e
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1032
    invoke-direct {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    goto :goto_9

    .line 1033
    :cond_f
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1034
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto :goto_9

    .line 1035
    :cond_10
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1036
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto :goto_9

    .line 1026
    :cond_11
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto :goto_9

    .line 1021
    :cond_12
    :goto_1
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 1022
    .local v0, "num":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 1023
    .end local v0    # "num":I
    goto :goto_9

    .line 1015
    :cond_13
    :goto_2
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 1016
    .restart local v0    # "num":I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 1017
    .end local v0    # "num":I
    goto :goto_9

    .line 1011
    :cond_14
    :goto_3
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto :goto_9

    .line 1006
    :cond_15
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_9

    .line 1004
    :cond_16
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_9

    .line 1002
    :cond_17
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_9

    .line 999
    :cond_18
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_9

    .line 997
    :cond_19
    :goto_8
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 1040
    :cond_1a
    :goto_9
    return-void
.end method

.method public scanFile(Ljava/lang/String;JJZZ)I
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    move-object v11, p0

    move-object v12, p1

    .line 792
    if-nez p6, :cond_0

    iget-object v0, v11, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const/16 v0, 0x1f4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v11, v12, v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V

    .line 798
    :cond_0
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;

    invoke-direct {v0, v11}, Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;-><init>(Landroid/media/MediaScanner$MyMediaScannerClient;)V

    move-object v13, v0

    .line 800
    .local v13, "param":Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, v12

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    move-object v10, v13

    invoke-virtual/range {v0 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZLandroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;)Landroid/net/Uri;

    .line 803
    if-nez p6, :cond_1

    iget-object v0, v11, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    const/16 v0, 0x1f5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v11, v12, v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->sendMonitorMsg(Ljava/lang/String;IJ)V

    .line 809
    :cond_1
    iget-object v0, v11, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 810
    invoke-static {}, Landroid/media/MediaScanner;->access$600()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const-string v0, "MediaScanner"

    const-string/jumbo v1, "stop scan immediately!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_2
    const/4 v0, 0x3

    iput v0, v13, Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;->canScanState:I

    .line 813
    :cond_3
    iget v0, v13, Landroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;->canScanState:I

    return v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 1137
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    .line 1138
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    return-void

    .line 1143
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "video/x-ms-wmv"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/x-matroska"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/3gp"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/3gpp"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/3gpp2"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/mp2p"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1150
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/avi"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    :cond_1
    return-void

    .line 1154
    :cond_2
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1155
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 1156
    return-void
.end method

.method public setMonitorHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 688
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMonitorHandler:Landroid/os/Handler;

    .line 689
    return-void
.end method
