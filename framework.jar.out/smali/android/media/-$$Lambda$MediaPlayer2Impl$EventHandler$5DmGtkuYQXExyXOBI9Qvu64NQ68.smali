.class public final synthetic Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/media/MediaPlayer2Impl$EventHandler;

.field private final synthetic f$1:Landroid/util/Pair;

.field private final synthetic f$2:Landroid/media/TimedMetaData;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedMetaData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;->f$0:Landroid/media/MediaPlayer2Impl$EventHandler;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;->f$2:Landroid/media/TimedMetaData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;->f$0:Landroid/media/MediaPlayer2Impl$EventHandler;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;->f$2:Landroid/media/TimedMetaData;

    invoke-static {v0, v1, v2}, Landroid/media/MediaPlayer2Impl$EventHandler;->lambda$handleMessage$10(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedMetaData;)V

    return-void
.end method
