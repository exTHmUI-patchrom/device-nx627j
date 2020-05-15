.class Lcom/android/server/wm/NaviGesStubController$NaviGestureStubListenerImpl;
.super Landroid/view/INaviGestureStubListener$Stub;
.source "NaviGesStubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaviGesStubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NaviGestureStubListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NaviGesStubController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NaviGesStubController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/NaviGesStubController;

    .line 129
    iput-object p1, p0, Lcom/android/server/wm/NaviGesStubController$NaviGestureStubListenerImpl;->this$0:Lcom/android/server/wm/NaviGesStubController;

    invoke-direct {p0}, Landroid/view/INaviGestureStubListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureFinish(Z)V
    .locals 1
    .param p1, "reset"    # Z

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController$NaviGestureStubListenerImpl;->this$0:Lcom/android/server/wm/NaviGesStubController;

    invoke-static {v0, p1}, Lcom/android/server/wm/NaviGesStubController;->access$200(Lcom/android/server/wm/NaviGesStubController;Z)V

    .line 132
    return-void
.end method

.method public onGestureReady()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController$NaviGestureStubListenerImpl;->this$0:Lcom/android/server/wm/NaviGesStubController;

    invoke-static {v0}, Lcom/android/server/wm/NaviGesStubController;->access$300(Lcom/android/server/wm/NaviGesStubController;)V

    .line 136
    return-void
.end method

.method public onGestureStart()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController$NaviGestureStubListenerImpl;->this$0:Lcom/android/server/wm/NaviGesStubController;

    invoke-static {v0}, Lcom/android/server/wm/NaviGesStubController;->access$400(Lcom/android/server/wm/NaviGesStubController;)V

    .line 140
    return-void
.end method

.method public skipAppTransition()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/NaviGesStubController$NaviGestureStubListenerImpl;->this$0:Lcom/android/server/wm/NaviGesStubController;

    invoke-static {v0}, Lcom/android/server/wm/NaviGesStubController;->access$500(Lcom/android/server/wm/NaviGesStubController;)V

    .line 144
    return-void
.end method
