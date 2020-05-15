.class Lcom/android/server/policy/GameKeysCtrl$4;
.super Ljava/lang/Object;
.source "GameKeysCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GameKeysCtrl;->showPopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GameKeysCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GameKeysCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GameKeysCtrl;

    .line 259
    iput-object p1, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v0}, Lcom/android/server/policy/GameKeysCtrl;->access$800(Lcom/android/server/policy/GameKeysCtrl;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/GameKeysCtrl;->access$000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/GameKeysCtrl;->access$902(Lcom/android/server/policy/GameKeysCtrl;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 264
    iget-object v0, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/GameKeysCtrl;->access$1100(Lcom/android/server/policy/GameKeysCtrl;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/policy/GameKeysCtrl;->access$1002(Lcom/android/server/policy/GameKeysCtrl;Landroid/view/View;)Landroid/view/View;

    .line 265
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 266
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7e4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 267
    const/16 v1, 0x28

    .line 268
    .local v1, "flags":I
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 269
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 270
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 271
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 273
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$900(Lcom/android/server/policy/GameKeysCtrl;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v3}, Lcom/android/server/policy/GameKeysCtrl;->access$1000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/GameKeysCtrl;->access$1202(Lcom/android/server/policy/GameKeysCtrl;Z)Z

    .line 275
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$200(Lcom/android/server/policy/GameKeysCtrl;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GameKeysCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start ani  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v4}, Lcom/android/server/policy/GameKeysCtrl;->access$300(Lcom/android/server/policy/GameKeysCtrl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$300(Lcom/android/server/policy/GameKeysCtrl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$1300(Lcom/android/server/policy/GameKeysCtrl;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$4;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$1400(Lcom/android/server/policy/GameKeysCtrl;)V

    .line 281
    :goto_0
    return-void
.end method
