.class final Landroid/app/InstantAppResolverService$ServiceHandler;
.super Landroid/os/Handler;
.source "InstantAppResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/InstantAppResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_GET_INSTANT_APP_INTENT_FILTER:I = 0x2

.field public static final MSG_GET_INSTANT_APP_RESOLVE_INFO:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/app/InstantAppResolverService;


# direct methods
.method public constructor <init>(Landroid/app/InstantAppResolverService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 214
    iput-object p1, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    .line 215
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 216
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    .line 222
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 240
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    .line 241
    .local v2, "callback":Landroid/os/IRemoteCallback;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [I

    .line 242
    .local v3, "digestPrefix":[I
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 243
    .local v4, "token":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    .line 244
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/InstantAppResolverService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] Phase2 request; prefix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v6, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    new-instance v7, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v2}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;-><init>(ILandroid/os/IRemoteCallback;)V

    invoke-virtual {v6, v5, v3, v4, v7}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 250
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callback":Landroid/os/IRemoteCallback;
    .end local v3    # "digestPrefix":[I
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 225
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    .line 226
    .restart local v2    # "callback":Landroid/os/IRemoteCallback;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [I

    .line 227
    .restart local v3    # "digestPrefix":[I
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 228
    .restart local v4    # "token":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    .line 229
    .restart local v5    # "intent":Landroid/content/Intent;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 230
    .local v6, "sequence":I
    invoke-static {}, Landroid/app/InstantAppResolverService;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 231
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] Phase1 request; prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 231
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    iget-object v7, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    new-instance v8, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    invoke-direct {v8, v6, v2}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;-><init>(ILandroid/os/IRemoteCallback;)V

    invoke-virtual {v7, v5, v3, v4, v8}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo(Landroid/content/Intent;[ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 236
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callback":Landroid/os/IRemoteCallback;
    .end local v3    # "digestPrefix":[I
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "sequence":I
    nop

    .line 256
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
