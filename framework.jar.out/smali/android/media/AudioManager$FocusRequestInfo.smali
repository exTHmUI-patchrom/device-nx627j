.class Landroid/media/AudioManager$FocusRequestInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusRequestInfo"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mRequest:Landroid/media/AudioFocusRequest;


# direct methods
.method constructor <init>(Landroid/media/AudioFocusRequest;Landroid/os/Handler;)V
    .locals 0
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2236
    iput-object p1, p0, Landroid/media/AudioManager$FocusRequestInfo;->mRequest:Landroid/media/AudioFocusRequest;

    .line 2237
    iput-object p2, p0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    .line 2238
    return-void
.end method
