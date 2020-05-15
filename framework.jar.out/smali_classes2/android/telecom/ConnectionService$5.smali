.class Landroid/telecom/ConnectionService$5;
.super Lcom/android/internal/telecom/RemoteServiceCallback$Stub;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService;->onAdapterAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;

    .line 1931
    iput-object p1, p0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 4

    .line 1952
    iget-object v0, p0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/telecom/ConnectionService$5$2;

    const-string/jumbo v2, "oAA.qRCS.oE"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/telecom/ConnectionService$5$2;-><init>(Landroid/telecom/ConnectionService$5;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1957
    invoke-virtual {v1}, Landroid/telecom/ConnectionService$5$2;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1952
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1958
    return-void
.end method

.method public onResult(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1936
    .local p1, "componentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/telecom/ConnectionService$5$1;

    const-string/jumbo v3, "oAA.qRCS.oR"

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/telecom/ConnectionService$5$1;-><init>(Landroid/telecom/ConnectionService$5;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 1947
    invoke-virtual {v7}, Landroid/telecom/ConnectionService$5$1;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    .line 1936
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1948
    return-void
.end method
