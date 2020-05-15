.class Lcom/android/server/policy/GameDockModeView$1;
.super Ljava/lang/Object;
.source "GameDockModeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GameDockModeView;->showGameDockBg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GameDockModeView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GameDockModeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GameDockModeView;

    .line 75
    iput-object p1, p0, Lcom/android/server/policy/GameDockModeView$1;->this$0:Lcom/android/server/policy/GameDockModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView$1;->this$0:Lcom/android/server/policy/GameDockModeView;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeView;->access$000(Lcom/android/server/policy/GameDockModeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView$1;->this$0:Lcom/android/server/policy/GameDockModeView;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeView;->access$000(Lcom/android/server/policy/GameDockModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView$1;->this$0:Lcom/android/server/policy/GameDockModeView;

    invoke-static {v0}, Lcom/android/server/policy/GameDockModeView;->access$000(Lcom/android/server/policy/GameDockModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/GameDockModeView$1;->this$0:Lcom/android/server/policy/GameDockModeView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GameDockModeView;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 87
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    nop

    .line 88
    :goto_1
    return-void
.end method
