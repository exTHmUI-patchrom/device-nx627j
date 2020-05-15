.class Lcom/android/server/media/MediaUpdateService$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaUpdateService;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaUpdateService;

    .line 93
    iput-object p1, p0, Lcom/android/server/media/MediaUpdateService$3;->this$0:Lcom/android/server/media/MediaUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 96
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0xa480416

    if-eq v3, v4, :cond_3

    const v4, 0x1f50b9c2

    if-eq v3, v4, :cond_2

    const v1, 0x5c1076e2

    if-eq v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService$3;->this$0:Lcom/android/server/media/MediaUpdateService;

    invoke-static {v0}, Lcom/android/server/media/MediaUpdateService;->access$200(Lcom/android/server/media/MediaUpdateService;)V

    goto :goto_2

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService$3;->this$0:Lcom/android/server/media/MediaUpdateService;

    invoke-static {v0}, Lcom/android/server/media/MediaUpdateService;->access$200(Lcom/android/server/media/MediaUpdateService;)V

    .line 113
    goto :goto_2

    .line 104
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    return-void

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService$3;->this$0:Lcom/android/server/media/MediaUpdateService;

    invoke-static {v0}, Lcom/android/server/media/MediaUpdateService;->access$200(Lcom/android/server/media/MediaUpdateService;)V

    .line 110
    nop

    .line 118
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
