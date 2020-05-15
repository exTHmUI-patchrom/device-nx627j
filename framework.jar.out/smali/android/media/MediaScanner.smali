.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$FileEntry;,
        Landroid/media/MediaScanner$ScanFileShot;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final LAST_INTERNAL_SCAN_FINGERPRINT:Ljava/lang/String; = "lastScanFingerprint"

.field public static final MEDIA_SCAN_OK:I = 0x0

.field public static final MEDIA_SCAN_SKIPPED:I = 0x1

.field public static final MEDIA_SCAN_STOP_IMMEDIDTELY:I = 0x3

.field public static final MSG_MONITOR_DOSCAN_DONE:I = 0x1f5

.field public static final MSG_MONITOR_DOSCAN_START:I = 0x1f4

.field public static final MSG_MONITOR_IDLE:I = 0x1f6

.field public static final MSG_MONITOR_PRINT:I = 0x1f7

.field public static final MSG_MONITOR_SCAN_BEGINFILE_DONE:I = 0x1f9

.field public static final MSG_MONITOR_SCAN_BEGINFILE_START:I = 0x1f8

.field public static final MSG_MONITOR_SCAN_ENDFILE_DONE:I = 0x1ff

.field public static final MSG_MONITOR_SCAN_ENDFILE_START:I = 0x1fe

.field public static final MSG_MONITOR_SCAN_PROCESSFILE_DONE:I = 0x1fb

.field public static final MSG_MONITOR_SCAN_PROCESSFILE_START:I = 0x1fa

.field public static final MSG_MONITOR_SCAN_PROCESSIMG_DONE:I = 0x1fd

.field public static final MSG_MONITOR_SCAN_PROCESSIMG_START:I = 0x1fc

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final PRODUCT_SOUNDS_DIR:Ljava/lang/String; = "/product/media/audio"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field public static final SCANNED_BUILD_PREFS_NAME:Ljava/lang/String; = "MediaScanBuild"

.field private static final SYSTEM_SOUNDS_DIR:Ljava/lang/String; = "/system/media/audio"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mIgnoreNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastInternalScanFingerprint:Ljava/lang/String;

.field private static sLogLevel:I


# instance fields
.field public isAutoScan:Z

.field private final mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDbRecords:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lnubia/media/MediaDbItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultMmsNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtone2Filename:Ljava/lang/String;

.field private mDefaultRingtone3Filename:Ljava/lang/String;

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mFilesUri:Landroid/net/Uri;

.field private final mFilesUriNoNotify:Landroid/net/Uri;

.field private mFoundInHashmapCnt:I

.field private final mImagesUri:Landroid/net/Uri;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private mMonitorEnable:Z

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mNotFoundInHashmapCnt:I

.field private mNubiaMS:Lnubia/media/NubiaMediaScanner;

.field private mOriginalCount:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistsUri:Landroid/net/Uri;

.field private final mProcessGenres:Z

.field private final mProcessPlaylists:Z

.field private mScanStopImmediately:Z

.field private final mVideoUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 149

    .line 142
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 148
    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "format"

    const-string v3, "date_modified"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 155
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "playlist_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    sput v0, Landroid/media/MediaScanner;->sLogLevel:I

    .line 233
    const-string v1, "Blues"

    const-string v2, "Classic Rock"

    const-string v3, "Country"

    const-string v4, "Dance"

    const-string v5, "Disco"

    const-string v6, "Funk"

    const-string v7, "Grunge"

    const-string v8, "Hip-Hop"

    const-string v9, "Jazz"

    const-string v10, "Metal"

    const-string v11, "New Age"

    const-string v12, "Oldies"

    const-string v13, "Other"

    const-string v14, "Pop"

    const-string v15, "R&B"

    const-string v16, "Rap"

    const-string v17, "Reggae"

    const-string v18, "Rock"

    const-string v19, "Techno"

    const-string v20, "Industrial"

    const-string v21, "Alternative"

    const-string v22, "Ska"

    const-string v23, "Death Metal"

    const-string v24, "Pranks"

    const-string v25, "Soundtrack"

    const-string v26, "Euro-Techno"

    const-string v27, "Ambient"

    const-string v28, "Trip-Hop"

    const-string v29, "Vocal"

    const-string v30, "Jazz+Funk"

    const-string v31, "Fusion"

    const-string v32, "Trance"

    const-string v33, "Classical"

    const-string v34, "Instrumental"

    const-string v35, "Acid"

    const-string v36, "House"

    const-string v37, "Game"

    const-string v38, "Sound Clip"

    const-string v39, "Gospel"

    const-string v40, "Noise"

    const-string v41, "AlternRock"

    const-string v42, "Bass"

    const-string v43, "Soul"

    const-string v44, "Punk"

    const-string v45, "Space"

    const-string v46, "Meditative"

    const-string v47, "Instrumental Pop"

    const-string v48, "Instrumental Rock"

    const-string v49, "Ethnic"

    const-string v50, "Gothic"

    const-string v51, "Darkwave"

    const-string v52, "Techno-Industrial"

    const-string v53, "Electronic"

    const-string v54, "Pop-Folk"

    const-string v55, "Eurodance"

    const-string v56, "Dream"

    const-string v57, "Southern Rock"

    const-string v58, "Comedy"

    const-string v59, "Cult"

    const-string v60, "Gangsta"

    const-string v61, "Top 40"

    const-string v62, "Christian Rap"

    const-string v63, "Pop/Funk"

    const-string v64, "Jungle"

    const-string v65, "Native American"

    const-string v66, "Cabaret"

    const-string v67, "New Wave"

    const-string v68, "Psychadelic"

    const-string v69, "Rave"

    const-string v70, "Showtunes"

    const-string v71, "Trailer"

    const-string v72, "Lo-Fi"

    const-string v73, "Tribal"

    const-string v74, "Acid Punk"

    const-string v75, "Acid Jazz"

    const-string v76, "Polka"

    const-string v77, "Retro"

    const-string v78, "Musical"

    const-string v79, "Rock & Roll"

    const-string v80, "Hard Rock"

    const-string v81, "Folk"

    const-string v82, "Folk-Rock"

    const-string v83, "National Folk"

    const-string v84, "Swing"

    const-string v85, "Fast Fusion"

    const-string v86, "Bebob"

    const-string v87, "Latin"

    const-string v88, "Revival"

    const-string v89, "Celtic"

    const-string v90, "Bluegrass"

    const-string v91, "Avantgarde"

    const-string v92, "Gothic Rock"

    const-string v93, "Progressive Rock"

    const-string v94, "Psychedelic Rock"

    const-string v95, "Symphonic Rock"

    const-string v96, "Slow Rock"

    const-string v97, "Big Band"

    const-string v98, "Chorus"

    const-string v99, "Easy Listening"

    const-string v100, "Acoustic"

    const-string v101, "Humour"

    const-string v102, "Speech"

    const-string v103, "Chanson"

    const-string v104, "Opera"

    const-string v105, "Chamber Music"

    const-string v106, "Sonata"

    const-string v107, "Symphony"

    const-string v108, "Booty Bass"

    const-string v109, "Primus"

    const-string v110, "Porn Groove"

    const-string v111, "Satire"

    const-string v112, "Slow Jam"

    const-string v113, "Club"

    const-string v114, "Tango"

    const-string v115, "Samba"

    const-string v116, "Folklore"

    const-string v117, "Ballad"

    const-string v118, "Power Ballad"

    const-string v119, "Rhythmic Soul"

    const-string v120, "Freestyle"

    const-string v121, "Duet"

    const-string v122, "Punk Rock"

    const-string v123, "Drum Solo"

    const-string v124, "A capella"

    const-string v125, "Euro-House"

    const-string v126, "Dance Hall"

    const-string v127, "Goa"

    const-string v128, "Drum & Bass"

    const-string v129, "Club-House"

    const-string v130, "Hardcore"

    const-string v131, "Terror"

    const-string v132, "Indie"

    const-string v133, "Britpop"

    const-string v135, "Polsk Punk"

    const-string v136, "Beat"

    const-string v137, "Christian Gangsta"

    const-string v138, "Heavy Metal"

    const-string v139, "Black Metal"

    const-string v140, "Crossover"

    const-string v141, "Contemporary Christian"

    const-string v142, "Christian Rock"

    const-string v143, "Merengue"

    const-string v144, "Salsa"

    const-string v145, "Thrash Metal"

    const-string v146, "Anime"

    const-string v147, "JPop"

    const-string v148, "Synthpop"

    const/16 v134, 0x0

    filled-new-array/range {v1 .. v148}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 1843
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 1844
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    .line 1845
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mIgnoreNoMediaPaths:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mMonitorEnable:Z

    .line 217
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaScanner;->mFoundInHashmapCnt:I

    .line 218
    iput v1, p0, Landroid/media/MediaScanner;->mNotFoundInHashmapCnt:I

    .line 219
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mScanStopImmediately:Z

    .line 226
    iput-boolean v1, p0, Landroid/media/MediaScanner;->isAutoScan:Z

    .line 403
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 404
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 441
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 475
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 542
    new-instance v3, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v3, p0}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    iput-object v3, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 478
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 479
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 481
    iput-object p2, p0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    .line 483
    iget-object v3, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 484
    iget-object v3, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 486
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 488
    new-instance v3, Lnubia/media/NubiaMediaScanner;

    invoke-direct {v3, p1}, Lnubia/media/NubiaMediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/media/MediaScanner;->mNubiaMS:Lnubia/media/NubiaMediaScanner;

    .line 490
    iget-object v3, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "media"

    .line 491
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 493
    sget-object v3, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 494
    iget-object v3, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string v4, "MediaScanBuild"

    .line 495
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 496
    .local v3, "scanSettings":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "lastScanFingerprint"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 497
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    .line 500
    .end local v3    # "scanSettings":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 501
    invoke-static {p2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 502
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 503
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 504
    iget-object v3, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "nonotify"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 506
    const-string v3, "internal"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 508
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 509
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 510
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    goto :goto_0

    .line 512
    :cond_1
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 513
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 514
    iput-object v2, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 517
    :goto_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 518
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "country":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 522
    if-eqz v2, :cond_2

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_1

    .line 525
    :cond_2
    invoke-direct {p0, v1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 530
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "country":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 140
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .line 140
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .line 140
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 140
    invoke-static {p0}, Landroid/media/MediaScanner;->isSystemSoundWithMetadata(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/MediaScannerClient;

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .line 140
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Lnubia/media/NubiaMediaScanner;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mNubiaMS:Lnubia/media/NubiaMediaScanner;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Landroid/drm/DrmManagerClient;

    .line 140
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mMonitorEnable:Z

    return v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mScanStopImmediately:Z

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 140
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$802(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .line 140
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .line 140
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .line 2156
    new-instance v0, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$1;)V

    .line 2158
    .local v0, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2159
    .local v1, "entryLength":I
    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2162
    :cond_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    return-void

    .line 2163
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2167
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2168
    .local v2, "ch1":C
    const/16 v4, 0x2f

    const/4 v5, 0x1

    if-eq v2, v4, :cond_4

    .line 2169
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v3, v5

    .line 2171
    .local v3, "fullPath":Z
    :goto_2
    if-nez v3, :cond_5

    .line 2172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2173
    :cond_5
    iput-object p1, v0, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2176
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    return-void
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 2
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    .line 1849
    const-class v0, Landroid/media/MediaScanner;

    monitor-enter v0

    .line 1850
    if-eqz p0, :cond_0

    .line 1851
    :try_start_0
    sget-object v1, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1856
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1853
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1854
    sget-object v1, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1856
    :cond_1
    monitor-exit v0

    .line 1857
    return-void

    .line 1856
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getIgnoreNoMediaPaths()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1861
    sget-object v0, Landroid/media/MediaScanner;->mIgnoreNoMediaPaths:Ljava/util/HashMap;

    return-object v0
.end method

.method private isDrmEnabled()Z
    .locals 2

    .line 545
    const-string v0, "drm.service.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isNoMediaDir(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 1961
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1962
    .local v0, "lastSlash":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1963
    .local v1, "parent":Ljava/lang/String;
    const-string v3, "/.nomedia/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1964
    sget v2, Landroid/media/MediaScanner;->sLogLevel:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNoMediaDir path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " parent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is nomedia dir."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1967
    :cond_1
    return v2
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 13
    .param p0, "path"    # Ljava/lang/String;

    .line 1971
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1972
    .local v0, "file":Ljava/io/File;
    sget v1, Landroid/media/MediaScanner;->sLogLevel:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const-string v1, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNoMediaFile path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isDirectory():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    .line 1978
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1979
    .local v1, "lastSlash":I
    if-ltz v1, :cond_a

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 1981
    add-int/lit8 v4, v1, 0x1

    const-string v5, "._"

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v5, v3, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1982
    sget v3, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v3, v2, :cond_2

    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNoMediaFile path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ._  regionMatches true."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_2
    return v5

    .line 1989
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v8, v4, -0x4

    const-string v9, ".jpg"

    const/4 v10, 0x0

    const/4 v11, 0x4

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1990
    const-string v4, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNoMediaFile path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is .jpg file."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/4 v8, 0x1

    add-int/lit8 v9, v1, 0x1

    const-string v10, "AlbumArt_{"

    const/4 v11, 0x0

    const/16 v12, 0xa

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v7, 0x1

    add-int/lit8 v8, v1, 0x1

    const-string v9, "AlbumArt."

    const/4 v10, 0x0

    const/16 v11, 0x9

    .line 1992
    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1996
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v5

    .line 1997
    .local v4, "length":I
    const/16 v6, 0x11

    if-ne v4, v6, :cond_5

    const/4 v8, 0x1

    add-int/lit8 v9, v1, 0x1

    const-string v10, "AlbumArtSmall"

    const/4 v11, 0x0

    const/16 v12, 0xd

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    const/16 v6, 0xa

    if-ne v4, v6, :cond_a

    const/4 v8, 0x1

    add-int/lit8 v9, v1, 0x1

    const-string v10, "Folder"

    const/4 v11, 0x0

    const/4 v12, 0x6

    .line 2000
    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2001
    :cond_6
    sget v3, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v3, v2, :cond_7

    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNoMediaFile path:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Folder appear."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_7
    return v5

    .line 1993
    .end local v4    # "length":I
    :cond_8
    :goto_0
    sget v3, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v3, v2, :cond_9

    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNoMediaFile path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has AlbumArt_ / AlbumArt."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_9
    return v5

    .line 2006
    :cond_a
    sget v4, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v4, v2, :cond_b

    const-string v2, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isNoMediaFile path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_b
    return v3
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 15
    .param p0, "path"    # Ljava/lang/String;

    .line 1864
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const-string v0, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNoMediaPath path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 1866
    return v0

    .line 1869
    :cond_1
    const-string v2, "/."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    .line 1870
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v0, v1, :cond_2

    const-string v0, "MediaScanner"

    const-string/jumbo v1, "isNoMediaPath path have /. !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_2
    return v3

    .line 1874
    :cond_3
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1875
    .local v4, "firstSlash":I
    if-gtz v4, :cond_5

    .line 1876
    sget v2, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v2, v1, :cond_4

    const-string v1, "MediaScanner"

    const-string/jumbo v2, "isNoMediaPath path not start with first slash  / !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_4
    return v0

    .line 1879
    :cond_5
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1880
    .local v5, "parent":Ljava/lang/String;
    sget v6, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v6, v1, :cond_6

    const-string v6, "MediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isNoMediaPath parent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    :cond_6
    const-class v6, Landroid/media/MediaScanner;

    monitor-enter v6

    .line 1883
    :try_start_0
    sget v7, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v7, v1, :cond_c

    .line 1884
    sget-object v7, Landroid/media/MediaScanner;->mIgnoreNoMediaPaths:Ljava/util/HashMap;

    if-eqz v7, :cond_8

    .line 1885
    const-string v7, "MediaScanner"

    const-string v8, "\n-------dump mIgnoreNoMediaPaths----- "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const/4 v7, 0x0

    .line 1887
    .local v7, "i":I
    sget-object v8, Landroid/media/MediaScanner;->mIgnoreNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1888
    .local v9, "key":Ljava/lang/String;
    sget-object v10, Landroid/media/MediaScanner;->mIgnoreNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1889
    .local v10, "value":Ljava/lang/String;
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "key"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "   value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    add-int/lit8 v7, v7, 0x1

    .line 1891
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1892
    :cond_7
    const-string v8, "MediaScanner"

    const-string v9, "-------dump mIgnoreNoMediaPaths end----- \n"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    .end local v7    # "i":I
    :cond_8
    sget-object v7, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    if-eqz v7, :cond_a

    .line 1895
    const-string v7, "MediaScanner"

    const-string v8, "\n-------dump mNoMediaPaths----- "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const/4 v7, 0x0

    .line 1897
    .restart local v7    # "i":I
    sget-object v8, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1898
    .restart local v9    # "key":Ljava/lang/String;
    sget-object v10, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1899
    .restart local v10    # "value":Ljava/lang/String;
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "key"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "   value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    add-int/lit8 v7, v7, 0x1

    .line 1901
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1902
    :cond_9
    const-string v8, "MediaScanner"

    const-string v9, "-------dump mNoMediaPaths end----- \n"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    .end local v7    # "i":I
    :cond_a
    sget-object v7, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    if-eqz v7, :cond_c

    .line 1905
    const-string v7, "MediaScanner"

    const-string v8, "\n-------dump mMediaPaths----- "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const/4 v7, 0x0

    .line 1907
    .restart local v7    # "i":I
    sget-object v8, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1908
    .restart local v9    # "key":Ljava/lang/String;
    sget-object v10, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1909
    .restart local v10    # "value":Ljava/lang/String;
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "key"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "   value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    add-int/lit8 v7, v7, 0x1

    .line 1911
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_2

    .line 1912
    :cond_b
    const-string v8, "MediaScanner"

    const-string v9, "-------dump mMediaPaths end----- \n"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    .end local v7    # "i":I
    :cond_c
    sget-object v7, Landroid/media/MediaScanner;->mIgnoreNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1916
    sget v2, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v2, v1, :cond_d

    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this is ignore nomedia path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_d
    monitor-exit v6

    return v0

    .line 1919
    :cond_e
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaDir(Ljava/lang/String;)Z

    move-result v7

    .line 1920
    .local v7, "isnomediadir":Z
    if-eqz v7, :cond_10

    .line 1921
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v0, v1, :cond_f

    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contains nomedia dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_f
    monitor-exit v6

    return v3

    .line 1924
    :cond_10
    sget-object v8, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1925
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v0, v1, :cond_11

    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNoMediaPath mNoMediaPaths have parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_11
    monitor-exit v6

    return v3

    .line 1927
    :cond_12
    sget-object v8, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 1928
    sget v8, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v8, v1, :cond_13

    const-string v8, "MediaScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isNoMediaPath mNoMediaPaths no contains parent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_13
    move v8, v3

    .line 1932
    .local v8, "offset":I
    :goto_3
    if-ltz v8, :cond_18

    .line 1933
    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 1934
    .local v9, "slashIndex":I
    if-le v9, v8, :cond_17

    .line 1935
    add-int/lit8 v9, v9, 0x1

    .line 1936
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {p0, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1937
    .local v10, "parent_dir":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/.nomedia"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1938
    .local v11, "file":Ljava/io/File;
    sget v12, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v12, v1, :cond_14

    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "isNoMediaPath path:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " nomediafile :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " exists:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_14
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1940
    sget-object v12, Landroid/media/MediaScanner;->mIgnoreNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    .line 1941
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v0, v1, :cond_15

    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found nomedia file dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_15
    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    monitor-exit v6

    return v3

    .line 1946
    :cond_16
    sget v12, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v12, v1, :cond_17

    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "this is ignore nomedia dir:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    .end local v10    # "parent_dir":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    :cond_17
    move v8, v9

    .line 1952
    .end local v9    # "slashIndex":I
    goto/16 :goto_3

    .line 1953
    :cond_18
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    .end local v7    # "isnomediadir":Z
    .end local v8    # "offset":I
    :cond_19
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1957
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1955
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static isSystemSoundWithMetadata(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 1541
    const-string v0, "/system/media/audio/alarms/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/ringtones/"

    .line 1542
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/notifications/"

    .line 1543
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/media/audio/alarms/"

    .line 1544
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/media/audio/ringtones/"

    .line 1545
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/media/audio/notifications/"

    .line 1546
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1552
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1547
    :cond_1
    :goto_0
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 1548
    const-string v0, "MediaScanner"

    const-string/jumbo v2, "isSystemSoundWithMetadata, is SystemSound metadata "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_2
    return v1
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 6
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .line 2132
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2133
    .local v0, "len":I
    const/4 v1, 0x1

    .line 2134
    .local v1, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2135
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2136
    .local v3, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    .line 2137
    goto :goto_1

    .line 2139
    :cond_0
    const/4 v1, 0x0

    .line 2140
    iget-object v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2141
    iput-wide p1, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2142
    iput v5, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    .line 2143
    goto :goto_1

    .line 2146
    :cond_1
    iget-object v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v4}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2147
    .local v4, "matchLength":I
    iget v5, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_2

    .line 2148
    iput-wide p1, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2149
    iput v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    .line 2134
    .end local v3    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2152
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    move-object/from16 v6, p1

    .line 2105
    move-object/from16 v7, p2

    const/4 v0, 0x0

    .line 2106
    .local v0, "result":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2107
    .local v1, "end1":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move v9, v0

    move v8, v1

    .end local v0    # "result":I
    .end local v1    # "end1":I
    .local v2, "end2":I
    .local v8, "end1":I
    .local v9, "result":I
    :goto_0
    move v10, v2

    .line 2109
    .end local v2    # "end2":I
    .local v10, "end2":I
    if-lez v8, :cond_5

    if-lez v10, :cond_5

    .line 2110
    add-int/lit8 v0, v8, -0x1

    const/16 v1, 0x2f

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2111
    .local v11, "slash1":I
    add-int/lit8 v0, v10, -0x1

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2112
    .local v12, "slash2":I
    add-int/lit8 v0, v8, -0x1

    const/16 v1, 0x5c

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v13

    .line 2113
    .local v13, "backSlash1":I
    add-int/lit8 v0, v10, -0x1

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v14

    .line 2114
    .local v14, "backSlash2":I
    if-le v11, v13, :cond_0

    move v0, v11

    goto :goto_1

    :cond_0
    move v0, v13

    .line 2115
    .local v0, "start1":I
    :goto_1
    if-le v12, v14, :cond_1

    move v1, v12

    goto :goto_2

    :cond_1
    move v1, v14

    .line 2116
    .local v1, "start2":I
    :goto_2
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 2117
    .end local v0    # "start1":I
    .local v15, "start1":I
    :goto_3
    move v15, v0

    goto :goto_4

    .line 2116
    .end local v15    # "start1":I
    .restart local v0    # "start1":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2117
    .end local v0    # "start1":I
    .restart local v15    # "start1":I
    :goto_4
    if-gez v1, :cond_3

    const/4 v0, 0x0

    .line 2118
    .end local v1    # "start2":I
    .local v0, "start2":I
    move/from16 v16, v0

    goto :goto_5

    .line 2117
    .end local v0    # "start2":I
    .restart local v1    # "start2":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 2118
    move/from16 v16, v1

    .end local v1    # "start2":I
    .local v16, "start2":I
    :goto_5
    sub-int v5, v8, v15

    .line 2119
    .local v5, "length":I
    sub-int v0, v10, v16

    if-eq v0, v5, :cond_4

    .end local v5    # "length":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    .end local v13    # "backSlash1":I
    .end local v14    # "backSlash2":I
    .end local v15    # "start1":I
    .end local v16    # "start2":I
    goto :goto_6

    .line 2120
    .restart local v5    # "length":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    .restart local v13    # "backSlash1":I
    .restart local v14    # "backSlash2":I
    .restart local v15    # "start1":I
    .restart local v16    # "start2":I
    :cond_4
    const/4 v1, 0x1

    move-object v0, v6

    move v2, v15

    move-object v3, v7

    move/from16 v4, v16

    move/from16 v17, v5

    .end local v5    # "length":I
    .local v17, "length":I
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2121
    add-int/lit8 v9, v9, 0x1

    .line 2122
    add-int/lit8 v8, v15, -0x1

    .line 2123
    add-int/lit8 v2, v16, -0x1

    .line 2125
    .end local v10    # "end2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    .end local v13    # "backSlash1":I
    .end local v14    # "backSlash2":I
    .end local v15    # "start1":I
    .end local v16    # "start2":I
    .end local v17    # "length":I
    .restart local v2    # "end2":I
    goto :goto_0

    .line 2127
    .end local v2    # "end2":I
    .restart local v10    # "end2":I
    :cond_5
    :goto_6
    return v9
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 1
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1718
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1719
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1723
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1724
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 25
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1570
    const/4 v3, 0x0

    .line 1571
    .local v3, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1572
    .local v0, "where":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1574
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1576
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    .line 1578
    const-string v0, "_id>? AND _data=?"

    .line 1580
    new-array v8, v6, [Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v8, v7

    aput-object p1, v8, v5

    move-object v4, v8

    .line 1586
    .end local v0    # "where":Ljava/lang/String;
    .local v4, "where":Ljava/lang/String;
    .local v15, "selectionArgs":[Ljava/lang/String;
    :goto_0
    move-object v15, v4

    move-object v4, v0

    goto :goto_1

    .line 1582
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    .restart local v0    # "where":Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    :cond_0
    const-string v0, "_id>?"

    .line 1583
    const-string v8, ""

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    goto :goto_0

    .line 1586
    .end local v0    # "where":Ljava/lang/String;
    .local v4, "where":Ljava/lang/String;
    .restart local v15    # "selectionArgs":[Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "ringtone"

    invoke-direct {v1, v0}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    .line 1587
    const-string/jumbo v0, "notification_sound"

    invoke-direct {v1, v0}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    .line 1588
    const-string v0, "alarm_alert"

    invoke-direct {v1, v0}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    .line 1594
    iget-object v0, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 1595
    .local v14, "builder":Landroid/net/Uri$Builder;
    const-string v0, "deletedata"

    const-string v8, "false"

    invoke-virtual {v14, v0, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1596
    new-instance v0, Landroid/media/MediaScanner$MediaBulkDeleter;

    iget-object v8, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    move-object v13, v0

    .line 1600
    .local v13, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_9

    .line 1605
    const-wide/high16 v8, -0x8000000000000000L

    .line 1606
    .local v8, "lastId":J
    :try_start_0
    iget-object v0, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v10, "limit"

    const-string v11, "1000"

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-wide v11, v8

    move-object v9, v0

    .line 1609
    .end local v8    # "lastId":J
    .local v9, "limitUri":Landroid/net/Uri;
    .local v11, "lastId":J
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v15, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 1610
    if-eqz v3, :cond_1

    .line 1611
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1612
    const/4 v0, 0x0

    .line 1614
    .end local v3    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    move-object v3, v0

    goto :goto_3

    .line 1664
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v11    # "lastId":J
    .restart local v3    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object/from16 v24, v4

    move-object v7, v13

    move-object/from16 v20, v14

    goto/16 :goto_9

    .line 1614
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v11    # "lastId":J
    :cond_1
    :goto_3
    :try_start_2
    iget-object v8, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v10, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/16 v16, 0x0

    move-wide/from16 v17, v11

    move-object v11, v4

    .line 1614
    .end local v11    # "lastId":J
    .local v17, "lastId":J
    move-object v12, v15

    move-object/from16 v19, v13

    move-object v13, v0

    .line 1614
    .end local v13    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .local v19, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    move-object/from16 v20, v14

    move-object/from16 v14, v16

    .line 1614
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .local v20, "builder":Landroid/net/Uri$Builder;
    :try_start_3
    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v3, v0

    .line 1616
    if-nez v3, :cond_2

    .line 1617
    goto :goto_4

    .line 1620
    :cond_2
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v8, v0

    .line 1622
    .local v8, "num":I
    if-nez v8, :cond_3

    .line 1623
    nop

    .line 1664
    .end local v8    # "num":I
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v17    # "lastId":J
    :goto_4
    move-object/from16 v24, v4

    move-object/from16 v7, v19

    goto/16 :goto_a

    .line 1625
    .restart local v8    # "num":I
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v17    # "lastId":J
    :cond_3
    move-wide/from16 v11, v17

    .line 1625
    .end local v17    # "lastId":J
    .restart local v11    # "lastId":J
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1626
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1627
    .local v13, "rowId":J
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1628
    .local v10, "path":Ljava/lang/String;
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v21, v0

    .line 1629
    .local v21, "format":I
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1630
    .local v16, "lastModified":J
    move-wide v11, v13

    .line 1635
    if-eqz v10, :cond_6

    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v0, :cond_6

    .line 1636
    move/from16 v18, v7

    .line 1638
    .local v18, "exists":Z
    :try_start_5
    sget v0, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v10, v0}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v0
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v18, v0

    .line 1640
    goto :goto_6

    .line 1664
    .end local v8    # "num":I
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "lastId":J
    .end local v13    # "rowId":J
    .end local v16    # "lastModified":J
    .end local v18    # "exists":Z
    .end local v21    # "format":I
    :catchall_1
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    goto/16 :goto_9

    .line 1639
    .restart local v8    # "num":I
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v11    # "lastId":J
    .restart local v13    # "rowId":J
    .restart local v16    # "lastModified":J
    .restart local v18    # "exists":Z
    .restart local v21    # "format":I
    :catch_0
    move-exception v0

    .line 1641
    :goto_6
    if-nez v18, :cond_6

    move/from16 v5, v21

    :try_start_6
    invoke-static {v5}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v0

    .line 1641
    .end local v21    # "format":I
    .local v5, "format":I
    if-nez v0, :cond_6

    .line 1646
    invoke-static {v10}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 1647
    .local v0, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_4

    move v6, v7

    goto :goto_7

    :cond_4
    iget v6, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 1649
    .local v6, "fileType":I
    :goto_7
    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v21, :cond_6

    .line 1650
    move-object/from16 v7, v19

    :try_start_7
    invoke-virtual {v7, v13, v14}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1651
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .local v7, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    move-object/from16 v22, v0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1651
    .end local v0    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .local v22, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/.nomedia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1652
    invoke-virtual {v7}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1653
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1654
    .local v0, "parent":Ljava/lang/String;
    iget-object v2, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v23, v3

    :try_start_8
    const-string/jumbo v3, "unhide"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1654
    .end local v3    # "c":Landroid/database/Cursor;
    .local v23, "c":Landroid/database/Cursor;
    move-object/from16 v24, v4

    const/4 v4, 0x0

    .line 1654
    .end local v4    # "where":Ljava/lang/String;
    .local v24, "where":Ljava/lang/String;
    :try_start_9
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1654
    .end local v0    # "parent":Ljava/lang/String;
    .end local v5    # "format":I
    .end local v6    # "fileType":I
    .end local v10    # "path":Ljava/lang/String;
    .end local v13    # "rowId":J
    .end local v16    # "lastModified":J
    .end local v18    # "exists":Z
    .end local v22    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    goto :goto_8

    .line 1664
    .end local v8    # "num":I
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v11    # "lastId":J
    :catchall_2
    move-exception v0

    move-object/from16 v3, v23

    goto :goto_9

    .line 1664
    .end local v24    # "where":Ljava/lang/String;
    .restart local v4    # "where":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v3, v23

    .line 1664
    .end local v4    # "where":Ljava/lang/String;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_9

    .line 1659
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v8    # "num":I
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v11    # "lastId":J
    :cond_5
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .line 1659
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_8

    .line 1664
    .end local v8    # "num":I
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v11    # "lastId":J
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .line 1664
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_9

    .line 1659
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v8    # "num":I
    .restart local v9    # "limitUri":Landroid/net/Uri;
    .restart local v11    # "lastId":J
    .restart local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :cond_6
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    .line 1625
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    :goto_8
    move-object/from16 v19, v7

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1660
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v8    # "num":I
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :cond_7
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    .line 1606
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    move-object v13, v7

    move-object/from16 v14, v20

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1664
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v9    # "limitUri":Landroid/net/Uri;
    .end local v11    # "lastId":J
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :catchall_5
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    .line 1664
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "where":Ljava/lang/String;
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_9

    .line 1664
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :catchall_6
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v7, v19

    .line 1664
    .end local v4    # "where":Ljava/lang/String;
    .end local v19    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v24    # "where":Ljava/lang/String;
    goto :goto_9

    .line 1664
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v20    # "builder":Landroid/net/Uri$Builder;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v4    # "where":Ljava/lang/String;
    .local v13, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v14    # "builder":Landroid/net/Uri$Builder;
    :catchall_7
    move-exception v0

    move-object/from16 v24, v4

    move-object v7, v13

    move-object/from16 v20, v14

    .line 1664
    .end local v4    # "where":Ljava/lang/String;
    .end local v13    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v20    # "builder":Landroid/net/Uri$Builder;
    .restart local v24    # "where":Ljava/lang/String;
    :goto_9
    if-eqz v3, :cond_8

    .line 1665
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1667
    :cond_8
    invoke-virtual {v7}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v0

    .line 1664
    .end local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v20    # "builder":Landroid/net/Uri$Builder;
    .end local v24    # "where":Ljava/lang/String;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v13    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v14    # "builder":Landroid/net/Uri$Builder;
    :cond_9
    move-object/from16 v24, v4

    move-object v7, v13

    move-object/from16 v20, v14

    .line 1664
    .end local v4    # "where":Ljava/lang/String;
    .end local v13    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .restart local v7    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v20    # "builder":Landroid/net/Uri$Builder;
    .restart local v24    # "where":Ljava/lang/String;
    :goto_a
    if-eqz v3, :cond_a

    .line 1665
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1667
    :cond_a
    invoke-virtual {v7}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1668
    nop

    .line 1671
    const/4 v2, 0x0

    iput v2, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1672
    iget-object v8, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v9, v1, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v10, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 1673
    .end local v3    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_b

    .line 1674
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1675
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1677
    :cond_b
    return-void
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 7
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .line 2180
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2181
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2182
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2183
    .local v2, "rowId":J
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2184
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2185
    goto :goto_1

    .line 2187
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "rowId":J
    :cond_0
    goto :goto_0

    .line 2189
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2190
    .local v0, "len":I
    const/4 v2, 0x0

    .line 2191
    .local v2, "index":I
    nop

    .line 2191
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 2192
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2193
    .local v3, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v4, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v4, :cond_2

    .line 2195
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2196
    const-string/jumbo v4, "play_order"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2197
    const-string v4, "audio_id"

    iget-wide v5, v3, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2198
    iget-object v4, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v4, p3, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    add-int/lit8 v2, v2, 0x1

    .line 2203
    goto :goto_3

    .line 2200
    :catch_0
    move-exception v4

    .line 2201
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "MediaScanner"

    const-string v6, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2202
    return-void

    .line 2191
    .end local v3    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2206
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2207
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .line 2211
    const/4 v0, 0x0

    .line 2213
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2214
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2215
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    .line 2217
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2218
    .local v2, "line":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2219
    :goto_0
    if-eqz v2, :cond_1

    .line 2221
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    .line 2222
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 2227
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2233
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 2234
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2235
    :catch_0
    move-exception v1

    .line 2236
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2238
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 2237
    :cond_3
    :goto_1
    goto :goto_2

    .line 2232
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2229
    :catch_1
    move-exception v1

    .line 2230
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2233
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 2234
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2239
    :goto_2
    return-void

    .line 2232
    :goto_3
    nop

    .line 2233
    if-eqz v0, :cond_4

    .line 2234
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 2235
    :catch_2
    move-exception v2

    .line 2236
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 2237
    :cond_4
    :goto_4
    throw v1
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 2339
    iget-object v8, v7, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 2340
    .local v8, "path":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    .line 2341
    .local v9, "values":Landroid/content/ContentValues;
    const/16 v0, 0x2f

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 2342
    .local v10, "lastSlash":I
    if-ltz v10, :cond_7

    .line 2344
    iget-wide v0, v7, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 2347
    .local v0, "rowId":J
    const-string/jumbo v2, "name"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2348
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 2349
    const-string/jumbo v3, "title"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2350
    if-nez v2, :cond_1

    .line 2352
    const/16 v3, 0x2e

    invoke-virtual {v8, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2353
    .local v3, "lastDot":I
    if-gez v3, :cond_0

    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2354
    :cond_0
    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v2, v4

    .line 2358
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "lastDot":I
    .local v11, "name":Ljava/lang/String;
    :cond_1
    move-object v11, v2

    const-string/jumbo v2, "name"

    invoke-virtual {v9, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    const-string v2, "date_modified"

    iget-wide v3, v7, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2361
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 2362
    const-string v2, "_data"

    invoke-virtual {v9, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    iget-object v2, v6, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, v6, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 2364
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2365
    const-string/jumbo v3, "members"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2375
    .end local v0    # "rowId":J
    .end local v2    # "uri":Landroid/net/Uri;
    .local v12, "membersUri":Landroid/net/Uri;
    .local v13, "rowId":J
    .local v15, "uri":Landroid/net/Uri;
    :goto_1
    move-wide v13, v0

    move-object v15, v2

    move-object v12, v3

    goto :goto_2

    .line 2367
    .end local v12    # "membersUri":Landroid/net/Uri;
    .end local v13    # "rowId":J
    .end local v15    # "uri":Landroid/net/Uri;
    .restart local v0    # "rowId":J
    :cond_2
    iget-object v2, v6, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2368
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v3, v6, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v9, v4, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2371
    const-string/jumbo v3, "members"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2372
    .local v3, "membersUri":Landroid/net/Uri;
    iget-object v5, v6, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v5, v3, v4, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2375
    .end local v0    # "rowId":J
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "membersUri":Landroid/net/Uri;
    .restart local v12    # "membersUri":Landroid/net/Uri;
    .restart local v13    # "rowId":J
    .restart local v15    # "uri":Landroid/net/Uri;
    :goto_2
    add-int/lit8 v0, v10, 0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 2376
    .local v16, "playListDirectory":Ljava/lang/String;
    invoke-static {v8}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v5

    .line 2377
    .local v5, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    iget v1, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    :goto_3
    move v4, v1

    .line 2379
    .local v4, "fileType":I
    const/16 v0, 0x29

    if-ne v4, v0, :cond_4

    .line 2380
    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v16

    move-object v3, v12

    move v7, v4

    move-object v4, v9

    .line 2380
    .end local v4    # "fileType":I
    .local v7, "fileType":I
    move-object/from16 v17, v5

    move-object/from16 v5, p2

    .line 2380
    .end local v5    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .local v17, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_4

    .line 2381
    .end local v7    # "fileType":I
    .end local v17    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v4    # "fileType":I
    .restart local v5    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_4
    move v7, v4

    move-object/from16 v17, v5

    .line 2381
    .end local v4    # "fileType":I
    .end local v5    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v7    # "fileType":I
    .restart local v17    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    const/16 v0, 0x2a

    if-ne v7, v0, :cond_5

    .line 2382
    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v16

    move-object v3, v12

    move-object v4, v9

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_4

    .line 2383
    :cond_5
    const/16 v0, 0x2b

    if-ne v7, v0, :cond_6

    .line 2384
    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v16

    move-object v3, v12

    move-object v4, v9

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2386
    :cond_6
    :goto_4
    return-void

    .line 2342
    .end local v7    # "fileType":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "membersUri":Landroid/net/Uri;
    .end local v13    # "rowId":J
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "playListDirectory":Ljava/lang/String;
    .end local v17    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processPlayLists()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2389
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2390
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v1, 0x0

    .line 2394
    .local v1, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "media_type=2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 2396
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2397
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$FileEntry;

    .line 2399
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v3, :cond_0

    .line 2400
    invoke-direct {p0, v2, v1}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2402
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_0
    goto :goto_0

    .line 2405
    :cond_1
    if-eqz v1, :cond_3

    .line 2406
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2405
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 2406
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 2403
    :catch_0
    move-exception v2

    .line 2405
    if-eqz v1, :cond_3

    goto :goto_1

    .line 2409
    :cond_3
    :goto_2
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .line 2243
    const/4 v0, 0x0

    .line 2245
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2246
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2247
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    .line 2249
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2250
    .local v2, "line":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2251
    :goto_0
    if-eqz v2, :cond_1

    .line 2253
    const-string v3, "File"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2254
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2255
    .local v3, "equals":I
    if-lez v3, :cond_0

    .line 2256
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    .end local v3    # "equals":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 2262
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2268
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 2269
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2270
    :catch_0
    move-exception v1

    .line 2271
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2273
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 2272
    :cond_3
    :goto_1
    goto :goto_2

    .line 2267
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2264
    :catch_1
    move-exception v1

    .line 2265
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2268
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 2269
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2274
    :goto_2
    return-void

    .line 2267
    :goto_3
    nop

    .line 2268
    if-eqz v0, :cond_4

    .line 2269
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 2270
    :catch_2
    move-exception v2

    .line 2271
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 2272
    :cond_4
    :goto_4
    throw v1
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .line 2312
    const/4 v0, 0x0

    .line 2314
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2315
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2316
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 2318
    iget-object v2, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2319
    const-string v2, "UTF-8"

    invoke-static {v2}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v2

    new-instance v3, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v3, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 2320
    invoke-virtual {v3}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    .line 2319
    invoke-static {v0, v2, v3}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2322
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2330
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    .line 2331
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2332
    :catch_0
    move-exception v1

    .line 2333
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2335
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 2334
    :cond_1
    :goto_0
    goto :goto_1

    .line 2329
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2326
    :catch_1
    move-exception v1

    .line 2327
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2330
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 2331
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2324
    :catch_2
    move-exception v1

    .line 2325
    .local v1, "e":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2330
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    if-eqz v0, :cond_1

    .line 2331
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 2336
    :goto_1
    return-void

    .line 2329
    :goto_2
    nop

    .line 2330
    if-eqz v0, :cond_2

    .line 2331
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 2332
    :catch_3
    move-exception v2

    .line 2333
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 2334
    :cond_2
    :goto_3
    throw v1
.end method

.method private releaseResources()V
    .locals 1

    .line 1728
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->close()V

    .line 1730
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1732
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .line 534
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 536
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 538
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 540
    return-void
.end method

.method private native setLocale(Ljava/lang/String;)V
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .line 561
    sput p0, Landroid/media/MediaScanner;->sLogLevel:I

    .line 562
    return-void
.end method

.method private settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "base"    # Ljava/lang/String;

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wasRingtoneAlreadySet(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1560
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1561
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1563
    .local v1, "indicatorName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    .line 1564
    :catch_0
    move-exception v3

    .line 1565
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v2
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2423
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 2424
    iget-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2425
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 2426
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2428
    :cond_0
    return-void
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2433
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2434
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2437
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaScanner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2439
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2440
    nop

    .line 2441
    return-void

    .line 2439
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method findRecordByHashMap(Ljava/lang/String;)Lnubia/media/MediaDbItem;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Landroid/media/MediaScanner;->mDbRecords:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 573
    const/4 v0, 0x0

    return-object v0

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mDbRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/media/MediaDbItem;

    return-object v0
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 18
    .param p1, "path"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 2073
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->findRecordByHashMap(Ljava/lang/String;)Lnubia/media/MediaDbItem;

    move-result-object v2

    .line 2074
    .local v2, "record":Lnubia/media/MediaDbItem;
    const/4 v0, 0x1

    if-eqz v2, :cond_0

    .line 2076
    iget v3, v1, Landroid/media/MediaScanner;->mFoundInHashmapCnt:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/media/MediaScanner;->mFoundInHashmapCnt:I

    .line 2077
    new-instance v0, Landroid/media/MediaScanner$FileEntry;

    iget-wide v5, v2, Lnubia/media/MediaDbItem;->_id:J

    iget-wide v8, v2, Lnubia/media/MediaDbItem;->date_modified:J

    iget v10, v2, Lnubia/media/MediaDbItem;->format:I

    move-object v4, v0

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    return-object v0

    .line 2079
    :cond_0
    iget v3, v1, Landroid/media/MediaScanner;->mNotFoundInHashmapCnt:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/media/MediaScanner;->mNotFoundInHashmapCnt:I

    .line 2082
    const/4 v3, 0x0

    move-object v4, v3

    .line 2084
    .local v4, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v8, "_data=?"

    .line 2085
    .local v8, "where":Ljava/lang/String;
    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v9, v0

    .line 2086
    .local v9, "selectionArgs":[Ljava/lang/String;
    iget-object v5, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v6, v1, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v7, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    move-object v4, v5

    .line 2088
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2089
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2090
    .local v11, "rowId":J
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2091
    .local v16, "format":I
    const/4 v0, 0x3

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2092
    .local v14, "lastModified":J
    new-instance v0, Landroid/media/MediaScanner$FileEntry;

    move-object v10, v0

    move-object/from16 v13, p1

    invoke-direct/range {v10 .. v16}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2096
    if-eqz v4, :cond_1

    .line 2097
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2092
    :cond_1
    return-object v0

    .line 2096
    .end local v11    # "rowId":J
    .end local v14    # "lastModified":J
    .end local v16    # "format":I
    :cond_2
    if-eqz v4, :cond_4

    .line 2097
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2096
    .end local v8    # "where":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_3

    .line 2097
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2094
    :catch_0
    move-exception v0

    .line 2096
    if-eqz v4, :cond_4

    goto :goto_0

    .line 2100
    :cond_4
    :goto_1
    return-object v3
.end method

.method public preloadDbRecords(Ljava/lang/String;J)V
    .locals 26
    .param p1, "scanPath"    # Ljava/lang/String;
    .param p2, "preloadLimit"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 578
    .local v3, "startTime":J
    const/4 v0, 0x0

    .line 579
    .local v0, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 580
    .local v5, "totalcount":I
    const/4 v6, 0x0

    .line 581
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 582
    .local v7, "selectionArgs":[Ljava/lang/String;
    const-wide/high16 v8, -0x8000000000000000L

    .line 584
    .local v8, "lastId":J
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v10, v1, Landroid/media/MediaScanner;->mDbRecords:Ljava/util/concurrent/ConcurrentHashMap;

    .line 587
    const-string v6, "_id>?"

    .line 588
    if-eqz v2, :cond_0

    .line 589
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " AND _data LIKE \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "%\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 591
    :cond_0
    const-string v10, ""

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 592
    const/4 v10, 0x0

    .line 593
    .local v10, "jumpOut":Z
    iget-object v11, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    const-string/jumbo v12, "limit"

    const-string v13, "4000"

    invoke-virtual {v11, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    .line 594
    .local v15, "limitUri":Landroid/net/Uri;
    iget-object v11, v1, Landroid/media/MediaScanner;->mDbRecords:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v11, :cond_1

    .line 595
    return-void

    .line 601
    :cond_1
    move v14, v5

    move/from16 v17, v10

    move-object v5, v0

    .line 601
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v10    # "jumpOut":Z
    .local v5, "c":Landroid/database/Cursor;
    .local v14, "totalcount":I
    .local v17, "jumpOut":Z
    :goto_0
    const/4 v13, 0x1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v7, v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 602
    if-eqz v5, :cond_2

    .line 603
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    const/4 v5, 0x0

    goto :goto_1

    .line 638
    :catchall_0
    move-exception v0

    move-object v10, v5

    move v2, v14

    move-object v5, v15

    goto/16 :goto_9

    .line 636
    :catch_0
    move-exception v0

    move-object v10, v5

    move-object v5, v15

    goto/16 :goto_a

    .line 607
    :cond_2
    :goto_1
    :try_start_2
    iget-object v10, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v11, v15

    move-object v12, v0

    move-object v13, v6

    move v2, v14

    move-object v14, v7

    .line 607
    .end local v14    # "totalcount":I
    .local v2, "totalcount":I
    move-object/from16 v19, v5

    move-object v5, v15

    move-object/from16 v15, v16

    .line 607
    .end local v15    # "limitUri":Landroid/net/Uri;
    .local v5, "limitUri":Landroid/net/Uri;
    .local v19, "c":Landroid/database/Cursor;
    move-object/from16 v16, v18

    :try_start_3
    invoke-virtual/range {v10 .. v16}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v10, v0

    .line 609
    .end local v19    # "c":Landroid/database/Cursor;
    .local v10, "c":Landroid/database/Cursor;
    :try_start_4
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v11, 0x9

    if-lt v0, v11, :cond_3

    :try_start_5
    const-string v0, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " limitUri:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "  lastId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "  c:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "  totalcount:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 636
    :catch_1
    move-exception v0

    move v14, v2

    .line 636
    .end local v2    # "totalcount":I
    .restart local v14    # "totalcount":I
    :goto_2
    const/4 v13, 0x1

    goto/16 :goto_a

    .line 610
    .end local v14    # "totalcount":I
    .restart local v2    # "totalcount":I
    :cond_3
    :goto_3
    if-eqz v10, :cond_a

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 611
    goto/16 :goto_6

    .line 613
    :cond_4
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-lt v0, v11, :cond_5

    :try_start_7
    const-string v0, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " c.getCount():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 615
    :cond_5
    move v14, v2

    .line 615
    .end local v2    # "totalcount":I
    .restart local v14    # "totalcount":I
    :goto_4
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 616
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 617
    .local v11, "rowId":J
    const/4 v13, 0x1

    :try_start_9
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "path":Ljava/lang/String;
    const/4 v15, 0x2

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 619
    .local v22, "format":I
    const/4 v15, 0x3

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 620
    .local v23, "lastModified":J
    new-instance v15, Lnubia/media/MediaDbItem;

    move-object/from16 v19, v15

    move-wide/from16 v20, v11

    invoke-direct/range {v19 .. v24}, Lnubia/media/MediaDbItem;-><init>(JIJ)V

    .line 621
    .local v15, "dbRecord":Lnubia/media/MediaDbItem;
    iget-object v0, v1, Landroid/media/MediaScanner;->mDbRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 622
    cmp-long v0, v11, v8

    if-lez v0, :cond_6

    .line 623
    move-wide v8, v11

    .line 626
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 627
    int-to-long v0, v14

    cmp-long v0, v0, p2

    if-lez v0, :cond_7

    .line 628
    const/4 v0, 0x1

    .line 629
    .end local v17    # "jumpOut":Z
    .local v0, "jumpOut":Z
    nop

    .line 632
    move/from16 v17, v0

    goto :goto_5

    .line 631
    .end local v0    # "jumpOut":Z
    .end local v2    # "path":Ljava/lang/String;
    .end local v11    # "rowId":J
    .end local v15    # "dbRecord":Lnubia/media/MediaDbItem;
    .end local v22    # "format":I
    .end local v23    # "lastModified":J
    .restart local v17    # "jumpOut":Z
    :cond_7
    nop

    .line 615
    move-object/from16 v1, p0

    goto :goto_4

    .line 636
    :catch_2
    move-exception v0

    goto/16 :goto_a

    .line 632
    :cond_8
    const/4 v13, 0x1

    :goto_5
    if-eqz v17, :cond_9

    .line 633
    goto :goto_7

    .line 601
    :cond_9
    move-object v15, v5

    move-object v5, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 638
    :catchall_1
    move-exception v0

    move v2, v14

    goto :goto_9

    .line 636
    :catch_3
    move-exception v0

    goto :goto_2

    .line 638
    .end local v14    # "totalcount":I
    .local v2, "totalcount":I
    :cond_a
    :goto_6
    const/4 v13, 0x1

    move v14, v2

    .line 638
    .end local v2    # "totalcount":I
    .restart local v14    # "totalcount":I
    :goto_7
    if-eqz v10, :cond_c

    .line 639
    :goto_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_b

    .line 638
    .end local v14    # "totalcount":I
    .restart local v2    # "totalcount":I
    :catchall_2
    move-exception v0

    goto :goto_9

    .line 636
    :catch_4
    move-exception v0

    const/4 v13, 0x1

    move v14, v2

    goto :goto_a

    .line 638
    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v19    # "c":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    move-object/from16 v10, v19

    goto :goto_9

    .line 636
    :catch_5
    move-exception v0

    const/4 v13, 0x1

    move v14, v2

    move-object/from16 v10, v19

    goto :goto_a

    .line 638
    .end local v2    # "totalcount":I
    .end local v19    # "c":Landroid/database/Cursor;
    .local v5, "c":Landroid/database/Cursor;
    .restart local v14    # "totalcount":I
    .local v15, "limitUri":Landroid/net/Uri;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v5

    move v2, v14

    move-object v5, v15

    move-object/from16 v10, v19

    .line 638
    .end local v14    # "totalcount":I
    .end local v15    # "limitUri":Landroid/net/Uri;
    .restart local v2    # "totalcount":I
    .local v5, "limitUri":Landroid/net/Uri;
    .restart local v19    # "c":Landroid/database/Cursor;
    goto :goto_9

    .line 636
    .end local v2    # "totalcount":I
    .end local v19    # "c":Landroid/database/Cursor;
    .local v5, "c":Landroid/database/Cursor;
    .restart local v14    # "totalcount":I
    .restart local v15    # "limitUri":Landroid/net/Uri;
    :catch_6
    move-exception v0

    move-object/from16 v19, v5

    move v2, v14

    move-object v5, v15

    move-object/from16 v10, v19

    .line 636
    .end local v14    # "totalcount":I
    .end local v15    # "limitUri":Landroid/net/Uri;
    .restart local v2    # "totalcount":I
    .local v5, "limitUri":Landroid/net/Uri;
    .restart local v19    # "c":Landroid/database/Cursor;
    goto :goto_a

    .line 638
    .end local v2    # "totalcount":I
    .end local v19    # "c":Landroid/database/Cursor;
    .local v5, "c":Landroid/database/Cursor;
    .restart local v14    # "totalcount":I
    .restart local v15    # "limitUri":Landroid/net/Uri;
    :catchall_5
    move-exception v0

    move-object v10, v5

    move v2, v14

    move-object v5, v15

    .line 638
    .end local v14    # "totalcount":I
    .end local v15    # "limitUri":Landroid/net/Uri;
    .restart local v2    # "totalcount":I
    .local v5, "limitUri":Landroid/net/Uri;
    .restart local v10    # "c":Landroid/database/Cursor;
    :goto_9
    if-eqz v10, :cond_b

    .line 639
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    .line 636
    .end local v2    # "totalcount":I
    .end local v10    # "c":Landroid/database/Cursor;
    .local v5, "c":Landroid/database/Cursor;
    .restart local v14    # "totalcount":I
    .restart local v15    # "limitUri":Landroid/net/Uri;
    :catch_7
    move-exception v0

    move-object v10, v5

    move v2, v14

    move-object v5, v15

    .line 638
    .end local v15    # "limitUri":Landroid/net/Uri;
    .local v5, "limitUri":Landroid/net/Uri;
    .restart local v10    # "c":Landroid/database/Cursor;
    :goto_a
    if-eqz v10, :cond_c

    goto :goto_8

    .line 642
    :cond_c
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    .line 643
    .local v0, "diff":J
    sget v2, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v2, v13, :cond_d

    const-string v2, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preload db records done. count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "  cost time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_d
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;)I
    .locals 14
    .param p1, "directories"    # [Ljava/lang/String;

    .line 1736
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1737
    .local v1, "start":J
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1741
    .local v5, "prescan":J
    iput v0, p0, Landroid/media/MediaScanner;->mFoundInHashmapCnt:I

    .line 1742
    iput v0, p0, Landroid/media/MediaScanner;->mNotFoundInHashmapCnt:I

    .line 1746
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mScanStopImmediately:Z

    .line 1751
    new-instance v7, Landroid/media/MediaInserter;

    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/16 v9, 0x1f4

    invoke-direct {v7, v8, v9}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;I)V

    iput-object v7, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1754
    move v7, v0

    .line 1754
    .local v7, "i":I
    :goto_0
    array-length v8, p1

    if-ge v7, v8, :cond_1

    .line 1755
    aget-object v8, p1, v7

    iget-object v9, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {p0, v8, v9}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1757
    iget-boolean v8, p0, Landroid/media/MediaScanner;->mScanStopImmediately:Z

    if-eqz v8, :cond_0

    .line 1758
    sget v8, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v8, v3, :cond_1

    const-string v3, "MediaScanner"

    const-string/jumbo v8, "stop scan immediately!"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1754
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1766
    .end local v7    # "i":I
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 1767
    iput-object v4, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1771
    .local v7, "scan":J
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1774
    .local v9, "end":J
    sget v3, Landroid/media/MediaScanner;->sLogLevel:I

    const/4 v11, 0x2

    if-lt v3, v11, :cond_2

    .line 1776
    const-string v3, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found in hashmap count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Landroid/media/MediaScanner;->mFoundInHashmapCnt:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "   query db:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Landroid/media/MediaScanner;->mNotFoundInHashmapCnt:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const-string v3, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " prescan time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v5, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-string v3, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    scan time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v7, v5

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const-string v3, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "postscan time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v9, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const-string v3, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   total time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v9, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner;->mDbRecords:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_3

    .line 1786
    iget-object v3, p0, Landroid/media/MediaScanner;->mDbRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1787
    iput-object v4, p0, Landroid/media/MediaScanner;->mDbRecords:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    .end local v1    # "start":J
    .end local v5    # "prescan":J
    .end local v7    # "scan":J
    .end local v9    # "end":J
    goto :goto_2

    .line 1800
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1797
    :catch_0
    move-exception v1

    .line 1798
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in MediaScanner.scan()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1798
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 1794
    :catch_1
    move-exception v1

    .line 1796
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const-string v2, "MediaScanner"

    const-string v3, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1796
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_2

    .line 1791
    :catch_2
    move-exception v1

    .line 1793
    .local v1, "e":Landroid/database/SQLException;
    const-string v2, "MediaScanner"

    const-string v3, "SQLException in MediaScanner.scan()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1800
    .end local v1    # "e":Landroid/database/SQLException;
    :cond_3
    :goto_2
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1801
    nop

    .line 1803
    iget-boolean v1, p0, Landroid/media/MediaScanner;->mScanStopImmediately:Z

    if-eqz v1, :cond_4

    .line 1804
    const/4 v0, 0x3

    return v0

    .line 1806
    :cond_4
    return v0

    .line 1800
    :goto_3
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v0
.end method

.method public scanMtpFile(Ljava/lang/String;II)V
    .locals 24
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "objectHandle"    # I
    .param p3, "format"    # I

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    .line 2012
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v14

    .line 2013
    .local v14, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    const/4 v15, 0x0

    if-nez v14, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    iget v0, v14, Landroid/media/MediaFile$MediaFileType;->fileType:I

    :goto_0
    move v12, v0

    .line 2014
    .local v12, "fileType":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 2015
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v9, v2, v4

    .line 2017
    .local v9, "lastModifiedSeconds":J
    invoke-static {v12}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {v12}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2018
    invoke-static {v12}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v12}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2019
    invoke-static {v12}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2022
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v3, v0

    .line 2023
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "_size"

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2024
    const-string v0, "date_modified"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2026
    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v15

    .line 2027
    .local v0, "whereArgs":[Ljava/lang/String;
    iget-object v2, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v4, v1, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_id=?"

    invoke-virtual {v2, v4, v3, v5, v0}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    .end local v0    # "whereArgs":[Ljava/lang/String;
    goto :goto_1

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaScanner"

    const-string v4, "RemoteException in scanMtpFile"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2032
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 2035
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    move/from16 v7, p2

    iput v7, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2036
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 2038
    .local v16, "fileList":Landroid/database/Cursor;
    :try_start_1
    invoke-static {v12}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v3, :cond_3

    .line 2040
    :try_start_2
    invoke-direct {v1, v0, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 2042
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v0

    .line 2043
    .local v0, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v0, :cond_2

    .line 2044
    iget-object v2, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v19, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v23}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2046
    .end local v16    # "fileList":Landroid/database/Cursor;
    .local v2, "fileList":Landroid/database/Cursor;
    :try_start_3
    invoke-direct {v1, v0, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2048
    .end local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v16, v2

    goto :goto_2

    .line 2059
    :catchall_0
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move/from16 v20, v12

    goto/16 :goto_a

    .line 2056
    :catch_1
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move/from16 v20, v12

    goto/16 :goto_8

    .line 2048
    .end local v2    # "fileList":Landroid/database/Cursor;
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :cond_2
    :goto_2
    nop

    .line 2059
    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move/from16 v20, v12

    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileType":I
    .end local v16    # "fileList":Landroid/database/Cursor;
    .local v0, "fileList":Landroid/database/Cursor;
    .local v17, "lastModifiedSeconds":J
    .local v19, "file":Ljava/io/File;
    .local v20, "fileType":I
    :goto_3
    move-object/from16 v0, v16

    goto :goto_7

    .end local v0    # "fileList":Landroid/database/Cursor;
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "fileType":I
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileType":I
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move/from16 v20, v12

    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileType":I
    .end local v16    # "fileList":Landroid/database/Cursor;
    .restart local v2    # "fileList":Landroid/database/Cursor;
    .restart local v17    # "lastModifiedSeconds":J
    .restart local v19    # "file":Ljava/io/File;
    .restart local v20    # "fileType":I
    :goto_4
    move-object/from16 v2, v16

    goto/16 :goto_a

    .line 2056
    .end local v2    # "fileList":Landroid/database/Cursor;
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "fileType":I
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileType":I
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move/from16 v20, v12

    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileType":I
    .end local v16    # "fileList":Landroid/database/Cursor;
    .restart local v2    # "fileList":Landroid/database/Cursor;
    .restart local v17    # "lastModifiedSeconds":J
    .restart local v19    # "file":Ljava/io/File;
    .restart local v20    # "fileType":I
    :goto_5
    move-object/from16 v2, v16

    goto/16 :goto_8

    .line 2050
    .end local v2    # "fileList":Landroid/database/Cursor;
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "fileType":I
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileType":I
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-direct {v1, v13, v15}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 2053
    iget-object v0, v1, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    iget-object v4, v14, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    const/16 v3, 0x3001

    move/from16 v8, p3

    if-ne v8, v3, :cond_4

    move/from16 v19, v2

    goto :goto_6

    :cond_4
    move/from16 v19, v15

    :goto_6
    const/16 v20, 0x1

    .line 2054
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v21
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v22, 0x0

    .line 2053
    move-object v2, v0

    move-object v3, v13

    move-wide v5, v9

    move-wide/from16 v7, v17

    move-wide/from16 v17, v9

    move/from16 v9, v19

    .end local v9    # "lastModifiedSeconds":J
    .restart local v17    # "lastModifiedSeconds":J
    move/from16 v10, v20

    move-object/from16 v19, v11

    move/from16 v11, v21

    .end local v11    # "file":Ljava/io/File;
    .restart local v19    # "file":Ljava/io/File;
    move/from16 v20, v12

    move-object/from16 v12, v22

    .end local v12    # "fileType":I
    .restart local v20    # "fileType":I
    :try_start_5
    invoke-virtual/range {v2 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZLandroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 2059
    .end local v16    # "fileList":Landroid/database/Cursor;
    .restart local v0    # "fileList":Landroid/database/Cursor;
    :goto_7
    iput v15, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2060
    if-eqz v0, :cond_5

    .line 2061
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2063
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 2064
    goto :goto_9

    .line 2059
    .end local v0    # "fileList":Landroid/database/Cursor;
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 2056
    :catch_3
    move-exception v0

    goto :goto_5

    .line 2059
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "fileType":I
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileType":I
    :catchall_3
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v2, v16

    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileType":I
    .restart local v17    # "lastModifiedSeconds":J
    .restart local v19    # "file":Ljava/io/File;
    .restart local v20    # "fileType":I
    goto :goto_a

    .line 2056
    .end local v17    # "lastModifiedSeconds":J
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "fileType":I
    .restart local v9    # "lastModifiedSeconds":J
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileType":I
    :catch_4
    move-exception v0

    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v2, v16

    .line 2057
    .end local v9    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileType":I
    .end local v16    # "fileList":Landroid/database/Cursor;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "fileList":Landroid/database/Cursor;
    .restart local v17    # "lastModifiedSeconds":J
    .restart local v19    # "file":Ljava/io/File;
    .restart local v20    # "fileType":I
    :goto_8
    :try_start_6
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2059
    .end local v0    # "e":Landroid/os/RemoteException;
    iput v15, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2060
    if-eqz v2, :cond_6

    .line 2061
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2063
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 2064
    nop

    .line 2065
    move-object v0, v2

    .end local v2    # "fileList":Landroid/database/Cursor;
    .local v0, "fileList":Landroid/database/Cursor;
    :goto_9
    return-void

    .line 2059
    .end local v0    # "fileList":Landroid/database/Cursor;
    .restart local v2    # "fileList":Landroid/database/Cursor;
    :catchall_4
    move-exception v0

    :goto_a
    iput v15, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2060
    if-eqz v2, :cond_7

    .line 2061
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2063
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v0
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 1813
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 17
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "alwaysScan"    # Z

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    .line 1819
    const/4 v0, 0x1

    const/4 v14, 0x0

    :try_start_0
    invoke-direct {v1, v13, v0}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1820
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    :try_start_1
    const-string v0, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scanSingleFile path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mimeType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v15, p2

    :try_start_2
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " alwaysScan:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1838
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1834
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1838
    :catchall_1
    move-exception v0

    move-object/from16 v15, p2

    :goto_0
    move/from16 v12, p3

    goto/16 :goto_5

    .line 1834
    :catch_1
    move-exception v0

    move-object/from16 v15, p2

    :goto_1
    move/from16 v12, p3

    goto :goto_4

    .line 1822
    :cond_0
    move-object/from16 v15, p2

    move/from16 v12, p3

    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 1829
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v5, v2, v4

    .line 1832
    .local v5, "lastModifiedSeconds":J
    iget-object v2, v1, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v9, 0x0

    .line 1833
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v11

    const/16 v16, 0x0

    .line 1832
    move-object v3, v13

    move-object v4, v15

    move v10, v12

    move-object/from16 v12, v16

    invoke-virtual/range {v2 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZLandroid/media/MediaScanner$MyMediaScannerClient$AllowScanParam;)Landroid/net/Uri;

    move-result-object v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1838
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1832
    return-object v2

    .line 1824
    .end local v5    # "lastModifiedSeconds":J
    :cond_2
    :goto_3
    :try_start_4
    sget v3, Landroid/media/MediaScanner;->sLogLevel:I

    if-lt v3, v2, :cond_3

    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scanSingleFile path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  file not exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1825
    :cond_3
    nop

    .line 1838
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1825
    return-object v14

    .line 1834
    .end local v0    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    goto :goto_4

    .line 1838
    :catchall_2
    move-exception v0

    move-object/from16 v15, p2

    goto :goto_5

    .line 1834
    :catch_3
    move-exception v0

    move-object/from16 v15, p2

    .line 1835
    .local v0, "e":Landroid/os/RemoteException;
    :goto_4
    :try_start_5
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1836
    nop

    .line 1838
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1836
    return-object v14

    .line 1838
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v0

    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v0
.end method

.method public setMonitorEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 557
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mMonitorEnable:Z

    .line 558
    return-void
.end method

.method public setMonitorHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 551
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->setMonitorHandler(Landroid/os/Handler;)V

    .line 554
    :cond_0
    return-void
.end method

.method public stopScanImmediately()V
    .locals 3

    .line 565
    sget v0, Landroid/media/MediaScanner;->sLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "MediaScanner"

    const-string/jumbo v2, "stop scan immediately....."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mScanStopImmediately:Z

    .line 567
    return-void
.end method
