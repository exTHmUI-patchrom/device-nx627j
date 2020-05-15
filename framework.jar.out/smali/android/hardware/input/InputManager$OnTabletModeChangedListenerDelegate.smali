.class final Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
.super Landroid/os/Handler;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnTabletModeChangedListenerDelegate"
.end annotation


# static fields
.field private static final MSG_TABLET_MODE_CHANGED:I


# instance fields
.field public final mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1180
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1181
    iput-object p1, p0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 1182
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1194
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1196
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1197
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 1198
    .local v1, "whenNanos":J
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1199
    .local v3, "inTabletMode":Z
    iget-object v4, p0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    invoke-interface {v4, v1, v2, v3}, Landroid/hardware/input/InputManager$OnTabletModeChangedListener;->onTabletModeChanged(JZ)V

    .line 1202
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "whenNanos":J
    .end local v3    # "inTabletMode":Z
    :goto_0
    return-void
.end method

.method public sendTabletModeChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 1185
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1186
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1187
    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1188
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1189
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1190
    return-void
.end method
