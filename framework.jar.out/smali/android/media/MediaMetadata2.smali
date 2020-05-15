.class public final Landroid/media/MediaMetadata2;
.super Ljava/lang/Object;
.source "MediaMetadata2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMetadata2$Builder;,
        Landroid/media/MediaMetadata2$FloatKey;,
        Landroid/media/MediaMetadata2$RatingKey;,
        Landroid/media/MediaMetadata2$BitmapKey;,
        Landroid/media/MediaMetadata2$LongKey;,
        Landroid/media/MediaMetadata2$TextKey;
    }
.end annotation


# static fields
.field public static final BT_FOLDER_TYPE_ALBUMS:J = 0x2L

.field public static final BT_FOLDER_TYPE_ARTISTS:J = 0x3L

.field public static final BT_FOLDER_TYPE_GENRES:J = 0x4L

.field public static final BT_FOLDER_TYPE_MIXED:J = 0x0L

.field public static final BT_FOLDER_TYPE_PLAYLISTS:J = 0x5L

.field public static final BT_FOLDER_TYPE_TITLES:J = 0x1L

.field public static final BT_FOLDER_TYPE_YEARS:J = 0x6L

.field public static final METADATA_KEY_ADVERTISEMENT:Ljava/lang/String; = "android.media.metadata.ADVERTISEMENT"

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final METADATA_KEY_ALBUM_ART_URI:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final METADATA_KEY_ART_URI:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final METADATA_KEY_BT_FOLDER_TYPE:Ljava/lang/String; = "android.media.metadata.BT_FOLDER_TYPE"

.field public static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final METADATA_KEY_DISPLAY_DESCRIPTION:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final METADATA_KEY_DISPLAY_ICON:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final METADATA_KEY_DISPLAY_ICON_URI:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"

.field public static final METADATA_KEY_DISPLAY_SUBTITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final METADATA_KEY_DISPLAY_TITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final METADATA_KEY_DOWNLOAD_STATUS:Ljava/lang/String; = "android.media.metadata.DOWNLOAD_STATUS"

.field public static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final METADATA_KEY_EXTRAS:Ljava/lang/String; = "android.media.metadata.EXTRAS"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final METADATA_KEY_MEDIA_ID:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final METADATA_KEY_MEDIA_URI:Ljava/lang/String; = "android.media.metadata.MEDIA_URI"

.field public static final METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field public static final STATUS_DOWNLOADED:J = 0x2L

.field public static final STATUS_DOWNLOADING:J = 0x1L

.field public static final STATUS_NOT_DOWNLOADED:J


# instance fields
.field private final mProvider:Landroid/media/update/MediaMetadata2Provider;


# direct methods
.method public constructor <init>(Landroid/media/update/MediaMetadata2Provider;)V
    .locals 0
    .param p1, "provider"    # Landroid/media/update/MediaMetadata2Provider;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    .line 523
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/media/MediaMetadata2;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 663
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->fromBundle_MediaMetadata2(Landroid/os/Bundle;)Landroid/media/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaMetadata2Provider;->containsKey_impl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 604
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaMetadata2Provider;->getBitmap_impl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 624
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaMetadata2Provider;->getExtras_impl()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 615
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaMetadata2Provider;->getFloat_impl(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaMetadata2Provider;->getLong_impl(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaMetadata2Provider;->getMediaId_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating(Ljava/lang/String;)Landroid/media/Rating2;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 593
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaMetadata2Provider;->getRating_impl(Ljava/lang/String;)Landroid/media/Rating2;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 568
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaMetadata2Provider;->getString_impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 544
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaMetadata2Provider;->getText_impl(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaMetadata2Provider;->keySet_impl()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 633
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaMetadata2Provider;->size_impl()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 652
    iget-object v0, p0, Landroid/media/MediaMetadata2;->mProvider:Landroid/media/update/MediaMetadata2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaMetadata2Provider;->toBundle_impl()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
