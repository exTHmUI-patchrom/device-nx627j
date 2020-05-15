.class Lcom/android/server/policy/GameDockModeView$2;
.super Landroid/content/BroadcastReceiver;
.source "GameDockModeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GameDockModeView;
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

    .line 162
    iput-object p1, p0, Lcom/android/server/policy/GameDockModeView$2;->this$0:Lcom/android/server/policy/GameDockModeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string/jumbo v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 168
    .local v1, "level":I
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, "scale":I
    int-to-float v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 170
    .local v3, "currentPower":I
    iget-object v4, p0, Lcom/android/server/policy/GameDockModeView$2;->this$0:Lcom/android/server/policy/GameDockModeView;

    invoke-static {v4}, Lcom/android/server/policy/GameDockModeView;->access$100(Lcom/android/server/policy/GameDockModeView;)I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 171
    iget-object v4, p0, Lcom/android/server/policy/GameDockModeView$2;->this$0:Lcom/android/server/policy/GameDockModeView;

    invoke-static {v4}, Lcom/android/server/policy/GameDockModeView;->access$200(Lcom/android/server/policy/GameDockModeView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/android/server/policy/GameDockModeView$2;->this$0:Lcom/android/server/policy/GameDockModeView;

    invoke-static {v4}, Lcom/android/server/policy/GameDockModeView;->access$200(Lcom/android/server/policy/GameDockModeView;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5269\u4f59\u7535\u91cf:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/GameDockModeView$2;->this$0:Lcom/android/server/policy/GameDockModeView;

    invoke-static {v4, v3}, Lcom/android/server/policy/GameDockModeView;->access$102(Lcom/android/server/policy/GameDockModeView;I)I

    .line 177
    .end local v1    # "level":I
    .end local v2    # "scale":I
    .end local v3    # "currentPower":I
    :cond_1
    return-void
.end method
