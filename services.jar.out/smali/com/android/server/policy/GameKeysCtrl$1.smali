.class Lcom/android/server/policy/GameKeysCtrl$1;
.super Ljava/lang/Object;
.source "GameKeysCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GameKeysCtrl;->screenTurnedOn()V
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

    .line 101
    iput-object p1, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "rebootKeyStatus":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/GameKeysCtrl;->access$100(Lcom/android/server/policy/GameKeysCtrl;)Lcn/nubia/game/GameKeysHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/game/GameKeysHelper;->readNodeValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/GameKeysCtrl;->access$200(Lcom/android/server/policy/GameKeysCtrl;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GameKeysCtrl"

    const-string/jumbo v2, "screenTurnedOn re-open game keys"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/policy/GameKeysCtrl;->access$302(Lcom/android/server/policy/GameKeysCtrl;Z)Z

    .line 112
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    iget-object v3, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v3}, Lcom/android/server/policy/GameKeysCtrl;->access$300(Lcom/android/server/policy/GameKeysCtrl;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/policy/GameKeysCtrl;->access$400(Lcom/android/server/policy/GameKeysCtrl;Z)V

    .line 113
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/GameKeysCtrl;->access$000(Lcom/android/server/policy/GameKeysCtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "CHANGED_BY_SCREEN_POWER"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 115
    :cond_2
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v1}, Lcom/android/server/policy/GameKeysCtrl;->access$200(Lcom/android/server/policy/GameKeysCtrl;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "GameKeysCtrl"

    const-string/jumbo v2, "screenTurnedOn close game keys"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/policy/GameKeysCtrl;->access$302(Lcom/android/server/policy/GameKeysCtrl;Z)Z

    .line 118
    iget-object v1, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    iget-object v2, p0, Lcom/android/server/policy/GameKeysCtrl$1;->this$0:Lcom/android/server/policy/GameKeysCtrl;

    invoke-static {v2}, Lcom/android/server/policy/GameKeysCtrl;->access$300(Lcom/android/server/policy/GameKeysCtrl;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/policy/GameKeysCtrl;->access$400(Lcom/android/server/policy/GameKeysCtrl;Z)V

    .line 120
    :cond_4
    :goto_0
    return-void
.end method
