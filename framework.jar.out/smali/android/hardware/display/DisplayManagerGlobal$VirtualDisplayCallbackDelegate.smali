.class final Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualDisplayCallbackDelegate"
.end annotation


# static fields
.field public static final MSG_DISPLAY_PAUSED:I = 0x0

.field public static final MSG_DISPLAY_RESUMED:I = 0x1

.field public static final MSG_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/VirtualDisplay$Callback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 682
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 683
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 684
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 688
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 696
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onStopped()V

    goto :goto_0

    .line 693
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onResumed()V

    .line 694
    goto :goto_0

    .line 690
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onPaused()V

    .line 691
    nop

    .line 699
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
