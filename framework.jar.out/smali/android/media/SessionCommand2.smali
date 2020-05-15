.class public final Landroid/media/SessionCommand2;
.super Ljava/lang/Object;
.source "SessionCommand2.java"


# static fields
.field public static final COMMAND_CODE_ADJUST_VOLUME:I = 0xb

.field public static final COMMAND_CODE_CUSTOM:I = 0x0

.field public static final COMMAND_CODE_LIBRARY_GET_CHILDREN:I = 0x1d

.field public static final COMMAND_CODE_LIBRARY_GET_ITEM:I = 0x1e

.field public static final COMMAND_CODE_LIBRARY_GET_LIBRARY_ROOT:I = 0x1f

.field public static final COMMAND_CODE_LIBRARY_GET_SEARCH_RESULT:I = 0x20

.field public static final COMMAND_CODE_LIBRARY_SEARCH:I = 0x21

.field public static final COMMAND_CODE_LIBRARY_SUBSCRIBE:I = 0x22

.field public static final COMMAND_CODE_LIBRARY_UNSUBSCRIBE:I = 0x23

.field public static final COMMAND_CODE_PLAYBACK_PAUSE:I = 0x2

.field public static final COMMAND_CODE_PLAYBACK_PLAY:I = 0x1

.field public static final COMMAND_CODE_PLAYBACK_PREPARE:I = 0x6

.field public static final COMMAND_CODE_PLAYBACK_SEEK_TO:I = 0x9

.field public static final COMMAND_CODE_PLAYBACK_STOP:I = 0x3

.field public static final COMMAND_CODE_PLAYLIST_ADD_ITEM:I = 0xf

.field public static final COMMAND_CODE_PLAYLIST_GET_LIST:I = 0x12

.field public static final COMMAND_CODE_PLAYLIST_GET_LIST_METADATA:I = 0x14

.field public static final COMMAND_CODE_PLAYLIST_REMOVE_ITEM:I = 0x10

.field public static final COMMAND_CODE_PLAYLIST_REPLACE_ITEM:I = 0x11

.field public static final COMMAND_CODE_PLAYLIST_SET_LIST:I = 0x13

.field public static final COMMAND_CODE_PLAYLIST_SET_LIST_METADATA:I = 0x15

.field public static final COMMAND_CODE_PLAYLIST_SET_REPEAT_MODE:I = 0xe

.field public static final COMMAND_CODE_PLAYLIST_SET_SHUFFLE_MODE:I = 0xd

.field public static final COMMAND_CODE_PLAYLIST_SKIP_NEXT_ITEM:I = 0x4

.field public static final COMMAND_CODE_PLAYLIST_SKIP_PREV_ITEM:I = 0x5

.field public static final COMMAND_CODE_PLAYLIST_SKIP_TO_PLAYLIST_ITEM:I = 0xc

.field public static final COMMAND_CODE_SESSION_FAST_FORWARD:I = 0x7

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_MEDIA_ID:I = 0x16

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_SEARCH:I = 0x18

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_URI:I = 0x17

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_MEDIA_ID:I = 0x19

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_SEARCH:I = 0x1b

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_URI:I = 0x1a

.field public static final COMMAND_CODE_SESSION_REWIND:I = 0x8

.field public static final COMMAND_CODE_SESSION_SET_RATING:I = 0x1c

.field public static final COMMAND_CODE_SET_VOLUME:I = 0xa


# instance fields
.field private final mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "commandCode"    # I

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, v1}, Landroid/media/update/StaticProvider;->createMediaSession2Command(Landroid/media/SessionCommand2;ILjava/lang/String;Landroid/os/Bundle;)Landroid/media/update/MediaSession2Provider$CommandProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    if-eqz p1, :cond_0

    .line 285
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1, p2}, Landroid/media/update/StaticProvider;->createMediaSession2Command(Landroid/media/SessionCommand2;ILjava/lang/String;Landroid/os/Bundle;)Landroid/media/update/MediaSession2Provider$CommandProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    .line 287
    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/media/SessionCommand2;
    .locals 1
    .param p0, "command"    # Landroid/os/Bundle;

    .line 334
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->fromBundle_MediaSession2Command(Landroid/os/Bundle;)Landroid/media/SessionCommand2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 318
    instance-of v0, p1, Landroid/media/SessionCommand2;

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_0
    iget-object v0, p0, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    move-object v1, p1

    check-cast v1, Landroid/media/SessionCommand2;

    iget-object v1, v1, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    invoke-interface {v0, v1}, Landroid/media/update/MediaSession2Provider$CommandProvider;->equals_impl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCommandCode()I
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$CommandProvider;->getCommandCode_impl()I

    move-result v0

    return v0
.end method

.method public getCustomCommand()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$CommandProvider;->getCustomCommand_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$CommandProvider;->getExtras_impl()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Landroid/media/update/MediaSession2Provider$CommandProvider;
    .locals 1

    .line 293
    iget-object v0, p0, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$CommandProvider;->hashCode_impl()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 313
    iget-object v0, p0, Landroid/media/SessionCommand2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$CommandProvider;->toBundle_impl()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
