.class Landroid/media/NativeRoutingEventHandlerDelegate;
.super Ljava/lang/Object;
.source "NativeRoutingEventHandlerDelegate.java"


# instance fields
.field private mAudioRouting:Landroid/media/AudioRouting;

.field private mHandler:Landroid/os/Handler;

.field private mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;


# direct methods
.method constructor <init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "audioRouting"    # Landroid/media/AudioRouting;
    .param p2, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mAudioRouting:Landroid/media/AudioRouting;

    .line 35
    iput-object p2, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 36
    iput-object p3, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$000(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting$OnRoutingChangedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 27
    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mOnRoutingChangedListener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting;
    .locals 1
    .param p0, "x0"    # Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 27
    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mAudioRouting:Landroid/media/AudioRouting;

    return-object v0
.end method


# virtual methods
.method notifyClient()V
    .locals 2

    .line 40
    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/NativeRoutingEventHandlerDelegate$1;

    invoke-direct {v1, p0}, Landroid/media/NativeRoutingEventHandlerDelegate$1;-><init>(Landroid/media/NativeRoutingEventHandlerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_0
    return-void
.end method
