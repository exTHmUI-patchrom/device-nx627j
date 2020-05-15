.class Lcom/android/server/policy/GameDockModeController$2;
.super Ljava/lang/Object;
.source "GameDockModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GameDockModeController;->showDockView()V
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

    .line 205
    iput-object p1, p0, Lcom/android/server/policy/GameDockModeController$2;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$2;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeController;->access$200(Lcom/android/server/policy/GameDockModeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$2;->this$0:Lcom/android/server/policy/GameDockModeController;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeController;->access$300(Lcom/android/server/policy/GameDockModeController;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeController$2;->this$0:Lcom/android/server/policy/GameDockModeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/GameDockModeController;->access$202(Lcom/android/server/policy/GameDockModeController;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 213
    :catch_1
    move-exception v0

    .line 214
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 217
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    nop

    .line 218
    :goto_1
    return-void
.end method
