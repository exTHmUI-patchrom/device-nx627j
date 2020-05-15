.class public interface abstract Landroid/media/update/StaticProvider;
.super Ljava/lang/Object;
.source "StaticProvider.java"


# virtual methods
.method public abstract createMediaBrowser2(Landroid/content/Context;Landroid/media/MediaBrowser2;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaBrowser2$BrowserCallback;)Landroid/media/update/MediaBrowser2Provider;
.end method

.method public abstract createMediaControlView2(Landroid/widget/MediaControlView2;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;Landroid/util/AttributeSet;II)Landroid/media/update/MediaControlView2Provider;
.end method

.method public abstract createMediaController2(Landroid/content/Context;Landroid/media/MediaController2;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaController2Provider;
.end method

.method public abstract createMediaItem2Builder(Landroid/media/MediaItem2$Builder;I)Landroid/media/update/MediaItem2Provider$BuilderProvider;
.end method

.method public abstract createMediaLibraryService2(Landroid/media/MediaLibraryService2;)Landroid/media/update/MediaSessionService2Provider;
.end method

.method public abstract createMediaLibraryService2Builder(Landroid/media/MediaLibraryService2;Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;Ljava/util/concurrent/Executor;Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;)Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaLibraryService2;",
            "Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;",
            ")",
            "Landroid/media/update/MediaSession2Provider$BuilderBaseProvider<",
            "Landroid/media/MediaLibraryService2$MediaLibrarySession;",
            "Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createMediaLibraryService2LibraryRoot(Landroid/media/MediaLibraryService2$LibraryRoot;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/update/MediaLibraryService2Provider$LibraryRootProvider;
.end method

.method public abstract createMediaMetadata2Builder(Landroid/media/MediaMetadata2$Builder;)Landroid/media/update/MediaMetadata2Provider$BuilderProvider;
.end method

.method public abstract createMediaMetadata2Builder(Landroid/media/MediaMetadata2$Builder;Landroid/media/MediaMetadata2;)Landroid/media/update/MediaMetadata2Provider$BuilderProvider;
.end method

.method public abstract createMediaPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/update/MediaPlaylistAgentProvider;
.end method

.method public abstract createMediaSession2Builder(Landroid/content/Context;Landroid/media/MediaSession2$Builder;)Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/media/MediaSession2$Builder;",
            ")",
            "Landroid/media/update/MediaSession2Provider$BuilderBaseProvider<",
            "Landroid/media/MediaSession2;",
            "Landroid/media/MediaSession2$SessionCallback;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createMediaSession2Command(Landroid/media/SessionCommand2;ILjava/lang/String;Landroid/os/Bundle;)Landroid/media/update/MediaSession2Provider$CommandProvider;
.end method

.method public abstract createMediaSession2CommandButtonBuilder(Landroid/media/MediaSession2$CommandButton$Builder;)Landroid/media/update/MediaSession2Provider$CommandButtonProvider$BuilderProvider;
.end method

.method public abstract createMediaSession2CommandGroup(Landroid/media/SessionCommandGroup2;Landroid/media/SessionCommandGroup2;)Landroid/media/update/MediaSession2Provider$CommandGroupProvider;
.end method

.method public abstract createMediaSession2ControllerInfo(Landroid/content/Context;Landroid/media/MediaSession2$ControllerInfo;IILjava/lang/String;Landroid/os/IInterface;)Landroid/media/update/MediaSession2Provider$ControllerInfoProvider;
.end method

.method public abstract createMediaSessionService2(Landroid/media/MediaSessionService2;)Landroid/media/update/MediaSessionService2Provider;
.end method

.method public abstract createMediaSessionService2MediaNotification(Landroid/media/MediaSessionService2$MediaNotification;ILandroid/app/Notification;)Landroid/media/update/MediaSessionService2Provider$MediaNotificationProvider;
.end method

.method public abstract createSessionToken2(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/update/SessionToken2Provider;
.end method

.method public abstract createVideoView2(Landroid/widget/VideoView2;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;Landroid/util/AttributeSet;II)Landroid/media/update/VideoView2Provider;
.end method

.method public abstract createVolumeProvider2(Landroid/media/VolumeProvider2;III)Landroid/media/update/VolumeProvider2Provider;
.end method

.method public abstract fromBundle_MediaItem2(Landroid/os/Bundle;)Landroid/media/MediaItem2;
.end method

.method public abstract fromBundle_MediaMetadata2(Landroid/os/Bundle;)Landroid/media/MediaMetadata2;
.end method

.method public abstract fromBundle_MediaSession2Command(Landroid/os/Bundle;)Landroid/media/SessionCommand2;
.end method

.method public abstract fromBundle_MediaSession2CommandGroup(Landroid/os/Bundle;)Landroid/media/SessionCommandGroup2;
.end method

.method public abstract fromBundle_Rating2(Landroid/os/Bundle;)Landroid/media/Rating2;
.end method

.method public abstract fromBundle_SessionToken2(Landroid/os/Bundle;)Landroid/media/SessionToken2;
.end method

.method public abstract newHeartRating_Rating2(Z)Landroid/media/Rating2;
.end method

.method public abstract newPercentageRating_Rating2(F)Landroid/media/Rating2;
.end method

.method public abstract newStarRating_Rating2(IF)Landroid/media/Rating2;
.end method

.method public abstract newThumbRating_Rating2(Z)Landroid/media/Rating2;
.end method

.method public abstract newUnratedRating_Rating2(I)Landroid/media/Rating2;
.end method
