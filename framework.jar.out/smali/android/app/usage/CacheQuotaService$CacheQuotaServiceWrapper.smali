.class final Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;
.super Landroid/app/usage/ICacheQuotaService$Stub;
.source "CacheQuotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheQuotaServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/usage/CacheQuotaService;


# direct methods
.method private constructor <init>(Landroid/app/usage/CacheQuotaService;)V
    .locals 0

    .line 75
    iput-object p1, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    invoke-direct {p0}, Landroid/app/usage/ICacheQuotaService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/usage/CacheQuotaService;Landroid/app/usage/CacheQuotaService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/usage/CacheQuotaService;
    .param p2, "x1"    # Landroid/app/usage/CacheQuotaService$1;

    .line 75
    invoke-direct {p0, p1}, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;-><init>(Landroid/app/usage/CacheQuotaService;)V

    return-void
.end method


# virtual methods
.method public computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    nop

    .line 80
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 81
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/RemoteCallback;Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;>;"
    iget-object v1, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    invoke-static {v1}, Landroid/app/usage/CacheQuotaService;->access$100(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 82
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    invoke-static {v2}, Landroid/app/usage/CacheQuotaService;->access$100(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    return-void
.end method
