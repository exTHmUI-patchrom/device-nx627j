.class final Landroid/app/usage/CacheQuotaService$ServiceHandler;
.super Landroid/os/Handler;
.source "CacheQuotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_SEND_LIST:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/app/usage/CacheQuotaService;


# direct methods
.method public constructor <init>(Landroid/app/usage/CacheQuotaService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 89
    iput-object p1, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    .line 90
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 91
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    .line 96
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 108
    const-string v1, "CacheQuotaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 100
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/RemoteCallback;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    iget-object v2, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/app/usage/CacheQuotaService;->onComputeCacheQuotaHints(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, "processed":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v3, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "requests"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/os/RemoteCallback;

    .line 105
    .local v4, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 106
    nop

    .line 110
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/RemoteCallback;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    .end local v2    # "processed":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "callback":Landroid/os/RemoteCallback;
    :goto_0
    return-void
.end method
