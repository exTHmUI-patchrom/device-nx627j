.class Lcom/android/server/DropBoxManagerService$1$1;
.super Landroid/os/Handler;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DropBoxManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService$1;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/DropBoxManagerService$1;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 146
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->access$200(Lcom/android/server/DropBoxManagerService;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->access$300(Lcom/android/server/DropBoxManagerService;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DropBoxManagerService"

    const-string v2, "Can\'t init"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
