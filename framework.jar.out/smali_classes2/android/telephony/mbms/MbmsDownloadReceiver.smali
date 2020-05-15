.class public Landroid/telephony/mbms/MbmsDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MbmsDownloadReceiver.java"


# static fields
.field public static final DOWNLOAD_TOKEN_SUFFIX:Ljava/lang/String; = ".download_token"

.field private static final EMBMS_INTENT_PERMISSION:Ljava/lang/String; = "android.permission.SEND_EMBMS_INTENTS"

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsDownloadReceiver"

.field private static final MAX_TEMP_FILE_RETRIES:I = 0x5

.field public static final MBMS_FILE_PROVIDER_META_DATA_KEY:Ljava/lang/String; = "mbms-file-provider-authority"

.field public static final RESULT_APP_NOTIFICATION_ERROR:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_BAD_TEMP_FILE_ROOT:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_DOWNLOAD_FINALIZATION_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_INVALID_ACTION:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_MALFORMED_INTENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_TEMP_FILE_GENERATION_ERROR:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final TEMP_FILE_STAGING_LOCATION:Ljava/lang/String; = "staged_completed_files"

.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = ".embms.temp"


# instance fields
.field private mFileProviderAuthorityCache:Ljava/lang/String;

.field private mMiddlewarePackageNameCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    return-void
.end method

.method private cleanupPostMove(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 290
    const-string v0, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/DownloadRequest;

    .line 292
    .local v0, "request":Landroid/telephony/mbms/DownloadRequest;
    if-nez v0, :cond_0

    .line 293
    const-string v1, "MbmsDownloadReceiver"

    const-string v2, "Intent does not include a DownloadRequest. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 297
    :cond_0
    const-string v1, "android.telephony.mbms.extra.TEMP_LIST"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 298
    .local v1, "tempFiles":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez v1, :cond_1

    .line 299
    return-void

    .line 302
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 303
    .local v3, "tempFileUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v3}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 304
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 306
    const-string v5, "MbmsDownloadReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete temp file at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v3    # "tempFileUri":Landroid/net/Uri;
    .end local v4    # "tempFile":Ljava/io/File;
    :cond_2
    goto :goto_0

    .line 310
    :cond_3
    return-void
.end method

.method private cleanupTempFiles(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 417
    const-string v0, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "serviceId":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 419
    .local v1, "tempFileDir":Ljava/io/File;
    const-string v2, "android.telephony.mbms.extra.TEMP_FILES_IN_USE"

    .line 420
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 421
    .local v2, "filesInUse":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v3, Landroid/telephony/mbms/MbmsDownloadReceiver$1;

    invoke-direct {v3, p0, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver$1;-><init>(Landroid/telephony/mbms/MbmsDownloadReceiver;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 442
    .local v3, "filesToDelete":[Ljava/io/File;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 443
    .local v6, "fileToDelete":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 442
    .end local v6    # "fileToDelete":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method private generateFreshTempFiles(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "freshFdCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/mbms/UriPathPair;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-static {p1, p2}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 345
    .local v0, "tempFileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 351
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/mbms/UriPathPair;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_2

    .line 353
    invoke-static {v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateSingleTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 354
    .local v3, "tempFile":Ljava/io/File;
    if-nez v3, :cond_1

    .line 355
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 356
    const-string v4, "MbmsDownloadReceiver"

    const-string v5, "Failed to generate a temp file. Moving on."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    goto :goto_1

    .line 359
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 360
    .local v4, "fileUri":Landroid/net/Uri;
    nop

    .line 361
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileProviderAuthorityCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 360
    invoke-static {p1, v5, v3}, Landroid/telephony/mbms/MbmsTempFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 362
    .local v5, "contentUri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getMiddlewarePackageCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v5, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 364
    new-instance v6, Landroid/telephony/mbms/UriPathPair;

    invoke-direct {v6, v4, v5}, Landroid/telephony/mbms/UriPathPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v4    # "fileUri":Landroid/net/Uri;
    .end local v5    # "contentUri":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private static generateSingleTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "tempFileDir"    # Ljava/io/File;

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "numTries":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".embms.temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    .local v2, "tempFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 382
    :cond_0
    nop

    .line 383
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "tempFile":Ljava/io/File;
    goto :goto_0

    .line 380
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 381
    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 384
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "tempFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private generateTempFiles(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 313
    const-string v0, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "serviceId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 315
    const-string v1, "MbmsDownloadReceiver"

    const-string v2, "Temp file request did not include the associated service id. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 318
    return-void

    .line 320
    :cond_0
    const-string v1, "android.telephony.mbms.extra.FD_COUNT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 321
    .local v1, "fdCount":I
    const-string v3, "android.telephony.mbms.extra.PAUSED_LIST"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 323
    .local v3, "pausedList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 324
    :cond_1
    const-string v4, "MbmsDownloadReceiver"

    const-string v5, "No temp files actually requested. Ending."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 326
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultExtras(Landroid/os/Bundle;)V

    .line 327
    return-void

    .line 330
    :cond_2
    nop

    .line 331
    invoke-direct {p0, p1, v0, v1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateFreshTempFiles(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 332
    .local v4, "freshTempFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/mbms/UriPathPair;>;"
    nop

    .line 333
    invoke-direct {p0, p1, v0, v3}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateUrisForPausedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    .line 335
    .local v5, "pausedFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/mbms/UriPathPair;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v6, "result":Landroid/os/Bundle;
    const-string v7, "android.telephony.mbms.extra.FREE_URI_LIST"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 337
    const-string v7, "android.telephony.mbms.extra.PAUSED_URI_LIST"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 338
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 339
    invoke-virtual {p0, v6}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultExtras(Landroid/os/Bundle;)V

    .line 340
    return-void
.end method

.method private generateUrisForPausedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/mbms/UriPathPair;",
            ">;"
        }
    .end annotation

    .line 389
    .local p3, "pausedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez p3, :cond_0

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 392
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 394
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/mbms/UriPathPair;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 395
    .local v2, "fileUri":Landroid/net/Uri;
    invoke-static {p1, p2, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_1

    .line 396
    const-string v3, "MbmsDownloadReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Supplied file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not a valid temp file to resume"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 398
    goto :goto_0

    .line 400
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 402
    const-string v5, "MbmsDownloadReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Supplied file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 404
    goto :goto_0

    .line 406
    :cond_2
    nop

    .line 407
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileProviderAuthorityCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-static {p1, v4, v3}, Landroid/telephony/mbms/MbmsTempFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 408
    .local v4, "contentUri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getMiddlewarePackageCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p1, v5, v4, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 411
    new-instance v5, Landroid/telephony/mbms/UriPathPair;

    invoke-direct {v5, v2, v4}, Landroid/telephony/mbms/UriPathPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v2    # "fileUri":Landroid/net/Uri;
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v4    # "contentUri":Landroid/net/Uri;
    goto :goto_0

    .line 413
    :cond_3
    return-object v0
.end method

.method private static getFileProviderAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 535
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 538
    nop

    .line 540
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "mbms-file-provider-authority"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "authority":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 549
    return-object v1

    .line 546
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "App must declare the file provider authority as metadata in the manifest."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 541
    .end local v1    # "authority":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "App must declare the file provider authority as metadata in the manifest."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package manager couldn\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFileProviderAuthorityCached(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 524
    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    return-object v0

    .line 528
    :cond_0
    invoke-static {p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileProviderAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    .line 529
    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    return-object v0
.end method

.method public static getFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "sourceUriPath"    # Ljava/lang/String;
    .param p1, "fileInfoPath"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 475
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2f

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 479
    .local v0, "lastSlash":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 481
    .end local v0    # "lastSlash":I
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    const-string v0, "MbmsDownloadReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File location specified in FileInfo does not match the source URI. source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileinfo path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v0, 0x0

    return-object v0

    .line 486
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 489
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "prefixOmittedPath":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_3
    return-object v0
.end method

.method private getMiddlewarePackageCached(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 553
    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 554
    const-string v0, "android.telephony.action.EmbmsDownload"

    invoke-static {p1, v0}, Landroid/telephony/mbms/MbmsUtils;->getMiddlewareServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    .line 557
    :cond_0
    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    return-object v0
.end method

.method private moveDownloadedFile(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 238
    const-string v0, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/DownloadRequest;

    .line 240
    .local v0, "request":Landroid/telephony/mbms/DownloadRequest;
    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getIntentForApp()Landroid/content/Intent;

    move-result-object v1

    .line 241
    .local v1, "intentForApp":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 242
    const-string v2, "MbmsDownloadReceiver"

    const-string v3, "Malformed app notification intent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 244
    return-void

    .line 247
    :cond_0
    const-string v2, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 249
    .local v2, "result":I
    const-string v3, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v3, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 253
    const-string v3, "MbmsDownloadReceiver"

    const-string v5, "Download request indicated a failed download. Aborting."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    invoke-virtual {p0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 256
    return-void

    .line 259
    :cond_1
    const-string v3, "android.telephony.mbms.extra.FINAL_URI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 260
    .local v3, "finalTempFile":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v3}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v5

    const/4 v6, 0x4

    if-nez v5, :cond_2

    .line 261
    const-string v4, "MbmsDownloadReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download result specified an invalid temp file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0, v6}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 263
    return-void

    .line 266
    :cond_2
    const-string v5, "android.telephony.extra.MBMS_FILE_INFO"

    .line 267
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/telephony/mbms/FileInfo;

    .line 268
    .local v5, "completedFileInfo":Landroid/telephony/mbms/FileInfo;
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v7

    .line 269
    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getDestinationUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/String;

    .line 268
    invoke-virtual {v7, v8, v9}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    .line 273
    .local v7, "appSpecifiedDestination":Ljava/nio/file/Path;
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 274
    invoke-virtual {v5}, Landroid/telephony/mbms/FileInfo;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 273
    invoke-static {v8, v9}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "relativeLocation":Ljava/lang/String;
    invoke-static {v3, v7, v8}, Landroid/telephony/mbms/MbmsDownloadReceiver;->moveToFinalLocation(Landroid/net/Uri;Ljava/nio/file/Path;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "relativeLocation":Ljava/lang/String;
    move-object v6, v9

    .line 281
    .local v6, "finalLocation":Landroid/net/Uri;
    nop

    .line 280
    nop

    .line 282
    const-string v8, "android.telephony.extra.MBMS_COMPLETED_FILE_URI"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    const-string v8, "android.telephony.extra.MBMS_FILE_INFO"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    invoke-virtual {p0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 287
    return-void

    .line 277
    .end local v6    # "finalLocation":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 278
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "MbmsDownloadReceiver"

    const-string v9, "Failed to move temp file to final destination"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0, v6}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 280
    return-void
.end method

.method private static moveToFinalLocation(Landroid/net/Uri;Ljava/nio/file/Path;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "fromPath"    # Landroid/net/Uri;
    .param p1, "appSpecifiedPath"    # Ljava/nio/file/Path;
    .param p2, "relativeLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const-string v0, "MbmsDownloadReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloaded file location uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a file scheme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 459
    .local v0, "fromFile":Ljava/nio/file/Path;
    invoke-interface {p1, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 461
    .local v1, "toFile":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 462
    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 464
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v3, v2

    const/4 v2, 0x1

    sget-object v4, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object v2

    .line 467
    .local v2, "result":Ljava/nio/file/Path;
    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private verifyIntentContents(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 168
    const-string v0, "android.telephony.mbms.action.DOWNLOAD_RESULT_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 169
    const-string v0, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Download result did not include a result code. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v2

    .line 173
    :cond_0
    const-string v0, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Download result did not include the associated request. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v2

    .line 178
    :cond_1
    const-string v0, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    const/4 v3, 0x2

    .line 179
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 181
    return v1

    .line 183
    :cond_2
    const-string v0, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Download result did not include the temp file root. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v2

    .line 187
    :cond_3
    const-string v0, "android.telephony.extra.MBMS_FILE_INFO"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Download result did not include the associated file info. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v2

    .line 192
    :cond_4
    const-string v0, "android.telephony.mbms.extra.FINAL_URI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 193
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Download result did not include the path to the final temp file. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v2

    .line 197
    :cond_5
    const-string v0, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/DownloadRequest;

    .line 199
    .local v0, "request":Landroid/telephony/mbms/DownloadRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".download_token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "expectedTokenFileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    .line 201
    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v4, "expectedTokenFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 204
    const-string v1, "MbmsDownloadReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Supplied download request does not match a token that we have. Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v2

    .line 208
    .end local v0    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local v3    # "expectedTokenFileName":Ljava/lang/String;
    .end local v4    # "expectedTokenFile":Ljava/io/File;
    :cond_6
    goto :goto_0

    :cond_7
    const-string v0, "android.telephony.mbms.action.FILE_DESCRIPTOR_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 209
    const-string v0, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Temp file request did not include the associated service id. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return v2

    .line 214
    :cond_8
    const-string v0, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 215
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Download result did not include the temp file root. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v2

    .line 218
    :cond_9
    const-string v0, "android.telephony.mbms.action.CLEANUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 219
    const-string v0, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 220
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Cleanup request did not include the associated service id. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v2

    .line 224
    :cond_a
    const-string v0, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 225
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Cleanup request did not include the temp file root. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v2

    .line 228
    :cond_b
    const-string v0, "android.telephony.mbms.extra.TEMP_FILES_IN_USE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 229
    const-string v0, "MbmsDownloadReceiver"

    const-string v1, "Cleanup request did not include the list of temp files in use. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v2

    .line 234
    :cond_c
    :goto_0
    return v1
.end method

.method private verifyPermissionIntegrity(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 561
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 562
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/telephony/mbms/MbmsDownloadReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    .local v1, "queryIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 564
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 567
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 568
    .local v2, "selfInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_3

    .line 571
    const-string v4, "android.telephony.action.EmbmsDownload"

    invoke-static {p1, v4}, Landroid/telephony/mbms/MbmsUtils;->getOverrideServiceName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 574
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 578
    return-void

    .line 575
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "MbmsDownloadReceiver must require some permission"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 580
    :cond_1
    const-string v4, "android.permission.SEND_EMBMS_INTENTS"

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 584
    return-void

    .line 581
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "MbmsDownloadReceiver must require the SEND_EMBMS_INTENTS permission."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 569
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Queried ResolveInfo does not contain a receiver"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    .end local v2    # "selfInfo":Landroid/content/pm/ActivityInfo;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Non-unique download receiver in your app"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "filePath"    # Landroid/net/Uri;

    .line 501
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 502
    const-string v0, "MbmsDownloadReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have a file scheme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v1

    .line 506
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 509
    const-string v3, "MbmsDownloadReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return v1

    .line 513
    :cond_1
    nop

    .line 514
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 513
    invoke-static {v3, v2}, Landroid/telephony/mbms/MbmsUtils;->isContainedIn(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 515
    const-string v3, "MbmsDownloadReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not contained in the temp file root, which is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 515
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v1

    .line 520
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 143
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyPermissionIntegrity(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyIntentContents(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 147
    return-void

    .line 149
    :cond_0
    const-string v0, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {p1}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 152
    return-void

    .line 155
    :cond_1
    const-string v0, "android.telephony.mbms.action.DOWNLOAD_RESULT_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->moveDownloadedFile(Landroid/content/Context;Landroid/content/Intent;)V

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->cleanupPostMove(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    :cond_2
    const-string v0, "android.telephony.mbms.action.FILE_DESCRIPTOR_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateTempFiles(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :cond_3
    const-string v0, "android.telephony.mbms.action.CLEANUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->cleanupTempFiles(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    .line 165
    :goto_0
    return-void
.end method
