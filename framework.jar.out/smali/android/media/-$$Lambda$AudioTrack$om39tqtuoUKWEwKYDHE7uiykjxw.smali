.class public final synthetic Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/media/AudioTrack$StreamEventCallback;

.field private final synthetic f$1:Landroid/media/AudioTrack;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;->f$0:Landroid/media/AudioTrack$StreamEventCallback;

    iput-object p2, p0, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;->f$1:Landroid/media/AudioTrack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;->f$0:Landroid/media/AudioTrack$StreamEventCallback;

    iget-object v1, p0, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;->f$1:Landroid/media/AudioTrack;

    invoke-static {v0, v1}, Landroid/media/AudioTrack;->lambda$postEventFromNative$2(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    return-void
.end method
