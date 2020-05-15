.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$args:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$forceWipe:Z

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "x0"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$args:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-object p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 105
    :try_start_0
    invoke-static {}, Lnubia/os/RecoverySystem;->checkCacheFreeSpace()V

    .line 106
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$args:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Factory reset args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$args:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$args:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lnubia/os/RecoverySystem;->rebootDeleteUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-static {v4}, Lcom/android/server/MasterClearReceiver;->access$000(Lcom/android/server/MasterClearReceiver;)Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 113
    :goto_0
    const-string v0, "MasterClear"

    const-string v1, "Still running after master clear?!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_2

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 119
    :goto_2
    return-void
.end method
