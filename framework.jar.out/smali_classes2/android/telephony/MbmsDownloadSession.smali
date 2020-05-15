.class public Landroid/telephony/MbmsDownloadSession;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MbmsDownloadSession$DownloadStatus;,
        Landroid/telephony/MbmsDownloadSession$DownloadResultCode;
    }
.end annotation


# static fields
.field public static final DEFAULT_TOP_LEVEL_TEMP_DIRECTORY:Ljava/lang/String; = "androidMbmsTempFileRoot"

.field private static final DESTINATION_SANITY_CHECK_FILE_NAME:Ljava/lang/String; = "destinationSanityCheckFile"

.field public static final EXTRA_MBMS_COMPLETED_FILE_URI:Ljava/lang/String; = "android.telephony.extra.MBMS_COMPLETED_FILE_URI"

.field public static final EXTRA_MBMS_DOWNLOAD_REQUEST:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

.field public static final EXTRA_MBMS_DOWNLOAD_RESULT:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

.field public static final EXTRA_MBMS_FILE_INFO:Ljava/lang/String; = "android.telephony.extra.MBMS_FILE_INFO"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MBMS_DOWNLOAD_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsDownload"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MBMS_DOWNLOAD_SERVICE_OVERRIDE_METADATA:Ljava/lang/String; = "mbms-download-service-override"

.field public static final RESULT_CANCELLED:I = 0x2

.field public static final RESULT_DOWNLOAD_FAILURE:I = 0x6

.field public static final RESULT_EXPIRED:I = 0x3

.field public static final RESULT_FILE_ROOT_UNREACHABLE:I = 0x8

.field public static final RESULT_IO_ERROR:I = 0x4

.field public static final RESULT_OUT_OF_STORAGE:I = 0x7

.field public static final RESULT_SERVICE_ID_NOT_DEFINED:I = 0x5

.field public static final RESULT_SUCCESSFUL:I = 0x1

.field public static final STATUS_ACTIVELY_DOWNLOADING:I = 0x1

.field public static final STATUS_PENDING_DOWNLOAD:I = 0x2

.field public static final STATUS_PENDING_DOWNLOAD_WINDOW:I = 0x4

.field public static final STATUS_PENDING_REPAIR:I = 0x3

.field public static final STATUS_UNKNOWN:I

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field private final mInternalDownloadProgressListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/mbms/DownloadProgressListener;",
            "Landroid/telephony/mbms/InternalDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalDownloadStatusListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/mbms/DownloadStatusListener;",
            "Landroid/telephony/mbms/InternalDownloadStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/mbms/vendor/IMbmsDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    const-class v0, Landroid/telephony/MbmsDownloadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "subscriptionId"    # I
    .param p4, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 238
    new-instance v0, Landroid/telephony/MbmsDownloadSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsDownloadSession$1;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 254
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 255
    iput p3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 256
    new-instance v0, Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-direct {v0, p4, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 257
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/MbmsDownloadSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/MbmsDownloadSession;)I
    .locals 1
    .param p0, "x0"    # Landroid/telephony/MbmsDownloadSession;

    .line 66
    iget v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    return v0
.end method

.method static synthetic access$200(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/MbmsDownloadSession;

    .line 66
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 66
    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/MbmsDownloadSession;

    .line 66
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$600(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/MbmsDownloadSession;

    .line 66
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private bindAndInitialize()I
    .locals 3

    .line 321
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v1, "android.telephony.action.EmbmsDownload"

    new-instance v2, Landroid/telephony/MbmsDownloadSession$3;

    invoke-direct {v2, p0}, Landroid/telephony/MbmsDownloadSession$3;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method private checkDownloadRequestDestination(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 7
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 1015
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getDestinationUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v0, "downloadRequestDestination":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1021
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "destinationSanityCheckFile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1023
    .local v1, "testFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "destinationSanityCheckFile"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1027
    .local v2, "testFileDestination":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1028
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1030
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1039
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1040
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1041
    nop

    .line 1042
    return-void

    .line 1031
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Destination provided in the download request is invalid -- files in the temp file directory cannot be directly moved there."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v3

    .line 1036
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got IOException while testing out the destination: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1039
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1040
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v3

    .line 1017
    .end local v1    # "testFile":Ljava/io/File;
    .end local v2    # "testFileDestination":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The destination path must be a directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "subscriptionId"    # I
    .param p3, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    .line 301
    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Landroid/telephony/MbmsDownloadSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/MbmsDownloadSession;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)V

    .line 306
    .local v0, "session":Landroid/telephony/MbmsDownloadSession;
    invoke-direct {v0}, Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I

    move-result v2

    .line 307
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 308
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 309
    new-instance v1, Landroid/telephony/MbmsDownloadSession$2;

    invoke-direct {v1, p3, v2}, Landroid/telephony/MbmsDownloadSession$2;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 315
    const/4 v1, 0x0

    return-object v1

    .line 317
    :cond_0
    return-object v0

    .line 302
    .end local v0    # "session":Landroid/telephony/MbmsDownloadSession;
    .end local v2    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have two active instances"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    .line 265
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsDownloadSession;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;

    move-result-object v0

    return-object v0
.end method

.method private deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 1004
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 1005
    .local v0, "token":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to delete non-existent download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void

    .line 1009
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1010
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_1
    return-void
.end method

.method private getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;
    .locals 3
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 1045
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 1046
    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-static {v0, v1}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1047
    .local v0, "tempFileLocation":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".download_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, "downloadTokenFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1053
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->onError(ILjava/lang/String;)V

    .line 1054
    return-void
.end method

.method private validateTempFileRootSanity(Ljava/io/File;)V
    .locals 3
    .param p1, "tempFileRootDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "canonicalTempFilePath":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 491
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 494
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    return-void

    .line 495
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Temp file root cannot be your files dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Temp file root cannot be your cache dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Temp file root cannot be your data dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    .end local v0    # "canonicalTempFilePath":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided File is not a directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided directory does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 5
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 984
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 985
    .local v0, "token":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 986
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 988
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void

    .line 993
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1000
    nop

    .line 1001
    return-void

    .line 994
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create download token for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Token location is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :catch_0
    move-exception v1

    .line 998
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create download token for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " due to IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Attempted to write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addProgressListener(Landroid/telephony/mbms/DownloadRequest;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/DownloadProgressListener;)V
    .locals 6
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/telephony/mbms/DownloadProgressListener;

    .line 736
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 737
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_3

    .line 741
    new-instance v1, Landroid/telephony/mbms/InternalDownloadProgressListener;

    invoke-direct {v1, p3, p2}, Landroid/telephony/mbms/InternalDownloadProgressListener;-><init>(Landroid/telephony/mbms/DownloadProgressListener;Ljava/util/concurrent/Executor;)V

    .line 745
    .local v1, "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v3

    .line 746
    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 751
    if-eqz v3, :cond_1

    .line 752
    const/16 v4, 0x192

    if-eq v3, v4, :cond_0

    .line 755
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 756
    return-void

    .line 753
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .end local v3    # "result":I
    :cond_1
    nop

    .line 764
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    return-void

    .line 748
    .restart local v3    # "result":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 749
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 758
    .end local v3    # "result":I
    :catch_0
    move-exception v3

    .line 759
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 760
    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 761
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 762
    return-void

    .line 738
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addStatusListener(Landroid/telephony/mbms/DownloadRequest;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/DownloadStatusListener;)V
    .locals 6
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/telephony/mbms/DownloadStatusListener;

    .line 624
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 625
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_3

    .line 629
    new-instance v1, Landroid/telephony/mbms/InternalDownloadStatusListener;

    invoke-direct {v1, p3, p2}, Landroid/telephony/mbms/InternalDownloadStatusListener;-><init>(Landroid/telephony/mbms/DownloadStatusListener;Ljava/util/concurrent/Executor;)V

    .line 633
    .local v1, "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v3

    .line 634
    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 639
    if-eqz v3, :cond_1

    .line 640
    const/16 v4, 0x192

    if-eq v3, v4, :cond_0

    .line 643
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 644
    return-void

    .line 641
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v3    # "result":I
    :cond_1
    nop

    .line 652
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    return-void

    .line 636
    .restart local v3    # "result":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 637
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 646
    .end local v3    # "result":I
    :catch_0
    move-exception v3

    .line 647
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 648
    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 649
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 650
    return-void

    .line 626
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelDownload(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 5
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;

    .line 835
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 836
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_2

    .line 841
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    .line 842
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 847
    if-eqz v2, :cond_0

    .line 848
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    .line 856
    .end local v2    # "result":I
    :goto_0
    goto :goto_1

    .line 844
    .restart local v2    # "result":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 845
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v2    # "result":I
    :catch_0
    move-exception v2

    .line 853
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 854
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 855
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 857
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 837
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 5

    .line 967
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 968
    .local v2, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-nez v2, :cond_0

    .line 969
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Service already dead"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 978
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 979
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 970
    return-void

    .line 972
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->dispose(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    goto :goto_0

    .line 977
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 973
    :catch_0
    move-exception v2

    .line 975
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Remote exception while disposing of service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 977
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 978
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 979
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 980
    nop

    .line 981
    return-void

    .line 977
    :goto_1
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 978
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 979
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    throw v2
.end method

.method public download(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 7
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 542
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 543
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_3

    .line 548
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v2, "MbmsTempFileRootPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 550
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "mbms_temp_file_root"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 551
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "androidMbmsTempFileRoot"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    .local v2, "tempRootDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 554
    invoke-virtual {p0, v2}, Landroid/telephony/MbmsDownloadSession;->setTempFileRootDirectory(Ljava/io/File;)V

    .line 557
    .end local v2    # "tempRootDirectory":Ljava/io/File;
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->checkDownloadRequestDestination(Landroid/telephony/mbms/DownloadRequest;)V

    .line 560
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->download(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    .line 561
    .local v2, "result":I
    if-nez v2, :cond_1

    .line 562
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    goto :goto_0

    .line 564
    :cond_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 570
    invoke-direct {p0, v2, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 576
    .end local v2    # "result":I
    :goto_0
    goto :goto_1

    .line 566
    .restart local v2    # "result":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 567
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Middleware must not return an unknown error code"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v2    # "result":I
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 574
    sget-object v5, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 575
    const/4 v3, 0x3

    invoke-direct {p0, v3, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 577
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 544
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTempFileRootDirectory()Ljava/io/File;
    .locals 3

    .line 509
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v1, "MbmsTempFileRootPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 511
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "mbms_temp_file_root"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 513
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 515
    :cond_0
    return-object v2
.end method

.method public listPendingDownloads()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 588
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_0

    .line 593
    :try_start_0
    iget v1, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->listPendingDownloads(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 596
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 597
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 598
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 589
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)V
    .locals 6
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadProgressListener;

    .line 785
    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 786
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_7

    .line 790
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 791
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadProgressListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    .local v1, "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v1, :cond_6

    .line 797
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v3

    .line 798
    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 804
    if-eqz v3, :cond_2

    .line 805
    const/16 v4, 0x192

    if-eq v3, v4, :cond_1

    .line 808
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 819
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadProgressListener;

    .line 820
    .local v2, "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v2, :cond_0

    .line 821
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    .line 809
    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    :cond_0
    return-void

    .line 806
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 816
    .end local v3    # "result":I
    :cond_2
    nop

    .line 818
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 819
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/InternalDownloadProgressListener;

    .line 820
    .local v0, "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v0, :cond_3

    .line 821
    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    .line 823
    .end local v0    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    :cond_3
    nop

    .line 824
    return-void

    .line 800
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .restart local v3    # "result":I
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 801
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 811
    .end local v3    # "result":I
    :catch_0
    move-exception v3

    .line 812
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 813
    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 814
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 818
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 819
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadProgressListener;

    .line 820
    .restart local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v2, :cond_5

    .line 821
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    .line 815
    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    :cond_5
    return-void

    .line 793
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_6
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provided listener was never registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 787
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 818
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 819
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadProgressListener;

    .line 820
    .local v1, "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v1, :cond_8

    .line 821
    invoke-virtual {v1}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    .line 823
    .end local v1    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    :cond_8
    throw v0
.end method

.method public removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)V
    .locals 6
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadStatusListener;

    .line 673
    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 674
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_7

    .line 678
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 679
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    .local v1, "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v1, :cond_6

    .line 685
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v3

    .line 686
    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 692
    if-eqz v3, :cond_2

    .line 693
    const/16 v4, 0x192

    if-eq v3, v4, :cond_1

    .line 696
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 707
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 708
    .local v2, "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v2, :cond_0

    .line 709
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    .line 697
    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    :cond_0
    return-void

    .line 694
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 704
    .end local v3    # "result":I
    :cond_2
    nop

    .line 706
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 707
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 708
    .local v0, "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v0, :cond_3

    .line 709
    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    .line 711
    .end local v0    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    :cond_3
    nop

    .line 712
    return-void

    .line 688
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .restart local v3    # "result":I
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 689
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 699
    .end local v3    # "result":I
    :catch_0
    move-exception v3

    .line 700
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 701
    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 702
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 706
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 707
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 708
    .restart local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v2, :cond_5

    .line 709
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    .line 703
    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    :cond_5
    return-void

    .line 681
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_6
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provided listener was never registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 675
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 706
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 707
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 708
    .local v1, "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v1, :cond_8

    .line 709
    invoke-virtual {v1}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    .line 711
    .end local v1    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    :cond_8
    throw v0
.end method

.method public requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)V
    .locals 5
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;

    .line 876
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 877
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_4

    .line 882
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I

    move-result v2

    .line 883
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 888
    if-eqz v2, :cond_2

    .line 889
    const/16 v3, 0x192

    if-eq v2, v3, :cond_1

    .line 892
    const/16 v3, 0x193

    if-eq v2, v3, :cond_0

    .line 895
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .end local v2    # "result":I
    goto :goto_0

    .line 893
    .restart local v2    # "result":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown file."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 890
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 901
    .end local v2    # "result":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 885
    .restart local v2    # "result":I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 886
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    .end local v2    # "result":I
    :catch_0
    move-exception v2

    .line 898
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 899
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 900
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 902
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 878
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestUpdateFileServices(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 393
    .local p1, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 394
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_2

    .line 398
    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v2, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v2

    .line 399
    .local v2, "returnCode":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 404
    if-eqz v2, :cond_0

    .line 405
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 412
    .end local v2    # "returnCode":I
    :cond_0
    goto :goto_0

    .line 401
    .restart local v2    # "returnCode":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 402
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v2    # "returnCode":I
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 410
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 411
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 413
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 395
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 5
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;

    .line 925
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 926
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_3

    .line 931
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    .line 932
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 937
    if-eqz v2, :cond_1

    .line 938
    const/16 v3, 0x192

    if-eq v2, v3, :cond_0

    .line 941
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .end local v2    # "result":I
    goto :goto_0

    .line 939
    .restart local v2    # "result":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 947
    .end local v2    # "result":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 934
    .restart local v2    # "result":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 935
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v2    # "result":I
    :catch_0
    move-exception v2

    .line 944
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 945
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 946
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 948
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 927
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTempFileRootDirectory(Ljava/io/File;)V
    .locals 7
    .param p1, "tempFileRootDirectory"    # Ljava/io/File;

    .line 441
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 442
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_2

    .line 446
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->validateTempFileRootSanity(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 449
    nop

    .line 452
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 455
    .local v1, "filePath":Ljava/lang/String;
    nop

    .line 454
    nop

    .line 458
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    iget v4, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v4, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v4

    .line 459
    .local v4, "result":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 464
    if-eqz v4, :cond_0

    .line 465
    invoke-direct {p0, v4, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 466
    return-void

    .line 473
    .end local v4    # "result":I
    :cond_0
    nop

    .line 475
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v4, "MbmsTempFileRootPrefs"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 477
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "mbms_temp_file_root"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    return-void

    .line 461
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "result":I
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 462
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Middleware must not return an unknown error code"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 468
    .end local v4    # "result":I
    :catch_0
    move-exception v4

    .line 469
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 470
    sget-object v5, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 471
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 472
    return-void

    .line 453
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 454
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to canonicalize the provided path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 448
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Got IOException checking directory sanity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
