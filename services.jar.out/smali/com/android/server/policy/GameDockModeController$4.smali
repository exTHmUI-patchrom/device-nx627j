.class Lcom/android/server/policy/GameDockModeController$4;
.super Ljava/lang/Object;
.source "GameDockModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GameDockModeController;->removeDockView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GameDockModeController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GameDockModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GameDockModeController;

    .line 253
    iput-object p1, p0, Lcom/android/server/policy/GameDockModeController$4;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 256
    const-string v0, "GameDockModeController"

    const-string/jumbo v1, "remove the pop window"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$4;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeController;->access$200(Lcom/android/server/policy/GameDockModeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$4;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeController;->access$400(Lcom/android/server/policy/GameDockModeController;)Lcom/android/server/policy/GameDockModeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$4;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeController;->access$400(Lcom/android/server/policy/GameDockModeController;)Lcom/android/server/policy/GameDockModeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GameDockModeView;->setAlpha(F)V

    .line 260
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$4;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeController;->access$500(Lcom/android/server/policy/GameDockModeController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GameDockModeController$4;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v1}, Lcom/android/server/policy/GameDockModeController;->access$400(Lcom/android/server/policy/GameDockModeController;)Lcom/android/server/policy/GameDockModeView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$4;->this$0:Lcom/android/server/policy/GameDockModeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/GameDockModeController;->access$202(Lcom/android/server/policy/GameDockModeController;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 263
    :catch_1
    move-exception v0

    .line 264
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 267
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    nop

    .line 268
    :goto_1
    return-void
.end method
