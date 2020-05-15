.class public final synthetic Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/media/MediaPlayer2Impl$EventHandler;

.field private final synthetic f$1:Landroid/util/Pair;

.field private final synthetic f$2:Landroid/media/TimedText;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;->f$0:Landroid/media/MediaPlayer2Impl$EventHandler;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;->f$2:Landroid/media/TimedText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;->f$0:Landroid/media/MediaPlayer2Impl$EventHandler;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;->f$2:Landroid/media/TimedText;

    invoke-static {v0, v1, v2}, Landroid/media/MediaPlayer2Impl$EventHandler;->lambda$handleMessage$9(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedText;)V

    return-void
.end method
