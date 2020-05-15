.class Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;
.super Lnubia/os/edge/IEdgePointerEventListener$Stub;
.source "EdgeTouchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/edge/EdgeTouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IEdgePointerEventListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/os/edge/EdgeTouchManager;


# direct methods
.method private constructor <init>(Lnubia/os/edge/EdgeTouchManager;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;->this$0:Lnubia/os/edge/EdgeTouchManager;

    invoke-direct {p0}, Lnubia/os/edge/IEdgePointerEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/os/edge/EdgeTouchManager;Lnubia/os/edge/EdgeTouchManager$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/os/edge/EdgeTouchManager;
    .param p2, "x1"    # Lnubia/os/edge/EdgeTouchManager$1;

    .line 251
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchManager;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 255
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchManager$IEdgePointerEventListenerWrapper;->this$0:Lnubia/os/edge/EdgeTouchManager;

    invoke-static {v0, p1}, Lnubia/os/edge/EdgeTouchManager;->access$200(Lnubia/os/edge/EdgeTouchManager;Landroid/view/MotionEvent;)V

    .line 256
    return-void
.end method
