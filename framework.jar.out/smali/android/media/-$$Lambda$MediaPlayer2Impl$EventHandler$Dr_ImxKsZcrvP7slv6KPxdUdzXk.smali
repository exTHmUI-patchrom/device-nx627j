.class public final synthetic Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/media/MediaPlayer2Impl$EventHandler;

.field private final synthetic f$1:Landroid/util/Pair;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;->f$0:Landroid/media/MediaPlayer2Impl$EventHandler;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;->f$1:Landroid/util/Pair;

    iput p3, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;->f$0:Landroid/media/MediaPlayer2Impl$EventHandler;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;->f$1:Landroid/util/Pair;

    iget v2, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaPlayer2Impl$EventHandler;->lambda$handleMessage$3(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;I)V

    return-void
.end method
