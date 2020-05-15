.class public final synthetic Landroid/media/-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/media/MediaPlayer2Impl;

.field private final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaPlayer2Impl;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0;->f$0:Landroid/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0;->f$0:Landroid/media/MediaPlayer2Impl;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0;->f$1:Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer2Impl;->lambda$prepareDrm$0(Landroid/media/MediaPlayer2Impl;Landroid/util/Pair;)V

    return-void
.end method
