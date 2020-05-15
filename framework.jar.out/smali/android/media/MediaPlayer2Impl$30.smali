.class Landroid/media/MediaPlayer2Impl$30;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl;->postEventFromNative(Ljava/lang/Object;JIIILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mp:Landroid/media/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    .line 3146
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$30;->val$mp:Landroid/media/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3150
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$30;->val$mp:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroid/media/MediaPlayer2Impl;->play()V

    .line 3151
    return-void
.end method
