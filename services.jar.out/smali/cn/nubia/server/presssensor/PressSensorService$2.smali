.class Lcn/nubia/server/presssensor/PressSensorService$2;
.super Lnubia/os/ITaskCallback$Stub;
.source "PressSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressSensorService;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 118
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$2;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Lnubia/os/ITaskCallback$Stub;-><init>()V

    return-void
.end method

.method private actionPerformedInner(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$2;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/presssensor/PressSensorService$2$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/presssensor/PressSensorService$2$1;-><init>(Lcn/nubia/server/presssensor/PressSensorService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method


# virtual methods
.method public actionPerformed(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 120
    sget-boolean v0, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "PressSensorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 127
    return-void

    .line 129
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/server/presssensor/PressSensorService$2;->actionPerformedInner(Ljava/lang/String;)V

    .line 131
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method
