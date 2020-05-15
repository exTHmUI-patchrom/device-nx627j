.class public final synthetic Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$m2Wpsf6LxhWt_1tS6tQt3B8QcGo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$m2Wpsf6LxhWt_1tS6tQt3B8QcGo;->f$0:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

    iput p2, p0, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$m2Wpsf6LxhWt_1tS6tQt3B8QcGo;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$m2Wpsf6LxhWt_1tS6tQt3B8QcGo;->f$0:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

    iget v1, p0, Landroid/content/pm/dex/-$$Lambda$ArtManager$SnapshotRuntimeProfileCallbackDelegate$m2Wpsf6LxhWt_1tS6tQt3B8QcGo;->f$1:I

    invoke-static {v0, v1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->lambda$onError$1(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;I)V

    return-void
.end method
