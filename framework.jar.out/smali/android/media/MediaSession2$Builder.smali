.class public final Landroid/media/MediaSession2$Builder;
.super Landroid/media/MediaSession2$BuilderBase;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/MediaSession2$BuilderBase<",
        "Landroid/media/MediaSession2;",
        "Landroid/media/MediaSession2$Builder;",
        "Landroid/media/MediaSession2$SessionCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 657
    new-instance v0, Landroid/media/-$$Lambda$MediaSession2$Builder$oNoIFxcC0aQZ6LWPAiWUEmVRf6c;

    invoke-direct {v0, p1}, Landroid/media/-$$Lambda$MediaSession2$Builder$oNoIFxcC0aQZ6LWPAiWUEmVRf6c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/media/MediaSession2$BuilderBase;-><init>(Landroid/media/update/ProviderCreator;)V

    .line 659
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/media/MediaSession2$BuilderBase;)Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Landroid/media/MediaSession2$BuilderBase;

    .line 657
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/media/MediaSession2$Builder;

    invoke-interface {v0, p0, v1}, Landroid/media/update/StaticProvider;->createMediaSession2Builder(Landroid/content/Context;Landroid/media/MediaSession2$Builder;)Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Landroid/media/MediaSession2;
    .locals 1

    .line 694
    invoke-super {p0}, Landroid/media/MediaSession2$BuilderBase;->build()Landroid/media/MediaSession2;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Landroid/media/MediaSession2$Builder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 683
    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setId(Ljava/lang/String;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSession2$Builder;

    return-object v0
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Landroid/media/MediaSession2$Builder;->setId(Ljava/lang/String;)Landroid/media/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlayer(Landroid/media/MediaPlayerBase;)Landroid/media/MediaSession2$Builder;
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayerBase;

    .line 663
    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setPlayer(Landroid/media/MediaPlayerBase;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSession2$Builder;

    return-object v0
.end method

.method public bridge synthetic setPlayer(Landroid/media/MediaPlayerBase;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Landroid/media/MediaSession2$Builder;->setPlayer(Landroid/media/MediaPlayerBase;)Landroid/media/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/MediaSession2$Builder;
    .locals 1
    .param p1, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;

    .line 668
    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSession2$Builder;

    return-object v0
.end method

.method public bridge synthetic setPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Landroid/media/MediaSession2$Builder;->setPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaSession2$Builder;
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 678
    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSession2$Builder;

    return-object v0
.end method

.method public bridge synthetic setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Landroid/media/MediaSession2$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)Landroid/media/MediaSession2$Builder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/MediaSession2$SessionCallback;

    .line 689
    invoke-super {p0, p1, p2}, Landroid/media/MediaSession2$BuilderBase;->setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSession2$Builder;

    return-object v0
.end method

.method public bridge synthetic setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    .line 655
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaSession2$Builder;->setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)Landroid/media/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVolumeProvider(Landroid/media/VolumeProvider2;)Landroid/media/MediaSession2$Builder;
    .locals 1
    .param p1, "volumeProvider"    # Landroid/media/VolumeProvider2;

    .line 673
    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setVolumeProvider(Landroid/media/VolumeProvider2;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSession2$Builder;

    return-object v0
.end method

.method public bridge synthetic setVolumeProvider(Landroid/media/VolumeProvider2;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Landroid/media/MediaSession2$Builder;->setVolumeProvider(Landroid/media/VolumeProvider2;)Landroid/media/MediaSession2$Builder;

    move-result-object p1

    return-object p1
.end method
