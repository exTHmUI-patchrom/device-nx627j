.class Landroid/app/InstantAppResolverService$1;
.super Landroid/app/IInstantAppResolver$Stub;
.source "InstantAppResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/InstantAppResolverService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/InstantAppResolverService;


# direct methods
.method constructor <init>(Landroid/app/InstantAppResolverService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/InstantAppResolverService;

    .line 156
    iput-object p1, p0, Landroid/app/InstantAppResolverService$1;->this$0:Landroid/app/InstantAppResolverService;

    invoke-direct {p0}, Landroid/app/IInstantAppResolver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstantAppIntentFilterList(Landroid/content/Intent;[ILjava/lang/String;Landroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "digestPrefix"    # [I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/IRemoteCallback;

    .line 175
    invoke-static {}, Landroid/app/InstantAppResolverService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Phase2 called; posting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 179
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 180
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 181
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 182
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Landroid/app/InstantAppResolverService$1;->this$0:Landroid/app/InstantAppResolverService;

    iget-object v1, v1, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method

.method public getInstantAppResolveInfoList(Landroid/content/Intent;[ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    .locals 4
    .param p1, "sanitizedIntent"    # Landroid/content/Intent;
    .param p2, "digestPrefix"    # [I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "sequence"    # I
    .param p5, "callback"    # Landroid/os/IRemoteCallback;

    .line 160
    invoke-static {}, Landroid/app/InstantAppResolverService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Phase1 called; posting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 164
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 165
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 166
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 167
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Landroid/app/InstantAppResolverService$1;->this$0:Landroid/app/InstantAppResolverService;

    iget-object v1, v1, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method
