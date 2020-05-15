.class Lcom/android/server/policy/TouchGestureFuncsCtrl$2;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/TouchGestureFuncsCtrl;->enableTouchGesture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/TouchGestureFuncsCtrl;

    .line 157
    iput-object p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$2;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 160
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$2;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-static {v0}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$300(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lnubia/gesture/touch/GestureListener;

    move-result-object v0

    invoke-static {p1, v0}, Lnubia/gesture/touch/GestureManager;->touch(Landroid/view/MotionEvent;Lnubia/gesture/touch/GestureListener;)Z

    .line 161
    return-void
.end method
